module MicrosoftGraph::Models
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
