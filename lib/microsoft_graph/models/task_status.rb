module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    TaskStatus = {
        NotStarted: :NotStarted,
        InProgress: :InProgress,
        Completed: :Completed,
        WaitingOnOthers: :WaitingOnOthers,
        Deferred: :Deferred,
    }
end
