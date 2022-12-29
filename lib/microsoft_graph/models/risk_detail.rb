module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the auditLogRoot singleton.
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
        AdminConfirmedServicePrincipalCompromised: :AdminConfirmedServicePrincipalCompromised,
        AdminDismissedAllRiskForServicePrincipal: :AdminDismissedAllRiskForServicePrincipal,
        M365DAdminDismissedDetection: :M365DAdminDismissedDetection,
    }
end
