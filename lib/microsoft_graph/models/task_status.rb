module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the auditLogRoot singleton.
    TaskStatus = {
        NotStarted: :NotStarted,
        InProgress: :InProgress,
        Completed: :Completed,
        WaitingOnOthers: :WaitingOnOthers,
        Deferred: :Deferred,
    }
end
