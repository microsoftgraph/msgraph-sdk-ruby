module MicrosoftGraph
    module Models
        module Security
            EvidenceRemediationStatus = {
                None: :None,
                Remediated: :Remediated,
                Prevented: :Prevented,
                Blocked: :Blocked,
                NotFound: :NotFound,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
