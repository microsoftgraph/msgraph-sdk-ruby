module OData
  class Int64Type < PrimitiveType
    def valid_value?(value)
      Integer === value
    end

    def coerce(value)
      value.to_i
    end

    def name
      "Edm.Int64"
    end
  end
end
