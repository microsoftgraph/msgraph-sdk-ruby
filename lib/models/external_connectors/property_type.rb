module MicrosoftGraph
    module Models
        module ExternalConnectors
            PropertyType = {
                String: :String,
                Int64: :Int64,
                Double: :Double,
                DateTime: :DateTime,
                Boolean: :Boolean,
                StringCollection: :StringCollection,
                Int64Collection: :Int64Collection,
                DoubleCollection: :DoubleCollection,
                DateTimeCollection: :DateTimeCollection,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
