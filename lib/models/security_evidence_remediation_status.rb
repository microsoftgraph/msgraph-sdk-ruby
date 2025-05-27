module MicrosoftGraph
    module Models
        SecurityEvidenceRemediationStatus = {
            None: :None,
            Remediated: :Remediated,
            Prevented: :Prevented,
            Blocked: :Blocked,
            NotFound: :NotFound,
            UnknownFutureValue: :UnknownFutureValue,
            Active: :Active,
            PendingApproval: :PendingApproval,
            Declined: :Declined,
            Unremediated: :Unremediated,
            Running: :Running,
            PartiallyRemediated: :PartiallyRemediated,
        }
    end
end
