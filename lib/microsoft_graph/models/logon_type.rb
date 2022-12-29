module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the admin singleton.
    LogonType = {
        Unknown: :Unknown,
        Interactive: :Interactive,
        RemoteInteractive: :RemoteInteractive,
        Network: :Network,
        Batch: :Batch,
        Service: :Service,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
