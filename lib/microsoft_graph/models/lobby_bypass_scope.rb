module MicrosoftGraph::Models
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
