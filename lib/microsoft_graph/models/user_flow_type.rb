module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the identityContainer singleton.
    UserFlowType = {
        SignUp: :SignUp,
        SignIn: :SignIn,
        SignUpOrSignIn: :SignUpOrSignIn,
        PasswordReset: :PasswordReset,
        ProfileUpdate: :ProfileUpdate,
        ResourceOwner: :ResourceOwner,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
