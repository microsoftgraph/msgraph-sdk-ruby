module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the deviceAppManagement singleton.
    WindowsInformationProtectionEnforcementLevel = {
        NoProtection: :NoProtection,
        EncryptAndAuditOnly: :EncryptAndAuditOnly,
        EncryptAuditAndPrompt: :EncryptAuditAndPrompt,
        EncryptAuditAndBlock: :EncryptAuditAndBlock,
    }
end
