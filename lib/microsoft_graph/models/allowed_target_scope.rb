module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the identityGovernance singleton.
    AllowedTargetScope = {
        NotSpecified: :NotSpecified,
        SpecificDirectoryUsers: :SpecificDirectoryUsers,
        SpecificConnectedOrganizationUsers: :SpecificConnectedOrganizationUsers,
        SpecificDirectoryServicePrincipals: :SpecificDirectoryServicePrincipals,
        AllMemberUsers: :AllMemberUsers,
        AllDirectoryUsers: :AllDirectoryUsers,
        AllDirectoryServicePrincipals: :AllDirectoryServicePrincipals,
        AllConfiguredConnectedOrganizationUsers: :AllConfiguredConnectedOrganizationUsers,
        AllExternalUsers: :AllExternalUsers,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
