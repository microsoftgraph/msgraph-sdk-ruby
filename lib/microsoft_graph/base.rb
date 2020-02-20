class MicrosoftGraph
  class Base
    attr_accessor :dirty, :dirty_properties
    attr_reader :parent_property, :name

    def initialize(options = {})
      @cached_navigation_property_values = {}
      @cached_property_values            = {}
      @parent_property                   = options[:parent_property]
      @name                              = options[:name]

      if options[:attributes]
        initialize_serialized_properties(options[:attributes], options[:persisted])
      end

      @dirty = !options[:persisted]
      @dirty_properties = if @dirty
                            @cached_property_values.keys.inject({}) do |result, key|
                              result[key] = true
                              result
                            end
                          else
                            {}
                          end
    end

    def properties
      {}
    end

    def odata_type
      self.class.const_get("ODATA_TYPE").name
    end

    def as_json(options = {})
      (if options[:only]
         @cached_property_values.select { |key,v| options[:only].include? key }
       elsif options[:except]
         @cached_property_values.reject { |key,v| options[:except].include? key }
       else
         @cached_property_values
       end).inject({}) do |result, (k,v)|
        k = OData.convert_to_camel_case(k) if options[:convert_to_camel_case]
        result[k.to_s] = if MicrosoftGraph::Base === v
                           new_options = options.clone
                           new_options[:only] = v.dirty_properties.keys
                           v.as_json(new_options)
                         elsif v.respond_to?(:as_json)
                           v.as_json(options)
                         else
                           v
                         end
        result
      end
    end

    def to_json(options = {})
      as_json(options).to_json
    end

    def dirty?
      @dirty || @cached_property_values.any? { |key, value|
        value.respond_to?(:dirty?) && value.dirty?
      }
    end

    def mark_clean
      @dirty = false
      @dirty_properties = {}
      @cached_property_values.each { |key, value|
        value.respond_to?(:mark_clean) && value.mark_clean
      }
    end

    def set_dirty!(property_name)
      self.dirty = true
      self.dirty_properties[property_name] = true
      if parent_property.present?
        parent_property.set_dirty!(OData.convert_to_snake_case(self.name).to_sym)
      end
    end

    private

    def get(property_name)
      if properties[property_name].collection?
        @cached_property_values[property_name] ||= Collection.new(properties[property_name].type)
      else
        @cached_property_values[property_name]
      end
    end

    def set(property_name, value)
      property = properties[property_name]

      raise NonNullableError unless property.nullable_match?(value)
      if property.collection?
        raise TypeError unless value.all? { |v| property.collection_type_match?(v) }
        @cached_property_values[property_name] = Collection.new(property.type, value)
      else
        raise TypeError unless property.type_match?(value)
        @cached_property_values[property_name] = property.coerce_to_type(value)
      end
      set_dirty!(property_name)
    end

    def initialize_serialized_properties(raw_attributes, from_server = false)
      unless raw_attributes.respond_to? :keys
        raise TypeError.new("Cannot initialize #{self.class} with attributes: #{raw_attributes.inspect}")
      end
      attributes = OData.convert_keys_to_snake_case(raw_attributes)
      properties.each do |property_key, property|
        if attributes.keys.include?(property_key.to_s)
          value = attributes[property_key.to_s]
          @cached_property_values[property_key] =
              if property.collection?
                Collection.new(property.type, value)
              elsif klass = MicrosoftGraph::ClassBuilder.get_namespaced_class(property.type.name)
                klass.new(attributes: value, parent_property: self, name: property_key)
              else
                if from_server && ! property.type_match?(value) && OData::EnumType === property.type
                  value.to_s
                else
                  property.coerce_to_type(value)
                end
              end
        end
      end
    end
  end
end
