module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the admin singleton.
    CaseOperationStatus = {
        NotStarted: :NotStarted,
        SubmissionFailed: :SubmissionFailed,
        Running: :Running,
        Succeeded: :Succeeded,
        PartiallySucceeded: :PartiallySucceeded,
        Failed: :Failed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
