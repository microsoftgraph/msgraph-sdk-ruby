module OData
  class BinaryType < PrimitiveType
    def valid_value?(value)
      String === value
    end

    def coerce(value)
      value
    end

    def name
      "Edm.Binary"
    end
  end
end
