module MicrosoftGraph
    module Models
        AppCredentialRestrictionType = {
            PasswordAddition: :PasswordAddition,
            PasswordLifetime: :PasswordLifetime,
            SymmetricKeyAddition: :SymmetricKeyAddition,
            SymmetricKeyLifetime: :SymmetricKeyLifetime,
            CustomPasswordAddition: :CustomPasswordAddition,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
