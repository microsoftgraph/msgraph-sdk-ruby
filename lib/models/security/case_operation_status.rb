module MicrosoftGraph
    module Models
        module Security
            CaseOperationStatus = {
                NotStarted: :NotStarted,
                SubmissionFailed: :SubmissionFailed,
                Running: :Running,
                Succeeded: :Succeeded,
                PartiallySucceeded: :PartiallySucceeded,
                Failed: :Failed,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
