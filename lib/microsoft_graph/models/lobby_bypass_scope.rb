module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the cloudCommunications singleton.
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
