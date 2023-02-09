module MicrosoftGraph
    module Models
        RiskState = {
            None: :None,
            ConfirmedSafe: :ConfirmedSafe,
            Remediated: :Remediated,
            Dismissed: :Dismissed,
            AtRisk: :AtRisk,
            ConfirmedCompromised: :ConfirmedCompromised,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
