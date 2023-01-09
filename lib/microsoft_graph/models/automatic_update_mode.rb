module MicrosoftGraph::Models
    ## 
    # Possible values for automatic update mode.
    AutomaticUpdateMode = {
        UserDefined: :UserDefined,
        NotifyDownload: :NotifyDownload,
        AutoInstallAtMaintenanceTime: :AutoInstallAtMaintenanceTime,
        AutoInstallAndRebootAtMaintenanceTime: :AutoInstallAndRebootAtMaintenanceTime,
        AutoInstallAndRebootAtScheduledTime: :AutoInstallAndRebootAtScheduledTime,
        AutoInstallAndRebootWithoutEndUserControl: :AutoInstallAndRebootWithoutEndUserControl,
    }
end
