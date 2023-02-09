module MicrosoftGraph
    module Models
        ## 
        # Possible values to specify which cookies are allowed in Microsoft Edge.
        EdgeCookiePolicy = {
            UserDefined: :UserDefined,
            Allow: :Allow,
            BlockThirdParty: :BlockThirdParty,
            BlockAll: :BlockAll,
        }
    end
end
