module MicrosoftGraph::Models
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
