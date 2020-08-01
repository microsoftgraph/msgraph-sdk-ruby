class MicrosoftGraph
  class CollectionAssociation < Collection
    attr_reader :type
    attr_reader :parent

    def initialize(options = {})
      @type            = options[:type]
      @graph           = options[:graph]
      @resource_name   = options[:resource_name]
      @parent          = options[:parent]
      @order_by        = options[:order_by]
      @filter          = options[:filter]
      @dirty           = false
      @loaded          = false
      @internal_values = []

      raise MicrosoftGraph::TypeError.new("A collection cannot be both ordered and filtered.") if @order_by && @filter
      @order_by && @order_by.each do |field|
        field_name, direction = field.to_s.split(' ')
        field_names = field_name.split("/")
        unless valid_nested_property(field_names, @type)
          raise MicrosoftGraph::TypeError.new("Tried to order by invalid field: #{field_name}")
        end
        if direction && ! %w(asc desc).include?(direction)
          raise MicrosoftGraph::TypeError.new("Tried to order field #{field_name} by invalid direction: #{direction}")
        end
      end
      @filter && @filter.respond_to?(:keys) && @filter.keys.each do |field_name|
        unless @type.properties.map(&:name).include? OData.convert_to_camel_case(field_name)
          raise MicrosoftGraph::TypeError.new("Tried to filter by invalid field: #{field_name}")
        end
      end

    end

    def find(id)
      if response = graph.service.get("#{path}/#{URI.escape(id.to_s)}")
        klass = if member_type = specified_member_type(response)
          ClassBuilder.get_namespaced_class(response)
        else
          default_member_class
        end
        klass.new(
            graph: graph,
            parent: self,
            attributes: response[:attributes],
            persisted: true
          )
      else
        nil
      end
    end

    def path
      if parent && parent.path
        "#{parent.path}/#{@resource_name}"
      else
        @resource_name
      end
    end

    def query_path
      if @order_by
        order_by_names = @order_by.map do |field|
          URI.escape OData.convert_to_camel_case(field)
        end
        "#{path}?$orderby=#{order_by_names.join(',')}"
      elsif @filter
        escaped_filters = URI.escape(stringify_filters(@filter))
        "#{path}?$filter=#{escaped_filters}"
      else
        path
      end
    end

    def order_by(*fields)
      self.class.new(
        type: @type,
        graph: @graph,
        resource_name: @resource_name,
        parent: @parent,
        order_by: fields,
        filter: @filter
      )
    end

    def valid_nested_property(field_names, parent_type)
      field_name = field_names.shift
      if field_name
        property = parent_type.properties.find do |prop|
          OData.convert_to_camel_case(prop.name) == OData.convert_to_camel_case(field_name)
        end
        property && valid_nested_property(field_names, property.type)
      else
        true
      end
    end

    def filter(new_filters)
      self.class.new(
        type: @type,
        graph: @graph,
        resource_name: @resource_name,
        parent: @parent,
        order_by: @order_by,
        filter: merge_with_existing_filter(new_filters)
      )
    end

    def merge_with_existing_filter(new_filters)
      existing_filter = @filter || {}
      if new_filters.respond_to?(:keys) && existing_filter.respond_to?(:keys)
        existing_filter.merge(new_filters)
      else
        [stringify_filters(new_filters), stringify_filters(@filter)].compact.join(" and ")
      end
    end

    def stringify_filters(filters)
      if filters.respond_to?(:keys)
        filter_strings = filters.map do |k,v|
          v = v.is_a?(String) ? "'#{v}'" : v
          "#{OData.convert_to_camel_case(k)} eq #{v}"
        end
        filter_strings.sort.join(' and ')
      else
        filters
      end
    end

    def create(attributes = {})
      build(attributes).tap { |n| n.save }
    end

    def create!(attributes = {})
      build(attributes).tap { |n| n.save! }
    end

    def build(attributes = {})
      ClassBuilder
        .get_namespaced_class(type.member_type.name)
        .new(
          graph:         graph,
          resource_name: @resource_name,
          parent:        self,
          attributes:    attributes,
        ).tap { |new_member|
          @internal_values << new_member
        }
    end

    def <<(new_member)
      super
      new_member.graph = graph
      new_member.parent = self
      new_member.save
      self
    end

    def each(start = 0)
      return to_enum(:each, start) unless block_given?
      @next_link ||= query_path
      Array(@internal_values[start..-1]).each do |element|
        yield(element)
      end

      unless last?
        start = [@internal_values.size, start].max

        fetch_next_page

        each(start, &Proc.new)
      end
    end

    def collection?
      true
    end

    def reload!
      @next_link = query_path
      @internal_values = []
      fetch_next_page
    end

    private

    def last?
      @loaded || @internal_values.size >= 1000
    end

    def fetch_next_page
      @next_link ||= query_path

      result =
        begin
          @graph.service.get(@next_link)
        rescue OData::ClientError => e
          if matches = /Unsupported sort property '([^']*)'/.match(e.message)
            raise MicrosoftGraph::TypeError.new("Cannot sort by #{matches[1]}")
          elsif /OrderBy not supported/.match(e.message)
            if @order_by.length == 1
              raise MicrosoftGraph::TypeError.new("Cannot sort by #{@order_by.first}")
            else
              raise MicrosoftGraph::TypeError.new("Cannot sort by at least one field requested")
            end
          else
            raise e
          end
        end

      @next_link = result[:attributes]['@odata.next_link']
      @next_link.sub!(MicrosoftGraph.base_url, "") if @next_link

      result[:attributes]['value'].each do |entity_hash|
        klass =
          if member_type = specified_member_type(entity_hash)
            ClassBuilder.get_namespaced_class(member_type.name)
          else
            default_member_class
          end
        @internal_values.push klass.new(attributes: entity_hash, parent: self, persisted: true)
      end
      @loaded = @next_link.nil?
    end

    def default_member_class
      ClassBuilder.get_namespaced_class(type.member_type.name)
    end

    def specified_member_type(entity_hash)
      @graph.service.get_type_for_odata_response(entity_hash)
    end
  end
end
