module MicrosoftGraph
    module Models
        ## 
        # Possible states associated with an Apple Volume Purchase Program token.
        VppTokenState = {
            Unknown: :Unknown,
            Valid: :Valid,
            Expired: :Expired,
            Invalid: :Invalid,
            AssignedToExternalMDM: :AssignedToExternalMDM,
        }
    end
end
