module MicrosoftGraph
    module Models
        ## 
        # Branding Options for the Message Template. Branding is defined in the Intune Admin Console.
        NotificationTemplateBrandingOptions = {
            None: :None,
            IncludeCompanyLogo: :IncludeCompanyLogo,
            IncludeCompanyName: :IncludeCompanyName,
            IncludeContactInformation: :IncludeContactInformation,
            IncludeCompanyPortalLink: :IncludeCompanyPortalLink,
            IncludeDeviceDetails: :IncludeDeviceDetails,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
