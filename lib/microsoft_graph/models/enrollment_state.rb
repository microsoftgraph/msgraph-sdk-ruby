module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    EnrollmentState = {
        Unknown: :Unknown,
        Enrolled: :Enrolled,
        PendingReset: :PendingReset,
        Failed: :Failed,
        NotContacted: :NotContacted,
    }
end
