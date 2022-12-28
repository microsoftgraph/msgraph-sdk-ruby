module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    TokenIssuerType = {
        AzureAD: :AzureAD,
        ADFederationServices: :ADFederationServices,
        UnknownFutureValue: :UnknownFutureValue,
        AzureADBackupAuth: :AzureADBackupAuth,
        ADFederationServicesMFAAdapter: :ADFederationServicesMFAAdapter,
        NPSExtension: :NPSExtension,
    }
end
