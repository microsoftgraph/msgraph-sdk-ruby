module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceAppManagement singleton.
    ManagedAppDataEncryptionType = {
        UseDeviceSettings: :UseDeviceSettings,
        AfterDeviceRestart: :AfterDeviceRestart,
        WhenDeviceLockedExceptOpenFiles: :WhenDeviceLockedExceptOpenFiles,
        WhenDeviceLocked: :WhenDeviceLocked,
    }
end
