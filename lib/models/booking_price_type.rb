module MicrosoftGraph
    module Models
        ## 
        # Represents the type of pricing of a booking service.
        BookingPriceType = {
            Undefined: :Undefined,
            FixedPrice: :FixedPrice,
            StartingAt: :StartingAt,
            Hourly: :Hourly,
            Free: :Free,
            PriceVaries: :PriceVaries,
            CallUs: :CallUs,
            NotSet: :NotSet,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
