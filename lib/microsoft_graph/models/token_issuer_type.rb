module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
    TokenIssuerType = {
        AzureAD: :AzureAD,
        ADFederationServices: :ADFederationServices,
        UnknownFutureValue: :UnknownFutureValue,
        AzureADBackupAuth: :AzureADBackupAuth,
        ADFederationServicesMFAAdapter: :ADFederationServicesMFAAdapter,
        NPSExtension: :NPSExtension,
    }
end
