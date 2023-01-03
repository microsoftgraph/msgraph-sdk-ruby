module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of application entities.
    AllowInvitesFrom = {
        None: :None,
        AdminsAndGuestInviters: :AdminsAndGuestInviters,
        AdminsGuestInvitersAndAllMembers: :AdminsGuestInvitersAndAllMembers,
        Everyone: :Everyone,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
