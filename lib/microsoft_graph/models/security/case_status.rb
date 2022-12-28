module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the appCatalogs singleton.
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
