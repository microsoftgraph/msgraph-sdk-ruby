module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the collection of agreement entities.
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
