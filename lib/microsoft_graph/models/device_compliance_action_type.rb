module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceManagement singleton.
    DeviceComplianceActionType = {
        NoAction: :NoAction,
        Notification: :Notification,
        Block: :Block,
        Retire: :Retire,
        Wipe: :Wipe,
        RemoveResourceAccessProfiles: :RemoveResourceAccessProfiles,
        PushNotification: :PushNotification,
    }
end
