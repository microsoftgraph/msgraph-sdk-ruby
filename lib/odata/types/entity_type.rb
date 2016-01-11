module OData
  class EntityType < Type
    attr_reader :base_type
    attr_reader :abstract

    def initialize(options = {})
      super
      @abstract   = options[:abstract]
      @base_type  = options[:base_type]
      @open_type  = options[:open_type]
      @has_stream = options[:has_stream]
      @service    = options[:service]
    end

    def properties
      @properties ||= @service.properties_for_type(name)
    end

    def navigation_properties
      @navigation_properties ||= @service.navigation_properties_for_type(name)
    end

    def navigation_property_by_name(name)
      navigation_properties.find do |navigation_property|
        navigation_property.name == name
      end
    end

    def valid_value?(value)
      value.respond_to?(:odata_type) && (name == value.odata_type || name == value.class.superclass.odata_type.name)
    end
  end
end
