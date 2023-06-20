module MicrosoftGraph
    module Models
        AuthenticationMethodModes = {
            Password: :Password,
            Voice: :Voice,
            HardwareOath: :HardwareOath,
            SoftwareOath: :SoftwareOath,
            Sms: :Sms,
            Fido2: :Fido2,
            WindowsHelloForBusiness: :WindowsHelloForBusiness,
            MicrosoftAuthenticatorPush: :MicrosoftAuthenticatorPush,
            DeviceBasedPush: :DeviceBasedPush,
            TemporaryAccessPassOneTime: :TemporaryAccessPassOneTime,
            TemporaryAccessPassMultiUse: :TemporaryAccessPassMultiUse,
            Email: :Email,
            X509CertificateSingleFactor: :X509CertificateSingleFactor,
            X509CertificateMultiFactor: :X509CertificateMultiFactor,
            FederatedSingleFactor: :FederatedSingleFactor,
            FederatedMultiFactor: :FederatedMultiFactor,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
