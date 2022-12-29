module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the admin singleton.
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
