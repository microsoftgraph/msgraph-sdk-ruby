module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreementAcceptance entities.
    LobbyBypassScope = {
        Organizer: :Organizer,
        Organization: :Organization,
        OrganizationAndFederated: :OrganizationAndFederated,
        Everyone: :Everyone,
        UnknownFutureValue: :UnknownFutureValue,
        Invited: :Invited,
        OrganizationExcludingGuests: :OrganizationExcludingGuests,
    }
end
