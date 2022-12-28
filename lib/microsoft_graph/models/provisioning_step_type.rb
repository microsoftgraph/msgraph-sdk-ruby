module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    ProvisioningStepType = {
        Import: :Import,
        Scoping: :Scoping,
        Matching: :Matching,
        Processing: :Processing,
        ReferenceResolution: :ReferenceResolution,
        Export: :Export,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
