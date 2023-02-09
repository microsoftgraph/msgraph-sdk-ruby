module MicrosoftGraph
    module Models
        ## 
        # Device Exchange Access State Reason.
        DeviceManagementExchangeAccessStateReason = {
            None: :None,
            Unknown: :Unknown,
            ExchangeGlobalRule: :ExchangeGlobalRule,
            ExchangeIndividualRule: :ExchangeIndividualRule,
            ExchangeDeviceRule: :ExchangeDeviceRule,
            ExchangeUpgrade: :ExchangeUpgrade,
            ExchangeMailboxPolicy: :ExchangeMailboxPolicy,
            Other: :Other,
            Compliant: :Compliant,
            NotCompliant: :NotCompliant,
            NotEnrolled: :NotEnrolled,
            UnknownLocation: :UnknownLocation,
            MfaRequired: :MfaRequired,
            AzureADBlockDueToAccessPolicy: :AzureADBlockDueToAccessPolicy,
            CompromisedPassword: :CompromisedPassword,
            DeviceNotKnownWithManagedApp: :DeviceNotKnownWithManagedApp,
        }
    end
end
