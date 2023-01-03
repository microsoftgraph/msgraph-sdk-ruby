module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
    EnrollmentState = {
        Unknown: :Unknown,
        Enrolled: :Enrolled,
        PendingReset: :PendingReset,
        Failed: :Failed,
        NotContacted: :NotContacted,
    }
end
