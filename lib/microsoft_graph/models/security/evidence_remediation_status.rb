module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the collection of application entities.
    EvidenceRemediationStatus = {
        None: :None,
        Remediated: :Remediated,
        Prevented: :Prevented,
        Blocked: :Blocked,
        NotFound: :NotFound,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
