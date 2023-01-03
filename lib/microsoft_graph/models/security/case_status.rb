module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the collection of agreement entities.
    CaseStatus = {
        Unknown: :Unknown,
        Active: :Active,
        PendingDelete: :PendingDelete,
        Closing: :Closing,
        Closed: :Closed,
        ClosedWithError: :ClosedWithError,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
