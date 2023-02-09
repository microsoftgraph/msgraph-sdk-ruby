module MicrosoftGraph
    module Models
        ## 
        # Device registration status.
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
end
