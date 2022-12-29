module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the directory singleton.
    AuthenticationProtocol = {
        WsFed: :WsFed,
        Saml: :Saml,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
