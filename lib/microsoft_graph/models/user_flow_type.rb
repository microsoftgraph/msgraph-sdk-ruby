module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the appCatalogs singleton.
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
