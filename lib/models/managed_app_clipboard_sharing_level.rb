module MicrosoftGraph
    module Models
        ## 
        # Represents the level to which the device's clipboard may be shared between apps
        ManagedAppClipboardSharingLevel = {
            AllApps: :AllApps,
            ManagedAppsWithPasteIn: :ManagedAppsWithPasteIn,
            ManagedApps: :ManagedApps,
            Blocked: :Blocked,
        }
    end
end
