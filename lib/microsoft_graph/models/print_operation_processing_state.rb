module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    PrintOperationProcessingState = {
        NotStarted: :NotStarted,
        Running: :Running,
        Succeeded: :Succeeded,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
