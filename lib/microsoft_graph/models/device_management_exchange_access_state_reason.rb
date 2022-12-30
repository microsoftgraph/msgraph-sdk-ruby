module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the auditLogRoot singleton.
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
