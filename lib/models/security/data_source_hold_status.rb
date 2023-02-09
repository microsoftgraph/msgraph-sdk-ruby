module MicrosoftGraph
    module Models
        module Security
            DataSourceHoldStatus = {
                NotApplied: :NotApplied,
                Applied: :Applied,
                Applying: :Applying,
                Removing: :Removing,
                Partial: :Partial,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
