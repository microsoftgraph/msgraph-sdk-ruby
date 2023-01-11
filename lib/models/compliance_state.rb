module MicrosoftGraph::Models
    ## 
    # Compliance state.
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
