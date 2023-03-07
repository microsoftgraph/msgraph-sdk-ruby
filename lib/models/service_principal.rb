require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServicePrincipal < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # true if the service principal account is enabled; otherwise, false. If set to false, then no users will be able to sign in to this app, even if they are assigned to it. Supports $filter (eq, ne, not, in).
            @account_enabled
            ## 
            # Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams may set the addIns property for its 'FileHandler' functionality. This will let services like Microsoft 365 call the application in the context of a document the user is working on.
            @add_ins
            ## 
            # Used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities. Supports $filter (eq, not, ge, le, startsWith).
            @alternative_names
            ## 
            # The description exposed by the associated application.
            @app_description
            ## 
            # The display name exposed by the associated application.
            @app_display_name
            ## 
            # The unique identifier for the associated application (its appId property). Supports $filter (eq, ne, not, in, startsWith).
            @app_id
            ## 
            # The appManagementPolicies property
            @app_management_policies
            ## 
            # Contains the tenant id where the application is registered. This is applicable only to service principals backed by applications. Supports $filter (eq, ne, NOT, ge, le).
            @app_owner_organization_id
            ## 
            # App role assignments for this app or service, granted to users, groups, and other service principals. Supports $expand.
            @app_role_assigned_to
            ## 
            # Specifies whether users or other service principals need to be granted an app role assignment for this service principal before users can sign in or apps can get tokens. The default value is false. Not nullable. Supports $filter (eq, ne, NOT).
            @app_role_assignment_required
            ## 
            # App role assignment for another app or service, granted to this service principal. Supports $expand.
            @app_role_assignments
            ## 
            # The roles exposed by the application which this service principal represents. For more information see the appRoles property definition on the application entity. Not nullable.
            @app_roles
            ## 
            # Unique identifier of the applicationTemplate that the servicePrincipal was created from. Read-only. Supports $filter (eq, ne, NOT, startsWith).
            @application_template_id
            ## 
            # The claimsMappingPolicies assigned to this service principal. Supports $expand.
            @claims_mapping_policies
            ## 
            # Directory objects created by this service principal. Read-only. Nullable.
            @created_objects
            ## 
            # The delegatedPermissionClassifications property
            @delegated_permission_classifications
            ## 
            # Free text field to provide an internal end-user facing description of the service principal. End-user portals such MyApps will display the application description in this field. The maximum allowed size is 1024 characters. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            @description
            ## 
            # Specifies whether Microsoft has disabled the registered application. Possible values are: null (default value), NotDisabled, and DisabledDueToViolationOfServicesAgreement (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement).  Supports $filter (eq, ne, not).
            @disabled_by_microsoft_status
            ## 
            # The display name for the service principal. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            @display_name
            ## 
            # The endpoints property
            @endpoints
            ## 
            # Federated identities for a specific type of service principal - managed identity. Supports $expand and $filter (/$count eq 0, /$count ne 0).
            @federated_identity_credentials
            ## 
            # The homeRealmDiscoveryPolicies assigned to this service principal. Supports $expand.
            @home_realm_discovery_policies
            ## 
            # Home page or landing page of the application.
            @homepage
            ## 
            # Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more info, see How to: Add Terms of service and privacy statement for registered Azure AD apps. Supports $filter (eq, ne, not, ge, le, and eq on null values).
            @info
            ## 
            # The collection of key credentials associated with the service principal. Not nullable. Supports $filter (eq, not, ge, le).
            @key_credentials
            ## 
            # Specifies the URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on. The user launches the application from Microsoft 365, the Azure AD My Apps, or the Azure AD SSO URL.
            @login_url
            ## 
            # Specifies the URL that will be used by Microsoft's authorization service to logout an user using OpenId Connect front-channel, back-channel or SAML logout protocols.
            @logout_url
            ## 
            # Roles that this service principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports $expand.
            @member_of
            ## 
            # Free text field to capture information about the service principal, typically used for operational purposes. Maximum allowed size is 1024 characters.
            @notes
            ## 
            # Specifies the list of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
            @notification_email_addresses
            ## 
            # Delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user. Read-only. Nullable.
            @oauth2_permission_grants
            ## 
            # The delegated permissions exposed by the application. For more information see the oauth2PermissionScopes property on the application entity's api property. Not nullable.
            @oauth2_permission_scopes
            ## 
            # Directory objects that are owned by this service principal. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            @owned_objects
            ## 
            # Directory objects that are owners of this servicePrincipal. The owners are a set of non-admin users or servicePrincipals who are allowed to modify this object. Read-only. Nullable.  Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            @owners
            ## 
            # The collection of password credentials associated with the application. Not nullable.
            @password_credentials
            ## 
            # Specifies the single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. The supported values are password, saml, notSupported, and oidc.
            @preferred_single_sign_on_mode
            ## 
            # Reserved for internal use only. Do not write or otherwise rely on this property. May be removed in future versions.
            @preferred_token_signing_key_thumbprint
            ## 
            # The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable.
            @reply_urls
            ## 
            # The resource-specific application permissions exposed by this application. Currently, resource-specific permissions are only supported for Teams apps accessing to specific chats and teams using Microsoft Graph. Read-only.
            @resource_specific_application_permissions
            ## 
            # The collection for settings related to saml single sign-on.
            @saml_single_sign_on_settings
            ## 
            # Contains the list of identifiersUris, copied over from the associated application. Additional values can be added to hybrid applications. These values can be used to identify the permissions exposed by this app within Azure AD. For example,Client apps can specify a resource URI which is based on the values of this property to acquire an access token, which is the URI returned in the 'aud' claim.The any operator is required for filter expressions on multi-valued properties. Not nullable.  Supports $filter (eq, not, ge, le, startsWith).
            @service_principal_names
            ## 
            # Identifies whether the service principal represents an application, a managed identity, or a legacy application. This is set by Azure AD internally. The servicePrincipalType property can be set to three different values: __Application - A service principal that represents an application or service. The appId property identifies the associated app registration, and matches the appId of an application, possibly from a different tenant. If the associated app registration is missing, tokens are not issued for the service principal.__ManagedIdentity - A service principal that represents a managed identity. Service principals representing managed identities can be granted access and permissions, but cannot be updated or modified directly.__Legacy - A service principal that represents an app created before app registrations, or through legacy experiences. Legacy service principal can have credentials, service principal names, reply URLs, and other properties which are editable by an authorized user, but does not have an associated app registration. The appId value does not associate the service principal with an app registration. The service principal can only be used in the tenant where it was created.__SocialIdp - For internal use.
            @service_principal_type
            ## 
            # Specifies the Microsoft accounts that are supported for the current application. Read-only. Supported values are:AzureADMyOrg: Users with a Microsoft work or school account in my organization’s Azure AD tenant (single-tenant).AzureADMultipleOrgs: Users with a Microsoft work or school account in any organization’s Azure AD tenant (multi-tenant).AzureADandPersonalMicrosoftAccount: Users with a personal Microsoft account, or a work or school account in any organization’s Azure AD tenant.PersonalMicrosoftAccount: Users with a personal Microsoft account only.
            @sign_in_audience
            ## 
            # Custom strings that can be used to categorize and identify the service principal. Not nullable. Supports $filter (eq, not, ge, le, startsWith).
            @tags
            ## 
            # Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.
            @token_encryption_key_id
            ## 
            # The tokenIssuancePolicies assigned to this service principal.
            @token_issuance_policies
            ## 
            # The tokenLifetimePolicies assigned to this service principal.
            @token_lifetime_policies
            ## 
            # The transitiveMemberOf property
            @transitive_member_of
            ## 
            # Specifies the verified publisher of the application which this service principal represents.
            @verified_publisher
            ## 
            ## Gets the accountEnabled property value. true if the service principal account is enabled; otherwise, false. If set to false, then no users will be able to sign in to this app, even if they are assigned to it. Supports $filter (eq, ne, not, in).
            ## @return a boolean
            ## 
            def account_enabled
                return @account_enabled
            end
            ## 
            ## Sets the accountEnabled property value. true if the service principal account is enabled; otherwise, false. If set to false, then no users will be able to sign in to this app, even if they are assigned to it. Supports $filter (eq, ne, not, in).
            ## @param value Value to set for the account_enabled property.
            ## @return a void
            ## 
            def account_enabled=(value)
                @account_enabled = value
            end
            ## 
            ## Gets the addIns property value. Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams may set the addIns property for its 'FileHandler' functionality. This will let services like Microsoft 365 call the application in the context of a document the user is working on.
            ## @return a add_in
            ## 
            def add_ins
                return @add_ins
            end
            ## 
            ## Sets the addIns property value. Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams may set the addIns property for its 'FileHandler' functionality. This will let services like Microsoft 365 call the application in the context of a document the user is working on.
            ## @param value Value to set for the add_ins property.
            ## @return a void
            ## 
            def add_ins=(value)
                @add_ins = value
            end
            ## 
            ## Gets the alternativeNames property value. Used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities. Supports $filter (eq, not, ge, le, startsWith).
            ## @return a string
            ## 
            def alternative_names
                return @alternative_names
            end
            ## 
            ## Sets the alternativeNames property value. Used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities. Supports $filter (eq, not, ge, le, startsWith).
            ## @param value Value to set for the alternative_names property.
            ## @return a void
            ## 
            def alternative_names=(value)
                @alternative_names = value
            end
            ## 
            ## Gets the appDescription property value. The description exposed by the associated application.
            ## @return a string
            ## 
            def app_description
                return @app_description
            end
            ## 
            ## Sets the appDescription property value. The description exposed by the associated application.
            ## @param value Value to set for the app_description property.
            ## @return a void
            ## 
            def app_description=(value)
                @app_description = value
            end
            ## 
            ## Gets the appDisplayName property value. The display name exposed by the associated application.
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. The display name exposed by the associated application.
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appId property value. The unique identifier for the associated application (its appId property). Supports $filter (eq, ne, not, in, startsWith).
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The unique identifier for the associated application (its appId property). Supports $filter (eq, ne, not, in, startsWith).
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appManagementPolicies property value. The appManagementPolicies property
            ## @return a app_management_policy
            ## 
            def app_management_policies
                return @app_management_policies
            end
            ## 
            ## Sets the appManagementPolicies property value. The appManagementPolicies property
            ## @param value Value to set for the app_management_policies property.
            ## @return a void
            ## 
            def app_management_policies=(value)
                @app_management_policies = value
            end
            ## 
            ## Gets the appOwnerOrganizationId property value. Contains the tenant id where the application is registered. This is applicable only to service principals backed by applications. Supports $filter (eq, ne, NOT, ge, le).
            ## @return a guid
            ## 
            def app_owner_organization_id
                return @app_owner_organization_id
            end
            ## 
            ## Sets the appOwnerOrganizationId property value. Contains the tenant id where the application is registered. This is applicable only to service principals backed by applications. Supports $filter (eq, ne, NOT, ge, le).
            ## @param value Value to set for the app_owner_organization_id property.
            ## @return a void
            ## 
            def app_owner_organization_id=(value)
                @app_owner_organization_id = value
            end
            ## 
            ## Gets the appRoleAssignedTo property value. App role assignments for this app or service, granted to users, groups, and other service principals. Supports $expand.
            ## @return a app_role_assignment
            ## 
            def app_role_assigned_to
                return @app_role_assigned_to
            end
            ## 
            ## Sets the appRoleAssignedTo property value. App role assignments for this app or service, granted to users, groups, and other service principals. Supports $expand.
            ## @param value Value to set for the app_role_assigned_to property.
            ## @return a void
            ## 
            def app_role_assigned_to=(value)
                @app_role_assigned_to = value
            end
            ## 
            ## Gets the appRoleAssignmentRequired property value. Specifies whether users or other service principals need to be granted an app role assignment for this service principal before users can sign in or apps can get tokens. The default value is false. Not nullable. Supports $filter (eq, ne, NOT).
            ## @return a boolean
            ## 
            def app_role_assignment_required
                return @app_role_assignment_required
            end
            ## 
            ## Sets the appRoleAssignmentRequired property value. Specifies whether users or other service principals need to be granted an app role assignment for this service principal before users can sign in or apps can get tokens. The default value is false. Not nullable. Supports $filter (eq, ne, NOT).
            ## @param value Value to set for the app_role_assignment_required property.
            ## @return a void
            ## 
            def app_role_assignment_required=(value)
                @app_role_assignment_required = value
            end
            ## 
            ## Gets the appRoleAssignments property value. App role assignment for another app or service, granted to this service principal. Supports $expand.
            ## @return a app_role_assignment
            ## 
            def app_role_assignments
                return @app_role_assignments
            end
            ## 
            ## Sets the appRoleAssignments property value. App role assignment for another app or service, granted to this service principal. Supports $expand.
            ## @param value Value to set for the app_role_assignments property.
            ## @return a void
            ## 
            def app_role_assignments=(value)
                @app_role_assignments = value
            end
            ## 
            ## Gets the appRoles property value. The roles exposed by the application which this service principal represents. For more information see the appRoles property definition on the application entity. Not nullable.
            ## @return a app_role
            ## 
            def app_roles
                return @app_roles
            end
            ## 
            ## Sets the appRoles property value. The roles exposed by the application which this service principal represents. For more information see the appRoles property definition on the application entity. Not nullable.
            ## @param value Value to set for the app_roles property.
            ## @return a void
            ## 
            def app_roles=(value)
                @app_roles = value
            end
            ## 
            ## Gets the applicationTemplateId property value. Unique identifier of the applicationTemplate that the servicePrincipal was created from. Read-only. Supports $filter (eq, ne, NOT, startsWith).
            ## @return a string
            ## 
            def application_template_id
                return @application_template_id
            end
            ## 
            ## Sets the applicationTemplateId property value. Unique identifier of the applicationTemplate that the servicePrincipal was created from. Read-only. Supports $filter (eq, ne, NOT, startsWith).
            ## @param value Value to set for the application_template_id property.
            ## @return a void
            ## 
            def application_template_id=(value)
                @application_template_id = value
            end
            ## 
            ## Gets the claimsMappingPolicies property value. The claimsMappingPolicies assigned to this service principal. Supports $expand.
            ## @return a claims_mapping_policy
            ## 
            def claims_mapping_policies
                return @claims_mapping_policies
            end
            ## 
            ## Sets the claimsMappingPolicies property value. The claimsMappingPolicies assigned to this service principal. Supports $expand.
            ## @param value Value to set for the claims_mapping_policies property.
            ## @return a void
            ## 
            def claims_mapping_policies=(value)
                @claims_mapping_policies = value
            end
            ## 
            ## Instantiates a new ServicePrincipal and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.servicePrincipal"
            end
            ## 
            ## Gets the createdObjects property value. Directory objects created by this service principal. Read-only. Nullable.
            ## @return a directory_object
            ## 
            def created_objects
                return @created_objects
            end
            ## 
            ## Sets the createdObjects property value. Directory objects created by this service principal. Read-only. Nullable.
            ## @param value Value to set for the created_objects property.
            ## @return a void
            ## 
            def created_objects=(value)
                @created_objects = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_principal
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServicePrincipal.new
            end
            ## 
            ## Gets the delegatedPermissionClassifications property value. The delegatedPermissionClassifications property
            ## @return a delegated_permission_classification
            ## 
            def delegated_permission_classifications
                return @delegated_permission_classifications
            end
            ## 
            ## Sets the delegatedPermissionClassifications property value. The delegatedPermissionClassifications property
            ## @param value Value to set for the delegated_permission_classifications property.
            ## @return a void
            ## 
            def delegated_permission_classifications=(value)
                @delegated_permission_classifications = value
            end
            ## 
            ## Gets the description property value. Free text field to provide an internal end-user facing description of the service principal. End-user portals such MyApps will display the application description in this field. The maximum allowed size is 1024 characters. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Free text field to provide an internal end-user facing description of the service principal. End-user portals such MyApps will display the application description in this field. The maximum allowed size is 1024 characters. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the disabledByMicrosoftStatus property value. Specifies whether Microsoft has disabled the registered application. Possible values are: null (default value), NotDisabled, and DisabledDueToViolationOfServicesAgreement (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement).  Supports $filter (eq, ne, not).
            ## @return a string
            ## 
            def disabled_by_microsoft_status
                return @disabled_by_microsoft_status
            end
            ## 
            ## Sets the disabledByMicrosoftStatus property value. Specifies whether Microsoft has disabled the registered application. Possible values are: null (default value), NotDisabled, and DisabledDueToViolationOfServicesAgreement (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement).  Supports $filter (eq, ne, not).
            ## @param value Value to set for the disabled_by_microsoft_status property.
            ## @return a void
            ## 
            def disabled_by_microsoft_status=(value)
                @disabled_by_microsoft_status = value
            end
            ## 
            ## Gets the displayName property value. The display name for the service principal. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the service principal. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endpoints property value. The endpoints property
            ## @return a endpoint
            ## 
            def endpoints
                return @endpoints
            end
            ## 
            ## Sets the endpoints property value. The endpoints property
            ## @param value Value to set for the endpoints property.
            ## @return a void
            ## 
            def endpoints=(value)
                @endpoints = value
            end
            ## 
            ## Gets the federatedIdentityCredentials property value. Federated identities for a specific type of service principal - managed identity. Supports $expand and $filter (/$count eq 0, /$count ne 0).
            ## @return a federated_identity_credential
            ## 
            def federated_identity_credentials
                return @federated_identity_credentials
            end
            ## 
            ## Sets the federatedIdentityCredentials property value. Federated identities for a specific type of service principal - managed identity. Supports $expand and $filter (/$count eq 0, /$count ne 0).
            ## @param value Value to set for the federated_identity_credentials property.
            ## @return a void
            ## 
            def federated_identity_credentials=(value)
                @federated_identity_credentials = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountEnabled" => lambda {|n| @account_enabled = n.get_boolean_value() },
                    "addIns" => lambda {|n| @add_ins = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AddIn.create_from_discriminator_value(pn) }) },
                    "alternativeNames" => lambda {|n| @alternative_names = n.get_collection_of_primitive_values(String) },
                    "appDescription" => lambda {|n| @app_description = n.get_string_value() },
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appManagementPolicies" => lambda {|n| @app_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppManagementPolicy.create_from_discriminator_value(pn) }) },
                    "appOwnerOrganizationId" => lambda {|n| @app_owner_organization_id = n.get_guid_value() },
                    "appRoleAssignedTo" => lambda {|n| @app_role_assigned_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppRoleAssignment.create_from_discriminator_value(pn) }) },
                    "appRoleAssignmentRequired" => lambda {|n| @app_role_assignment_required = n.get_boolean_value() },
                    "appRoleAssignments" => lambda {|n| @app_role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppRoleAssignment.create_from_discriminator_value(pn) }) },
                    "appRoles" => lambda {|n| @app_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppRole.create_from_discriminator_value(pn) }) },
                    "applicationTemplateId" => lambda {|n| @application_template_id = n.get_string_value() },
                    "claimsMappingPolicies" => lambda {|n| @claims_mapping_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ClaimsMappingPolicy.create_from_discriminator_value(pn) }) },
                    "createdObjects" => lambda {|n| @created_objects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "delegatedPermissionClassifications" => lambda {|n| @delegated_permission_classifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DelegatedPermissionClassification.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "disabledByMicrosoftStatus" => lambda {|n| @disabled_by_microsoft_status = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endpoints" => lambda {|n| @endpoints = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Endpoint.create_from_discriminator_value(pn) }) },
                    "federatedIdentityCredentials" => lambda {|n| @federated_identity_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::FederatedIdentityCredential.create_from_discriminator_value(pn) }) },
                    "homeRealmDiscoveryPolicies" => lambda {|n| @home_realm_discovery_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::HomeRealmDiscoveryPolicy.create_from_discriminator_value(pn) }) },
                    "homepage" => lambda {|n| @homepage = n.get_string_value() },
                    "info" => lambda {|n| @info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::InformationalUrl.create_from_discriminator_value(pn) }) },
                    "keyCredentials" => lambda {|n| @key_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyCredential.create_from_discriminator_value(pn) }) },
                    "loginUrl" => lambda {|n| @login_url = n.get_string_value() },
                    "logoutUrl" => lambda {|n| @logout_url = n.get_string_value() },
                    "memberOf" => lambda {|n| @member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "notificationEmailAddresses" => lambda {|n| @notification_email_addresses = n.get_collection_of_primitive_values(String) },
                    "oauth2PermissionGrants" => lambda {|n| @oauth2_permission_grants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OAuth2PermissionGrant.create_from_discriminator_value(pn) }) },
                    "oauth2PermissionScopes" => lambda {|n| @oauth2_permission_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PermissionScope.create_from_discriminator_value(pn) }) },
                    "ownedObjects" => lambda {|n| @owned_objects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "passwordCredentials" => lambda {|n| @password_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PasswordCredential.create_from_discriminator_value(pn) }) },
                    "preferredSingleSignOnMode" => lambda {|n| @preferred_single_sign_on_mode = n.get_string_value() },
                    "preferredTokenSigningKeyThumbprint" => lambda {|n| @preferred_token_signing_key_thumbprint = n.get_string_value() },
                    "replyUrls" => lambda {|n| @reply_urls = n.get_collection_of_primitive_values(String) },
                    "resourceSpecificApplicationPermissions" => lambda {|n| @resource_specific_application_permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ResourceSpecificPermission.create_from_discriminator_value(pn) }) },
                    "samlSingleSignOnSettings" => lambda {|n| @saml_single_sign_on_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SamlSingleSignOnSettings.create_from_discriminator_value(pn) }) },
                    "servicePrincipalNames" => lambda {|n| @service_principal_names = n.get_collection_of_primitive_values(String) },
                    "servicePrincipalType" => lambda {|n| @service_principal_type = n.get_string_value() },
                    "signInAudience" => lambda {|n| @sign_in_audience = n.get_string_value() },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "tokenEncryptionKeyId" => lambda {|n| @token_encryption_key_id = n.get_guid_value() },
                    "tokenIssuancePolicies" => lambda {|n| @token_issuance_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TokenIssuancePolicy.create_from_discriminator_value(pn) }) },
                    "tokenLifetimePolicies" => lambda {|n| @token_lifetime_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TokenLifetimePolicy.create_from_discriminator_value(pn) }) },
                    "transitiveMemberOf" => lambda {|n| @transitive_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "verifiedPublisher" => lambda {|n| @verified_publisher = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::VerifiedPublisher.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the homeRealmDiscoveryPolicies property value. The homeRealmDiscoveryPolicies assigned to this service principal. Supports $expand.
            ## @return a home_realm_discovery_policy
            ## 
            def home_realm_discovery_policies
                return @home_realm_discovery_policies
            end
            ## 
            ## Sets the homeRealmDiscoveryPolicies property value. The homeRealmDiscoveryPolicies assigned to this service principal. Supports $expand.
            ## @param value Value to set for the home_realm_discovery_policies property.
            ## @return a void
            ## 
            def home_realm_discovery_policies=(value)
                @home_realm_discovery_policies = value
            end
            ## 
            ## Gets the homepage property value. Home page or landing page of the application.
            ## @return a string
            ## 
            def homepage
                return @homepage
            end
            ## 
            ## Sets the homepage property value. Home page or landing page of the application.
            ## @param value Value to set for the homepage property.
            ## @return a void
            ## 
            def homepage=(value)
                @homepage = value
            end
            ## 
            ## Gets the info property value. Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more info, see How to: Add Terms of service and privacy statement for registered Azure AD apps. Supports $filter (eq, ne, not, ge, le, and eq on null values).
            ## @return a informational_url
            ## 
            def info
                return @info
            end
            ## 
            ## Sets the info property value. Basic profile information of the acquired application such as app's marketing, support, terms of service and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more info, see How to: Add Terms of service and privacy statement for registered Azure AD apps. Supports $filter (eq, ne, not, ge, le, and eq on null values).
            ## @param value Value to set for the info property.
            ## @return a void
            ## 
            def info=(value)
                @info = value
            end
            ## 
            ## Gets the keyCredentials property value. The collection of key credentials associated with the service principal. Not nullable. Supports $filter (eq, not, ge, le).
            ## @return a key_credential
            ## 
            def key_credentials
                return @key_credentials
            end
            ## 
            ## Sets the keyCredentials property value. The collection of key credentials associated with the service principal. Not nullable. Supports $filter (eq, not, ge, le).
            ## @param value Value to set for the key_credentials property.
            ## @return a void
            ## 
            def key_credentials=(value)
                @key_credentials = value
            end
            ## 
            ## Gets the loginUrl property value. Specifies the URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on. The user launches the application from Microsoft 365, the Azure AD My Apps, or the Azure AD SSO URL.
            ## @return a string
            ## 
            def login_url
                return @login_url
            end
            ## 
            ## Sets the loginUrl property value. Specifies the URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on. The user launches the application from Microsoft 365, the Azure AD My Apps, or the Azure AD SSO URL.
            ## @param value Value to set for the login_url property.
            ## @return a void
            ## 
            def login_url=(value)
                @login_url = value
            end
            ## 
            ## Gets the logoutUrl property value. Specifies the URL that will be used by Microsoft's authorization service to logout an user using OpenId Connect front-channel, back-channel or SAML logout protocols.
            ## @return a string
            ## 
            def logout_url
                return @logout_url
            end
            ## 
            ## Sets the logoutUrl property value. Specifies the URL that will be used by Microsoft's authorization service to logout an user using OpenId Connect front-channel, back-channel or SAML logout protocols.
            ## @param value Value to set for the logout_url property.
            ## @return a void
            ## 
            def logout_url=(value)
                @logout_url = value
            end
            ## 
            ## Gets the memberOf property value. Roles that this service principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. Roles that this service principal is a member of. HTTP Methods: GET Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the member_of property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Gets the notes property value. Free text field to capture information about the service principal, typically used for operational purposes. Maximum allowed size is 1024 characters.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Free text field to capture information about the service principal, typically used for operational purposes. Maximum allowed size is 1024 characters.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the notificationEmailAddresses property value. Specifies the list of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
            ## @return a string
            ## 
            def notification_email_addresses
                return @notification_email_addresses
            end
            ## 
            ## Sets the notificationEmailAddresses property value. Specifies the list of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
            ## @param value Value to set for the notification_email_addresses property.
            ## @return a void
            ## 
            def notification_email_addresses=(value)
                @notification_email_addresses = value
            end
            ## 
            ## Gets the oauth2PermissionGrants property value. Delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user. Read-only. Nullable.
            ## @return a o_auth2_permission_grant
            ## 
            def oauth2_permission_grants
                return @oauth2_permission_grants
            end
            ## 
            ## Sets the oauth2PermissionGrants property value. Delegated permission grants authorizing this service principal to access an API on behalf of a signed-in user. Read-only. Nullable.
            ## @param value Value to set for the oauth2_permission_grants property.
            ## @return a void
            ## 
            def oauth2_permission_grants=(value)
                @oauth2_permission_grants = value
            end
            ## 
            ## Gets the oauth2PermissionScopes property value. The delegated permissions exposed by the application. For more information see the oauth2PermissionScopes property on the application entity's api property. Not nullable.
            ## @return a permission_scope
            ## 
            def oauth2_permission_scopes
                return @oauth2_permission_scopes
            end
            ## 
            ## Sets the oauth2PermissionScopes property value. The delegated permissions exposed by the application. For more information see the oauth2PermissionScopes property on the application entity's api property. Not nullable.
            ## @param value Value to set for the oauth2_permission_scopes property.
            ## @return a void
            ## 
            def oauth2_permission_scopes=(value)
                @oauth2_permission_scopes = value
            end
            ## 
            ## Gets the ownedObjects property value. Directory objects that are owned by this service principal. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            ## @return a directory_object
            ## 
            def owned_objects
                return @owned_objects
            end
            ## 
            ## Sets the ownedObjects property value. Directory objects that are owned by this service principal. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            ## @param value Value to set for the owned_objects property.
            ## @return a void
            ## 
            def owned_objects=(value)
                @owned_objects = value
            end
            ## 
            ## Gets the owners property value. Directory objects that are owners of this servicePrincipal. The owners are a set of non-admin users or servicePrincipals who are allowed to modify this object. Read-only. Nullable.  Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            ## @return a directory_object
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. Directory objects that are owners of this servicePrincipal. The owners are a set of non-admin users or servicePrincipals who are allowed to modify this object. Read-only. Nullable.  Supports $expand and $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1).
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the passwordCredentials property value. The collection of password credentials associated with the application. Not nullable.
            ## @return a password_credential
            ## 
            def password_credentials
                return @password_credentials
            end
            ## 
            ## Sets the passwordCredentials property value. The collection of password credentials associated with the application. Not nullable.
            ## @param value Value to set for the password_credentials property.
            ## @return a void
            ## 
            def password_credentials=(value)
                @password_credentials = value
            end
            ## 
            ## Gets the preferredSingleSignOnMode property value. Specifies the single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. The supported values are password, saml, notSupported, and oidc.
            ## @return a string
            ## 
            def preferred_single_sign_on_mode
                return @preferred_single_sign_on_mode
            end
            ## 
            ## Sets the preferredSingleSignOnMode property value. Specifies the single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. The supported values are password, saml, notSupported, and oidc.
            ## @param value Value to set for the preferred_single_sign_on_mode property.
            ## @return a void
            ## 
            def preferred_single_sign_on_mode=(value)
                @preferred_single_sign_on_mode = value
            end
            ## 
            ## Gets the preferredTokenSigningKeyThumbprint property value. Reserved for internal use only. Do not write or otherwise rely on this property. May be removed in future versions.
            ## @return a string
            ## 
            def preferred_token_signing_key_thumbprint
                return @preferred_token_signing_key_thumbprint
            end
            ## 
            ## Sets the preferredTokenSigningKeyThumbprint property value. Reserved for internal use only. Do not write or otherwise rely on this property. May be removed in future versions.
            ## @param value Value to set for the preferred_token_signing_key_thumbprint property.
            ## @return a void
            ## 
            def preferred_token_signing_key_thumbprint=(value)
                @preferred_token_signing_key_thumbprint = value
            end
            ## 
            ## Gets the replyUrls property value. The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable.
            ## @return a string
            ## 
            def reply_urls
                return @reply_urls
            end
            ## 
            ## Sets the replyUrls property value. The URLs that user tokens are sent to for sign in with the associated application, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to for the associated application. Not nullable.
            ## @param value Value to set for the reply_urls property.
            ## @return a void
            ## 
            def reply_urls=(value)
                @reply_urls = value
            end
            ## 
            ## Gets the resourceSpecificApplicationPermissions property value. The resource-specific application permissions exposed by this application. Currently, resource-specific permissions are only supported for Teams apps accessing to specific chats and teams using Microsoft Graph. Read-only.
            ## @return a resource_specific_permission
            ## 
            def resource_specific_application_permissions
                return @resource_specific_application_permissions
            end
            ## 
            ## Sets the resourceSpecificApplicationPermissions property value. The resource-specific application permissions exposed by this application. Currently, resource-specific permissions are only supported for Teams apps accessing to specific chats and teams using Microsoft Graph. Read-only.
            ## @param value Value to set for the resource_specific_application_permissions property.
            ## @return a void
            ## 
            def resource_specific_application_permissions=(value)
                @resource_specific_application_permissions = value
            end
            ## 
            ## Gets the samlSingleSignOnSettings property value. The collection for settings related to saml single sign-on.
            ## @return a saml_single_sign_on_settings
            ## 
            def saml_single_sign_on_settings
                return @saml_single_sign_on_settings
            end
            ## 
            ## Sets the samlSingleSignOnSettings property value. The collection for settings related to saml single sign-on.
            ## @param value Value to set for the saml_single_sign_on_settings property.
            ## @return a void
            ## 
            def saml_single_sign_on_settings=(value)
                @saml_single_sign_on_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("accountEnabled", @account_enabled)
                writer.write_collection_of_object_values("addIns", @add_ins)
                writer.write_collection_of_primitive_values("alternativeNames", @alternative_names)
                writer.write_string_value("appDescription", @app_description)
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appId", @app_id)
                writer.write_collection_of_object_values("appManagementPolicies", @app_management_policies)
                writer.write_guid_value("appOwnerOrganizationId", @app_owner_organization_id)
                writer.write_collection_of_object_values("appRoleAssignedTo", @app_role_assigned_to)
                writer.write_boolean_value("appRoleAssignmentRequired", @app_role_assignment_required)
                writer.write_collection_of_object_values("appRoleAssignments", @app_role_assignments)
                writer.write_collection_of_object_values("appRoles", @app_roles)
                writer.write_string_value("applicationTemplateId", @application_template_id)
                writer.write_collection_of_object_values("claimsMappingPolicies", @claims_mapping_policies)
                writer.write_collection_of_object_values("createdObjects", @created_objects)
                writer.write_collection_of_object_values("delegatedPermissionClassifications", @delegated_permission_classifications)
                writer.write_string_value("description", @description)
                writer.write_string_value("disabledByMicrosoftStatus", @disabled_by_microsoft_status)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("endpoints", @endpoints)
                writer.write_collection_of_object_values("federatedIdentityCredentials", @federated_identity_credentials)
                writer.write_collection_of_object_values("homeRealmDiscoveryPolicies", @home_realm_discovery_policies)
                writer.write_string_value("homepage", @homepage)
                writer.write_object_value("info", @info)
                writer.write_collection_of_object_values("keyCredentials", @key_credentials)
                writer.write_string_value("loginUrl", @login_url)
                writer.write_string_value("logoutUrl", @logout_url)
                writer.write_collection_of_object_values("memberOf", @member_of)
                writer.write_string_value("notes", @notes)
                writer.write_collection_of_primitive_values("notificationEmailAddresses", @notification_email_addresses)
                writer.write_collection_of_object_values("oauth2PermissionGrants", @oauth2_permission_grants)
                writer.write_collection_of_object_values("oauth2PermissionScopes", @oauth2_permission_scopes)
                writer.write_collection_of_object_values("ownedObjects", @owned_objects)
                writer.write_collection_of_object_values("owners", @owners)
                writer.write_collection_of_object_values("passwordCredentials", @password_credentials)
                writer.write_string_value("preferredSingleSignOnMode", @preferred_single_sign_on_mode)
                writer.write_string_value("preferredTokenSigningKeyThumbprint", @preferred_token_signing_key_thumbprint)
                writer.write_collection_of_primitive_values("replyUrls", @reply_urls)
                writer.write_collection_of_object_values("resourceSpecificApplicationPermissions", @resource_specific_application_permissions)
                writer.write_object_value("samlSingleSignOnSettings", @saml_single_sign_on_settings)
                writer.write_collection_of_primitive_values("servicePrincipalNames", @service_principal_names)
                writer.write_string_value("servicePrincipalType", @service_principal_type)
                writer.write_string_value("signInAudience", @sign_in_audience)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_guid_value("tokenEncryptionKeyId", @token_encryption_key_id)
                writer.write_collection_of_object_values("tokenIssuancePolicies", @token_issuance_policies)
                writer.write_collection_of_object_values("tokenLifetimePolicies", @token_lifetime_policies)
                writer.write_collection_of_object_values("transitiveMemberOf", @transitive_member_of)
                writer.write_object_value("verifiedPublisher", @verified_publisher)
            end
            ## 
            ## Gets the servicePrincipalNames property value. Contains the list of identifiersUris, copied over from the associated application. Additional values can be added to hybrid applications. These values can be used to identify the permissions exposed by this app within Azure AD. For example,Client apps can specify a resource URI which is based on the values of this property to acquire an access token, which is the URI returned in the 'aud' claim.The any operator is required for filter expressions on multi-valued properties. Not nullable.  Supports $filter (eq, not, ge, le, startsWith).
            ## @return a string
            ## 
            def service_principal_names
                return @service_principal_names
            end
            ## 
            ## Sets the servicePrincipalNames property value. Contains the list of identifiersUris, copied over from the associated application. Additional values can be added to hybrid applications. These values can be used to identify the permissions exposed by this app within Azure AD. For example,Client apps can specify a resource URI which is based on the values of this property to acquire an access token, which is the URI returned in the 'aud' claim.The any operator is required for filter expressions on multi-valued properties. Not nullable.  Supports $filter (eq, not, ge, le, startsWith).
            ## @param value Value to set for the service_principal_names property.
            ## @return a void
            ## 
            def service_principal_names=(value)
                @service_principal_names = value
            end
            ## 
            ## Gets the servicePrincipalType property value. Identifies whether the service principal represents an application, a managed identity, or a legacy application. This is set by Azure AD internally. The servicePrincipalType property can be set to three different values: __Application - A service principal that represents an application or service. The appId property identifies the associated app registration, and matches the appId of an application, possibly from a different tenant. If the associated app registration is missing, tokens are not issued for the service principal.__ManagedIdentity - A service principal that represents a managed identity. Service principals representing managed identities can be granted access and permissions, but cannot be updated or modified directly.__Legacy - A service principal that represents an app created before app registrations, or through legacy experiences. Legacy service principal can have credentials, service principal names, reply URLs, and other properties which are editable by an authorized user, but does not have an associated app registration. The appId value does not associate the service principal with an app registration. The service principal can only be used in the tenant where it was created.__SocialIdp - For internal use.
            ## @return a string
            ## 
            def service_principal_type
                return @service_principal_type
            end
            ## 
            ## Sets the servicePrincipalType property value. Identifies whether the service principal represents an application, a managed identity, or a legacy application. This is set by Azure AD internally. The servicePrincipalType property can be set to three different values: __Application - A service principal that represents an application or service. The appId property identifies the associated app registration, and matches the appId of an application, possibly from a different tenant. If the associated app registration is missing, tokens are not issued for the service principal.__ManagedIdentity - A service principal that represents a managed identity. Service principals representing managed identities can be granted access and permissions, but cannot be updated or modified directly.__Legacy - A service principal that represents an app created before app registrations, or through legacy experiences. Legacy service principal can have credentials, service principal names, reply URLs, and other properties which are editable by an authorized user, but does not have an associated app registration. The appId value does not associate the service principal with an app registration. The service principal can only be used in the tenant where it was created.__SocialIdp - For internal use.
            ## @param value Value to set for the service_principal_type property.
            ## @return a void
            ## 
            def service_principal_type=(value)
                @service_principal_type = value
            end
            ## 
            ## Gets the signInAudience property value. Specifies the Microsoft accounts that are supported for the current application. Read-only. Supported values are:AzureADMyOrg: Users with a Microsoft work or school account in my organization’s Azure AD tenant (single-tenant).AzureADMultipleOrgs: Users with a Microsoft work or school account in any organization’s Azure AD tenant (multi-tenant).AzureADandPersonalMicrosoftAccount: Users with a personal Microsoft account, or a work or school account in any organization’s Azure AD tenant.PersonalMicrosoftAccount: Users with a personal Microsoft account only.
            ## @return a string
            ## 
            def sign_in_audience
                return @sign_in_audience
            end
            ## 
            ## Sets the signInAudience property value. Specifies the Microsoft accounts that are supported for the current application. Read-only. Supported values are:AzureADMyOrg: Users with a Microsoft work or school account in my organization’s Azure AD tenant (single-tenant).AzureADMultipleOrgs: Users with a Microsoft work or school account in any organization’s Azure AD tenant (multi-tenant).AzureADandPersonalMicrosoftAccount: Users with a personal Microsoft account, or a work or school account in any organization’s Azure AD tenant.PersonalMicrosoftAccount: Users with a personal Microsoft account only.
            ## @param value Value to set for the sign_in_audience property.
            ## @return a void
            ## 
            def sign_in_audience=(value)
                @sign_in_audience = value
            end
            ## 
            ## Gets the tags property value. Custom strings that can be used to categorize and identify the service principal. Not nullable. Supports $filter (eq, not, ge, le, startsWith).
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Custom strings that can be used to categorize and identify the service principal. Not nullable. Supports $filter (eq, not, ge, le, startsWith).
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the tokenEncryptionKeyId property value. Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.
            ## @return a guid
            ## 
            def token_encryption_key_id
                return @token_encryption_key_id
            end
            ## 
            ## Sets the tokenEncryptionKeyId property value. Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD issues tokens for this application encrypted using the key specified by this property. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.
            ## @param value Value to set for the token_encryption_key_id property.
            ## @return a void
            ## 
            def token_encryption_key_id=(value)
                @token_encryption_key_id = value
            end
            ## 
            ## Gets the tokenIssuancePolicies property value. The tokenIssuancePolicies assigned to this service principal.
            ## @return a token_issuance_policy
            ## 
            def token_issuance_policies
                return @token_issuance_policies
            end
            ## 
            ## Sets the tokenIssuancePolicies property value. The tokenIssuancePolicies assigned to this service principal.
            ## @param value Value to set for the token_issuance_policies property.
            ## @return a void
            ## 
            def token_issuance_policies=(value)
                @token_issuance_policies = value
            end
            ## 
            ## Gets the tokenLifetimePolicies property value. The tokenLifetimePolicies assigned to this service principal.
            ## @return a token_lifetime_policy
            ## 
            def token_lifetime_policies
                return @token_lifetime_policies
            end
            ## 
            ## Sets the tokenLifetimePolicies property value. The tokenLifetimePolicies assigned to this service principal.
            ## @param value Value to set for the token_lifetime_policies property.
            ## @return a void
            ## 
            def token_lifetime_policies=(value)
                @token_lifetime_policies = value
            end
            ## 
            ## Gets the transitiveMemberOf property value. The transitiveMemberOf property
            ## @return a directory_object
            ## 
            def transitive_member_of
                return @transitive_member_of
            end
            ## 
            ## Sets the transitiveMemberOf property value. The transitiveMemberOf property
            ## @param value Value to set for the transitive_member_of property.
            ## @return a void
            ## 
            def transitive_member_of=(value)
                @transitive_member_of = value
            end
            ## 
            ## Gets the verifiedPublisher property value. Specifies the verified publisher of the application which this service principal represents.
            ## @return a verified_publisher
            ## 
            def verified_publisher
                return @verified_publisher
            end
            ## 
            ## Sets the verifiedPublisher property value. Specifies the verified publisher of the application which this service principal represents.
            ## @param value Value to set for the verified_publisher property.
            ## @return a void
            ## 
            def verified_publisher=(value)
                @verified_publisher = value
            end
        end
    end
end
