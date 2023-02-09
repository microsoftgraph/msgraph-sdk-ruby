module MicrosoftGraph
    module Models
        module ExternalConnectors
            AclType = {
                User: :User,
                Group: :Group,
                Everyone: :Everyone,
                EveryoneExceptGuests: :EveryoneExceptGuests,
                ExternalGroup: :ExternalGroup,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
