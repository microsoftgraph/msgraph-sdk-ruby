module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreementAcceptance entities.
    AutomaticUpdateMode = {
        UserDefined: :UserDefined,
        NotifyDownload: :NotifyDownload,
        AutoInstallAtMaintenanceTime: :AutoInstallAtMaintenanceTime,
        AutoInstallAndRebootAtMaintenanceTime: :AutoInstallAndRebootAtMaintenanceTime,
        AutoInstallAndRebootAtScheduledTime: :AutoInstallAndRebootAtScheduledTime,
        AutoInstallAndRebootWithoutEndUserControl: :AutoInstallAndRebootWithoutEndUserControl,
    }
end