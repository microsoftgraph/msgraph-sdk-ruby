module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the admin singleton.
    PrintOperationProcessingState = {
        NotStarted: :NotStarted,
        Running: :Running,
        Succeeded: :Succeeded,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
