module MicrosoftGraph::Models::ExternalConnectors
    ## 
    # Provides operations to manage the collection of externalConnection entities.
    IdentityType = {
        User: :User,
        Group: :Group,
        ExternalGroup: :ExternalGroup,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
