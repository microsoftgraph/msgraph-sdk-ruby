module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    AppLockerApplicationControlType = {
        NotConfigured: :NotConfigured,
        EnforceComponentsAndStoreApps: :EnforceComponentsAndStoreApps,
        AuditComponentsAndStoreApps: :AuditComponentsAndStoreApps,
        EnforceComponentsStoreAppsAndSmartlocker: :EnforceComponentsStoreAppsAndSmartlocker,
        AuditComponentsStoreAppsAndSmartlocker: :AuditComponentsStoreAppsAndSmartlocker,
    }
end
