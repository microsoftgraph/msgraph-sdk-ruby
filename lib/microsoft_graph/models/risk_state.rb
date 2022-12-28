module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
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
