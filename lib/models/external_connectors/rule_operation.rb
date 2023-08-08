module MicrosoftGraph
    module Models
        module ExternalConnectors
            RuleOperation = {
                Equals: :Equals,
                NotEquals: :NotEquals,
                Contains: :Contains,
                NotContains: :NotContains,
                LessThan: :LessThan,
                GreaterThan: :GreaterThan,
                StartsWith: :StartsWith,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
