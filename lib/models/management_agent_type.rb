module MicrosoftGraph
    module Models
        ManagementAgentType = {
            Eas: :Eas,
            Mdm: :Mdm,
            EasMdm: :EasMdm,
            IntuneClient: :IntuneClient,
            EasIntuneClient: :EasIntuneClient,
            ConfigurationManagerClient: :ConfigurationManagerClient,
            ConfigurationManagerClientMdm: :ConfigurationManagerClientMdm,
            ConfigurationManagerClientMdmEas: :ConfigurationManagerClientMdmEas,
            Unknown: :Unknown,
            Jamf: :Jamf,
            GoogleCloudDevicePolicyController: :GoogleCloudDevicePolicyController,
            Microsoft365ManagedMdm: :Microsoft365ManagedMdm,
            MsSense: :MsSense,
        }
    end
end
