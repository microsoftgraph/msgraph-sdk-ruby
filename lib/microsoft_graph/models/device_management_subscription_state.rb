module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceManagement singleton.
    DeviceManagementSubscriptionState = {
        Pending: :Pending,
        Active: :Active,
        Warning: :Warning,
        Disabled: :Disabled,
        Deleted: :Deleted,
        Blocked: :Blocked,
        LockedOut: :LockedOut,
    }
end
