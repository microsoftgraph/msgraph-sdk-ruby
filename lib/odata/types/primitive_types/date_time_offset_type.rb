module OData
  class DateTimeOffsetType < PrimitiveType
    def valid_value?(value)
      DateTime === value || Time === value
    end

    def coerce(value)
      DateTime.parse(value)
    end

    def name
      "Edm.DateTimeOffset"
    end
  end
end
