module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceManagement singleton.
    AutomaticUpdateMode = {
        UserDefined: :UserDefined,
        NotifyDownload: :NotifyDownload,
        AutoInstallAtMaintenanceTime: :AutoInstallAtMaintenanceTime,
        AutoInstallAndRebootAtMaintenanceTime: :AutoInstallAndRebootAtMaintenanceTime,
        AutoInstallAndRebootAtScheduledTime: :AutoInstallAndRebootAtScheduledTime,
        AutoInstallAndRebootWithoutEndUserControl: :AutoInstallAndRebootWithoutEndUserControl,
    }
end
