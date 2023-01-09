module MicrosoftGraph::Models
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
