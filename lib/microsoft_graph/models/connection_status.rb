module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    ConnectionStatus = {
        Unknown: :Unknown,
        Attempted: :Attempted,
        Succeeded: :Succeeded,
        Blocked: :Blocked,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
