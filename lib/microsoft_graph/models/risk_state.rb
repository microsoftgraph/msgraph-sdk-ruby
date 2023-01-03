module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
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
