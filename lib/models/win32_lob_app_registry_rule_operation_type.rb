module MicrosoftGraph
    module Models
        ## 
        # Contains all supported registry data detection type.
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
