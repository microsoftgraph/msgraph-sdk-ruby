module MicrosoftGraph
    module Models
        ## 
        # Partner state of this tenant.
        DeviceManagementPartnerTenantState = {
            Unknown: :Unknown,
            Unavailable: :Unavailable,
            Enabled: :Enabled,
            Terminated: :Terminated,
            Rejected: :Rejected,
            Unresponsive: :Unresponsive,
        }
    end
end
