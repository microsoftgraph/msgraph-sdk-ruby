module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
    ComplianceStatus = {
        Unknown: :Unknown,
        NotApplicable: :NotApplicable,
        Compliant: :Compliant,
        Remediated: :Remediated,
        NonCompliant: :NonCompliant,
        Error: :Error,
        Conflict: :Conflict,
        NotAssigned: :NotAssigned,
    }
end
