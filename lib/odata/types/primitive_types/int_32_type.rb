module OData
  class Int32Type < PrimitiveType
    def valid_value?(value)
      Integer === value
    end

    def coerce(value)
      value.to_i
    end

    def name
      "Edm.Int32"
    end
  end
end
