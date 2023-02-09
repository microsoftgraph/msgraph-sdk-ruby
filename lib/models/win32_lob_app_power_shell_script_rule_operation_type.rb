module MicrosoftGraph
    module Models
        ## 
        # Contains all supported Powershell Script output detection type.
        Win32LobAppPowerShellScriptRuleOperationType = {
            NotConfigured: :NotConfigured,
            String: :String,
            DateTime: :DateTime,
            Integer: :Integer,
            Float: :Float,
            Version: :Version,
            Boolean: :Boolean,
        }
    end
end
