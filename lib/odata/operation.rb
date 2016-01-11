module OData
  class Operation
    attr_reader :name
    attr_reader :binding_type
    attr_reader :entity_set_type
    attr_reader :parameters
    attr_reader :return_type

    def initialize(options = {})
      @name            = options[:name]
      @entity_set_type = options[:entity_set_type]
      @binding_type    = options[:binding_type]
      @parameters      = options[:parameters]
      @return_type     = options[:return_type]
    end
  end
end
