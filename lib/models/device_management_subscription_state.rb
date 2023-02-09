module MicrosoftGraph
    module Models
        ## 
        # Tenant mobile device management subscription state.
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
end
