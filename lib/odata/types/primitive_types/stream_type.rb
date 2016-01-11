module OData
  class StreamType < PrimitiveType
    def valid_value?(value)
      true
    end

    def coerce(value)
      raise RuntimeError
    end

    def name
      "Edm.Stream"
    end
  end
end
