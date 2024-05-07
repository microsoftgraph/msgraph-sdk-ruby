module MicrosoftGraph
    module Models
        ## 
        # Partner state of this tenant.
        MobileThreatPartnerTenantState = {
            Unavailable: :Unavailable,
            Available: :Available,
            Enabled: :Enabled,
            Unresponsive: :Unresponsive,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
