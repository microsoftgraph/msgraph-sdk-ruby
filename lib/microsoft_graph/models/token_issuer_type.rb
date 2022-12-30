module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    TokenIssuerType = {
        AzureAD: :AzureAD,
        ADFederationServices: :ADFederationServices,
        UnknownFutureValue: :UnknownFutureValue,
        AzureADBackupAuth: :AzureADBackupAuth,
        ADFederationServicesMFAAdapter: :ADFederationServicesMFAAdapter,
        NPSExtension: :NPSExtension,
    }
end
