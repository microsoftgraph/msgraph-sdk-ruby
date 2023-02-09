module MicrosoftGraph
    module Models
        module ExternalConnectors
            ConnectionState = {
                Draft: :Draft,
                Ready: :Ready,
                Obsolete: :Obsolete,
                LimitExceeded: :LimitExceeded,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
