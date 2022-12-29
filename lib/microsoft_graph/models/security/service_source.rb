module MicrosoftGraph::Models::Security
    ## 
    # Provides operations to manage the admin singleton.
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
