module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreementAcceptance entities.
    DeviceEnrollmentFailureReason = {
        Unknown: :Unknown,
        Authentication: :Authentication,
        Authorization: :Authorization,
        AccountValidation: :AccountValidation,
        UserValidation: :UserValidation,
        DeviceNotSupported: :DeviceNotSupported,
        InMaintenance: :InMaintenance,
        BadRequest: :BadRequest,
        FeatureNotSupported: :FeatureNotSupported,
        EnrollmentRestrictionsEnforced: :EnrollmentRestrictionsEnforced,
        ClientDisconnected: :ClientDisconnected,
        UserAbandonment: :UserAbandonment,
    }
end
