module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceManagement singleton.
    AppLockerApplicationControlType = {
        NotConfigured: :NotConfigured,
        EnforceComponentsAndStoreApps: :EnforceComponentsAndStoreApps,
        AuditComponentsAndStoreApps: :AuditComponentsAndStoreApps,
        EnforceComponentsStoreAppsAndSmartlocker: :EnforceComponentsStoreAppsAndSmartlocker,
        AuditComponentsStoreAppsAndSmartlocker: :AuditComponentsStoreAppsAndSmartlocker,
    }
end
