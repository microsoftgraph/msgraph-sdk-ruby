module MicrosoftGraph
    module Models
        RiskDetail = {
            None: :None,
            AdminGeneratedTemporaryPassword: :AdminGeneratedTemporaryPassword,
            UserPerformedSecuredPasswordChange: :UserPerformedSecuredPasswordChange,
            UserPerformedSecuredPasswordReset: :UserPerformedSecuredPasswordReset,
            AdminConfirmedSigninSafe: :AdminConfirmedSigninSafe,
            AiConfirmedSigninSafe: :AiConfirmedSigninSafe,
            UserPassedMFADrivenByRiskBasedPolicy: :UserPassedMFADrivenByRiskBasedPolicy,
            AdminDismissedAllRiskForUser: :AdminDismissedAllRiskForUser,
            AdminConfirmedSigninCompromised: :AdminConfirmedSigninCompromised,
            Hidden: :Hidden,
            AdminConfirmedUserCompromised: :AdminConfirmedUserCompromised,
            UnknownFutureValue: :UnknownFutureValue,
            M365DAdminDismissedDetection: :M365DAdminDismissedDetection,
            AdminConfirmedServicePrincipalCompromised: :AdminConfirmedServicePrincipalCompromised,
            AdminDismissedAllRiskForServicePrincipal: :AdminDismissedAllRiskForServicePrincipal,
            UserChangedPasswordOnPremises: :UserChangedPasswordOnPremises,
            AdminDismissedRiskForSignIn: :AdminDismissedRiskForSignIn,
            AdminConfirmedAccountSafe: :AdminConfirmedAccountSafe,
        }
    end
end
