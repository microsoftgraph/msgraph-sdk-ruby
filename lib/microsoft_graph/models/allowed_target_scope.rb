module MicrosoftGraph::Models
    ## 
    # Provides operations to manage the auditLogRoot singleton.
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
