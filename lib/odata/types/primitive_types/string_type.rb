module OData
  class StringType < PrimitiveType
    def valid_value?(value)
      String === value
    end

    def coerce(value)
      value.to_s
    end

    def name
      "Edm.String"
    end
  end
end
