module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the admin singleton.
    ConnectionStatus = {
        Unknown: :Unknown,
        Attempted: :Attempted,
        Succeeded: :Succeeded,
        Blocked: :Blocked,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
