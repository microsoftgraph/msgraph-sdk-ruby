module MicrosoftGraph
    module Models
        module Security
            ServiceSource = {
                Unknown: :Unknown,
                MicrosoftDefenderForEndpoint: :MicrosoftDefenderForEndpoint,
                MicrosoftDefenderForIdentity: :MicrosoftDefenderForIdentity,
                MicrosoftDefenderForCloudApps: :MicrosoftDefenderForCloudApps,
                MicrosoftDefenderForOffice365: :MicrosoftDefenderForOffice365,
                Microsoft365Defender: :Microsoft365Defender,
                AzureAdIdentityProtection: :AzureAdIdentityProtection,
                MicrosoftAppGovernance: :MicrosoftAppGovernance,
                DataLossPrevention: :DataLossPrevention,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
