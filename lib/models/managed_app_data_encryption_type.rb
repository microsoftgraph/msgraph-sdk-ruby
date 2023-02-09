module MicrosoftGraph
    module Models
        ## 
        # Represents the level to which app data is encrypted for managed apps
        ManagedAppDataEncryptionType = {
            UseDeviceSettings: :UseDeviceSettings,
            AfterDeviceRestart: :AfterDeviceRestart,
            WhenDeviceLockedExceptOpenFiles: :WhenDeviceLockedExceptOpenFiles,
            WhenDeviceLocked: :WhenDeviceLocked,
        }
    end
end
