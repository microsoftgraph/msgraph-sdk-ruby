module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the auditLogRoot singleton.
    ComplianceState = {
        Unknown: :Unknown,
        Compliant: :Compliant,
        Noncompliant: :Noncompliant,
        Conflict: :Conflict,
        Error: :Error,
        InGracePeriod: :InGracePeriod,
        ConfigManager: :ConfigManager,
    }
end
