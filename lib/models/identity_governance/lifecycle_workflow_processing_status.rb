module MicrosoftGraph
    module Models
        module IdentityGovernance
            LifecycleWorkflowProcessingStatus = {
                Queued: :Queued,
                InProgress: :InProgress,
                Completed: :Completed,
                CompletedWithErrors: :CompletedWithErrors,
                Canceled: :Canceled,
                Failed: :Failed,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
