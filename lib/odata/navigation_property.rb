module OData
  class NavigationProperty
    attr_reader :name
    attr_reader :type
    attr_reader :nullable
    attr_reader :contain_target
    attr_reader :partner

    def initialize(options = {})
      @name           = options[:name]
      @type           = options[:type]
      @nullable       = options[:nullable].nil? ? true : false
      @contain_target = options[:contain_target] || false
      @partner        = options[:partner]
    end

    def collection?
      OData::CollectionType === type
    end

    def type_match?(value)
      type.valid_value?(value)
    end

    def collection_type_match?(value)
      collection = type
      collection.valid_value?(value)
    end
  end
end
