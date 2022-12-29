module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the admin singleton.
    SimulationStatus = {
        Unknown: :Unknown,
        Draft: :Draft,
        Running: :Running,
        Scheduled: :Scheduled,
        Succeeded: :Succeeded,
        Failed: :Failed,
        Cancelled: :Cancelled,
        Excluded: :Excluded,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
