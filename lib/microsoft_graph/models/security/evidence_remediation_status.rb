module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the appCatalogs singleton.
    EvidenceRemediationStatus = {
        None: :None,
        Remediated: :Remediated,
        Prevented: :Prevented,
        Blocked: :Blocked,
        NotFound: :NotFound,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
