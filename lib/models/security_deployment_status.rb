module MicrosoftGraph
    module Models
        SecurityDeploymentStatus = {
            UpToDate: :UpToDate,
            Outdated: :Outdated,
            Updating: :Updating,
            UpdateFailed: :UpdateFailed,
            NotConfigured: :NotConfigured,
            Unreachable: :Unreachable,
            Disconnected: :Disconnected,
            StartFailure: :StartFailure,
            Syncing: :Syncing,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
