module MicrosoftGraph
    module Models
        ## 
        # A list of possible operations for rules used to make determinations about an application based on registry keys or values. Unless noted, the values can be used with either detection or requirement rules.
        Win32LobAppRegistryRuleOperationType = {
            NotConfigured: :NotConfigured,
            Exists: :Exists,
            DoesNotExist: :DoesNotExist,
            String: :String,
            Integer: :Integer,
            Version: :Version,
        }
    end
end
