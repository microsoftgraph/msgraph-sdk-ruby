module MicrosoftGraph
    module Models
        ## 
        # Possible values for WIP Protection enforcement levels
        WindowsInformationProtectionEnforcementLevel = {
            NoProtection: :NoProtection,
            EncryptAndAuditOnly: :EncryptAndAuditOnly,
            EncryptAuditAndPrompt: :EncryptAuditAndPrompt,
            EncryptAuditAndBlock: :EncryptAuditAndBlock,
        }
    end
end
