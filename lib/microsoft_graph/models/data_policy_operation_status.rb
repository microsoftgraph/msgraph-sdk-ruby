module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of dataPolicyOperation entities.
    DataPolicyOperationStatus = {
        NotStarted: :NotStarted,
        Running: :Running,
        Complete: :Complete,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
