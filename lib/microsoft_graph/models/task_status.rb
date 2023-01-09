module MicrosoftGraph::Models
    TaskStatus = {
        NotStarted: :NotStarted,
        InProgress: :InProgress,
        Completed: :Completed,
        WaitingOnOthers: :WaitingOnOthers,
        Deferred: :Deferred,
    }
end
