module MicrosoftGraph::Models::ExternalConnectors
    ## 
    # Provides operations to manage the collection of externalConnection entities.
    AclType = {
        User: :User,
        Group: :Group,
        Everyone: :Everyone,
        EveryoneExceptGuests: :EveryoneExceptGuests,
        ExternalGroup: :ExternalGroup,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
