module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the auditLogRoot singleton.
    EvidenceRemediationStatus = {
        None: :None,
        Remediated: :Remediated,
        Prevented: :Prevented,
        Blocked: :Blocked,
        NotFound: :NotFound,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
