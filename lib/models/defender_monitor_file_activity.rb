module MicrosoftGraph
    module Models
        ## 
        # Possible values for monitoring file activity.
        DefenderMonitorFileActivity = {
            UserDefined: :UserDefined,
            Disable: :Disable,
            MonitorAllFiles: :MonitorAllFiles,
            MonitorIncomingFilesOnly: :MonitorIncomingFilesOnly,
            MonitorOutgoingFilesOnly: :MonitorOutgoingFilesOnly,
        }
    end
end
