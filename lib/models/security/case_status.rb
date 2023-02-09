module MicrosoftGraph
    module Models
        module Security
            CaseStatus = {
                Unknown: :Unknown,
                Active: :Active,
                PendingDelete: :PendingDelete,
                Closing: :Closing,
                Closed: :Closed,
                ClosedWithError: :ClosedWithError,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
