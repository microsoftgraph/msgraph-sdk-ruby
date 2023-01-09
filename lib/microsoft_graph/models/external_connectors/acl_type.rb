module MicrosoftGraph::Models::ExternalConnectors
    AclType = {
        User: :User,
        Group: :Group,
        Everyone: :Everyone,
        EveryoneExceptGuests: :EveryoneExceptGuests,
        ExternalGroup: :ExternalGroup,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
