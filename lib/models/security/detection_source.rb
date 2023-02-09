module MicrosoftGraph
    module Models
        module Security
            DetectionSource = {
                Unknown: :Unknown,
                MicrosoftDefenderForEndpoint: :MicrosoftDefenderForEndpoint,
                Antivirus: :Antivirus,
                SmartScreen: :SmartScreen,
                CustomTi: :CustomTi,
                MicrosoftDefenderForOffice365: :MicrosoftDefenderForOffice365,
                AutomatedInvestigation: :AutomatedInvestigation,
                MicrosoftThreatExperts: :MicrosoftThreatExperts,
                CustomDetection: :CustomDetection,
                MicrosoftDefenderForIdentity: :MicrosoftDefenderForIdentity,
                CloudAppSecurity: :CloudAppSecurity,
                Microsoft365Defender: :Microsoft365Defender,
                AzureAdIdentityProtection: :AzureAdIdentityProtection,
                Manual: :Manual,
                MicrosoftDataLossPrevention: :MicrosoftDataLossPrevention,
                AppGovernancePolicy: :AppGovernancePolicy,
                AppGovernanceDetection: :AppGovernanceDetection,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
