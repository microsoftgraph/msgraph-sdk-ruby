module MicrosoftGraph
    module Models
        ## 
        # Android required password type.
        AndroidRequiredPasswordType = {
            DeviceDefault: :DeviceDefault,
            Alphabetic: :Alphabetic,
            Alphanumeric: :Alphanumeric,
            AlphanumericWithSymbols: :AlphanumericWithSymbols,
            LowSecurityBiometric: :LowSecurityBiometric,
            Numeric: :Numeric,
            NumericComplex: :NumericComplex,
            Any: :Any,
        }
    end
end
