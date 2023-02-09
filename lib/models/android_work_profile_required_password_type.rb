module MicrosoftGraph
    module Models
        ## 
        # Android Work Profile required password type.
        AndroidWorkProfileRequiredPasswordType = {
            DeviceDefault: :DeviceDefault,
            LowSecurityBiometric: :LowSecurityBiometric,
            Required: :Required,
            AtLeastNumeric: :AtLeastNumeric,
            NumericComplex: :NumericComplex,
            AtLeastAlphabetic: :AtLeastAlphabetic,
            AtLeastAlphanumeric: :AtLeastAlphanumeric,
            AlphanumericWithSymbols: :AlphanumericWithSymbols,
        }
    end
end
