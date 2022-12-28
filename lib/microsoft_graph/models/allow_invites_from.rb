module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
    AllowInvitesFrom = {
        None: :None,
        AdminsAndGuestInviters: :AdminsAndGuestInviters,
        AdminsGuestInvitersAndAllMembers: :AdminsGuestInvitersAndAllMembers,
        Everyone: :Everyone,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
