module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    ConnectionStatus = {
        Unknown: :Unknown,
        Attempted: :Attempted,
        Succeeded: :Succeeded,
        Blocked: :Blocked,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
