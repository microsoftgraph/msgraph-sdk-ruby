module OData
  class Type
    attr_reader :name

    def initialize(options = {})
      @name = options[:name]
    end

    def coerce(value)
      value
    end

    def collection?
      false
    end
  end
end

Dir[
  File.join(
    File.dirname(__FILE__),
    'types',
    '*.rb'
  )
].each { |f| require f }
