module MicrosoftGraph::Models
    AllowInvitesFrom = {
        None: :None,
        AdminsAndGuestInviters: :AdminsAndGuestInviters,
        AdminsGuestInvitersAndAllMembers: :AdminsGuestInvitersAndAllMembers,
        Everyone: :Everyone,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
