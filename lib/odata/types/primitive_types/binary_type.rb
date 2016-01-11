module OData
  class BinaryType < PrimitiveType
    def valid_value?(value)
      String === value
    end

    def coerce(value)
      raise RuntimeError
    end

    def name
      "Edm.Binary"
    end
  end
end
