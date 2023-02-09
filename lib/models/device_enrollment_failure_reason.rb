module MicrosoftGraph
    module Models
        ## 
        # Top level failure categories for enrollment.
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
end
