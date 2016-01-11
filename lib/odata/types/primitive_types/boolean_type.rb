module OData
  class BooleanType < PrimitiveType
    def valid_value?(value)
      TrueClass === value || FalseClass === value
    end

    def coerce(value)
      value
    end

    def name
      "Edm.Boolean"
    end
  end
end
