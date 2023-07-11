module MicrosoftGraph
    module Models
        module Security
            IncidentStatus = {
                Active: :Active,
                Resolved: :Resolved,
                InProgress: :InProgress,
                Redirected: :Redirected,
                UnknownFutureValue: :UnknownFutureValue,
                AwaitingAction: :AwaitingAction,
            }
        end
    end
end
