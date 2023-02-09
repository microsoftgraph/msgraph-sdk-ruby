module MicrosoftGraph
    module Models
        ServiceHealthStatus = {
            ServiceOperational: :ServiceOperational,
            Investigating: :Investigating,
            RestoringService: :RestoringService,
            VerifyingService: :VerifyingService,
            ServiceRestored: :ServiceRestored,
            PostIncidentReviewPublished: :PostIncidentReviewPublished,
            ServiceDegradation: :ServiceDegradation,
            ServiceInterruption: :ServiceInterruption,
            ExtendedRecovery: :ExtendedRecovery,
            FalsePositive: :FalsePositive,
            InvestigationSuspended: :InvestigationSuspended,
            Resolved: :Resolved,
            MitigatedExternal: :MitigatedExternal,
            Mitigated: :Mitigated,
            ResolvedExternal: :ResolvedExternal,
            Confirmed: :Confirmed,
            Reported: :Reported,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
