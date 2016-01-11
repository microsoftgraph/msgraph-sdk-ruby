module OData
  class ComplexType < Type
    attr_reader :base_type

    def initialize(options = {})
      super
      @base_type = options[:base_type]
      @service   = options[:service]
    end

    def properties
      @properties ||= @service.properties_for_type(name)
    end

    def valid_value?(value)
      value.respond_to?(:odata_type) && self.name == value.odata_type
    end
  end
end
