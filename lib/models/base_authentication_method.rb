module MicrosoftGraph
    module Models
        BaseAuthenticationMethod = {
            Password: :Password,
            Voice: :Voice,
            HardwareOath: :HardwareOath,
            SoftwareOath: :SoftwareOath,
            Sms: :Sms,
            Fido2: :Fido2,
            WindowsHelloForBusiness: :WindowsHelloForBusiness,
            MicrosoftAuthenticator: :MicrosoftAuthenticator,
            TemporaryAccessPass: :TemporaryAccessPass,
            Email: :Email,
            X509Certificate: :X509Certificate,
            Federation: :Federation,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
