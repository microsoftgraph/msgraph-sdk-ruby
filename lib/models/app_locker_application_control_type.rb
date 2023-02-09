module MicrosoftGraph
    module Models
        ## 
        # Possible values of AppLocker Application Control Types
        AppLockerApplicationControlType = {
            NotConfigured: :NotConfigured,
            EnforceComponentsAndStoreApps: :EnforceComponentsAndStoreApps,
            AuditComponentsAndStoreApps: :AuditComponentsAndStoreApps,
            EnforceComponentsStoreAppsAndSmartlocker: :EnforceComponentsStoreAppsAndSmartlocker,
            AuditComponentsStoreAppsAndSmartlocker: :AuditComponentsStoreAppsAndSmartlocker,
        }
    end
end
