module OData
  class Singleton
    attr_reader :name
    attr_reader :type_name

    def initialize(options = {})
      @name      = options[:name]
      @type_name = options[:type]
      @service   = options[:service]
    end

    def collection?
      false
    end

    def type
      @service.get_type_by_name(type_name)
    end
  end
end
