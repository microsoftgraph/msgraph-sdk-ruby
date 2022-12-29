module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    LongRunningOperationStatus = {
        NotStarted: :NotStarted,
        Running: :Running,
        Succeeded: :Succeeded,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
