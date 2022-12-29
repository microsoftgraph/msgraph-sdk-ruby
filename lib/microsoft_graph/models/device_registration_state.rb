module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    DeviceRegistrationState = {
        NotRegistered: :NotRegistered,
        Registered: :Registered,
        Revoked: :Revoked,
        KeyConflict: :KeyConflict,
        ApprovalPending: :ApprovalPending,
        CertificateReset: :CertificateReset,
        NotRegisteredPendingEnrollment: :NotRegisteredPendingEnrollment,
        Unknown: :Unknown,
    }
end
