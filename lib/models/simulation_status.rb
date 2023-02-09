module MicrosoftGraph
    module Models
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
end
