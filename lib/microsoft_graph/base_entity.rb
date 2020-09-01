class MicrosoftGraph
  class BaseEntity < Base

    attr_accessor :graph
    attr_accessor :parent

    def initialize(options = {})
      @resource_name            = options[:resource_name]
      @parent                   = options[:parent] || options[:graph]
      @graph                    = options[:graph] || parent && parent.graph
      @navigation_property_name = options[:navigation_property_name]
      @persisted                = options[:persisted] || false
      super
    end

    def parental_chain
      if parent && parent.respond_to?(:parental_chain)
        parent.parental_chain.concat([parent])
      else
        [parent]
      end
    end

    def containing_navigation_property(type_name)
      candidate_navigation_properties = navigation_properties.values.select do |navigation_property|
        navigation_property.collection? && navigation_property.type.name == "Collection(#{type_name})"
      end
      candidate_navigation_properties.sort { |a, b|
        a_index = type_name.downcase.index(a.name[0..-2].downcase) || 0
        b_index = type_name.downcase.index(b.name[0..-2].downcase) || 0
        a_index <=> b_index
      }.last
    end

    def path
      containing_navigation_property_name = nil
      owning_ancestor = parental_chain.find do |ancestor|
        unless MicrosoftGraph::CollectionAssociation === ancestor
          containing_navigation_property = ancestor.containing_navigation_property(odata_type)
          containing_navigation_property && containing_navigation_property_name = containing_navigation_property.name
        end
      end

      if owning_ancestor && @cached_property_values[:id]
        [owning_ancestor.path, containing_navigation_property_name, @cached_property_values[:id]].compact.join("/")
      else
        @resource_name
      end
    end

    def fetch
      @persisted = true
      initialize_serialized_properties(graph.service.get(path)[:attributes])
    end

    def persisted?
      @persisted
    end

    def delete!
      if persisted?
        @persisted = false
        graph.service.delete(path)
      end
    end

    def reload!
      @dirty_properties.keys.each do |dirty_property|
        @cached_property_values[dirty_property] = nil
      end
      mark_clean
      fetch if persisted?
    end

    def save!
      raise NoAssociationError unless parent
      raise_no_graph_error! unless graph
      if persisted?
        graph.service.patch(path, to_json(only: @dirty_properties.keys, convert_to_camel_case: true))
      else
        initialize_serialized_properties(
          graph.service.post(parent.path, to_json(convert_to_camel_case: true))
        )
        @persisted = true
      end
      mark_clean
      true
    end

    # update entity by specified hash
    def update_attributes(raw:)
      raise NoAssociationError unless parent
      raise_no_graph_error! unless graph
      if persisted?
        graph.service.patch(path, raw.to_json)
      else
        initialize_serialized_properties(
          graph.service.post(parent.path, to_json(convert_to_camel_case: true))
        )
        @persisted = true
      end
      mark_clean
      true
    end

    def save
      save!
    rescue OData::HTTPError
      false
    end

    private

    def raise_no_graph_error!
      raise NoGraphError.new("#{self.class}#graph must be a MicrosoftGraph instance to make network requests.")
    end

    def get(property_name)
      if uncached_property?(property_name) && graph
        initialize_serialized_properties(graph.service.get(path, property_name.to_s)[:attributes], true)
        super
      else
        super
      end
    end

    def get_navigation_property(navigation_property_name)
      raise_no_graph_error! unless graph
      navigation_property = navigation_properties[navigation_property_name]
      if navigation_property.collection?
        @cached_navigation_property_values[navigation_property_name] ||=
          CollectionAssociation.new(
            graph: graph,
            type: navigation_properties[navigation_property_name].type,
            resource_name: OData.convert_to_camel_case(navigation_property_name.to_s),
            parent: self
          )
      else
        @cached_navigation_property_values[navigation_property_name] ||=
          if response = graph.service.get("#{path}/#{OData.convert_to_camel_case(navigation_property_name.to_s)}")
            type = graph.service.get_type_for_odata_response(response[:attributes]) || navigation_property.type
            klass = ClassBuilder.get_namespaced_class(type.name)
            klass.new(
              graph: graph,
              parent: self,
              attributes: response[:attributes],
              persisted: true,
              navigation_property_name: navigation_property_name.to_s
            )
          else
            nil
          end
      end
    end

    def set_navigation_property(navigation_property_name, value)
      navigation_property = navigation_properties[navigation_property_name]
      raise TypeError unless navigation_property.type_match?(value)
      value.parent = self
      @cached_navigation_property_values[navigation_property_name] = value
    end

    def uncached_property?(property)
      properties.keys.include?(property) && ! @cached_property_values.keys.include?(property)
    end

  end
end
