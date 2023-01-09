module MicrosoftGraph::Models
    ## 
    # Scheduled Action Type Enum
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
