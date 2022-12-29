module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceManagement singleton.
    EnrollmentState = {
        Unknown: :Unknown,
        Enrolled: :Enrolled,
        PendingReset: :PendingReset,
        Failed: :Failed,
        NotContacted: :NotContacted,
    }
end
