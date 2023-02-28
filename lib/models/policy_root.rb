require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PolicyRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The policy that controls the idle time out for web sessions for applications.
            @activity_based_timeout_policies
            ## 
            # The policy by which consent requests are created and managed for the entire tenant.
            @admin_consent_request_policy
            ## 
            # The appManagementPolicies property
            @app_management_policies
            ## 
            # The policy configuration of the self-service sign-up experience of external users.
            @authentication_flows_policy
            ## 
            # The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).
            @authentication_methods_policy
            ## 
            # The policy that controls Azure AD authorization settings.
            @authorization_policy
            ## 
            # The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.
            @claims_mapping_policies
            ## 
            # The custom rules that define an access scenario.
            @conditional_access_policies
            ## 
            # The custom rules that define an access scenario when interacting with external Azure AD tenants.
            @cross_tenant_access_policy
            ## 
            # The defaultAppManagementPolicy property
            @default_app_management_policy
            ## 
            # The feature rollout policy associated with a directory object.
            @feature_rollout_policies
            ## 
            # The policy to control Azure AD authentication behavior for federated users.
            @home_realm_discovery_policies
            ## 
            # The policy that represents the security defaults that protect against common attacks.
            @identity_security_defaults_enforcement_policy
            ## 
            # The policy that specifies the conditions under which consent can be granted.
            @permission_grant_policies
            ## 
            # Specifies the various policies associated with scopes and roles.
            @role_management_policies
            ## 
            # The assignment of a role management policy to a role definition object.
            @role_management_policy_assignments
            ## 
            # The policy that specifies the characteristics of SAML tokens issued by Azure AD.
            @token_issuance_policies
            ## 
            # The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.
            @token_lifetime_policies
            ## 
            ## Gets the activityBasedTimeoutPolicies property value. The policy that controls the idle time out for web sessions for applications.
            ## @return a activity_based_timeout_policy
            ## 
            def activity_based_timeout_policies
                return @activity_based_timeout_policies
            end
            ## 
            ## Sets the activityBasedTimeoutPolicies property value. The policy that controls the idle time out for web sessions for applications.
            ## @param value Value to set for the activity_based_timeout_policies property.
            ## @return a void
            ## 
            def activity_based_timeout_policies=(value)
                @activity_based_timeout_policies = value
            end
            ## 
            ## Gets the adminConsentRequestPolicy property value. The policy by which consent requests are created and managed for the entire tenant.
            ## @return a admin_consent_request_policy
            ## 
            def admin_consent_request_policy
                return @admin_consent_request_policy
            end
            ## 
            ## Sets the adminConsentRequestPolicy property value. The policy by which consent requests are created and managed for the entire tenant.
            ## @param value Value to set for the admin_consent_request_policy property.
            ## @return a void
            ## 
            def admin_consent_request_policy=(value)
                @admin_consent_request_policy = value
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
            ## Gets the authenticationFlowsPolicy property value. The policy configuration of the self-service sign-up experience of external users.
            ## @return a authentication_flows_policy
            ## 
            def authentication_flows_policy
                return @authentication_flows_policy
            end
            ## 
            ## Sets the authenticationFlowsPolicy property value. The policy configuration of the self-service sign-up experience of external users.
            ## @param value Value to set for the authentication_flows_policy property.
            ## @return a void
            ## 
            def authentication_flows_policy=(value)
                @authentication_flows_policy = value
            end
            ## 
            ## Gets the authenticationMethodsPolicy property value. The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).
            ## @return a authentication_methods_policy
            ## 
            def authentication_methods_policy
                return @authentication_methods_policy
            end
            ## 
            ## Sets the authenticationMethodsPolicy property value. The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).
            ## @param value Value to set for the authentication_methods_policy property.
            ## @return a void
            ## 
            def authentication_methods_policy=(value)
                @authentication_methods_policy = value
            end
            ## 
            ## Gets the authorizationPolicy property value. The policy that controls Azure AD authorization settings.
            ## @return a authorization_policy
            ## 
            def authorization_policy
                return @authorization_policy
            end
            ## 
            ## Sets the authorizationPolicy property value. The policy that controls Azure AD authorization settings.
            ## @param value Value to set for the authorization_policy property.
            ## @return a void
            ## 
            def authorization_policy=(value)
                @authorization_policy = value
            end
            ## 
            ## Gets the claimsMappingPolicies property value. The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.
            ## @return a claims_mapping_policy
            ## 
            def claims_mapping_policies
                return @claims_mapping_policies
            end
            ## 
            ## Sets the claimsMappingPolicies property value. The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.
            ## @param value Value to set for the claims_mapping_policies property.
            ## @return a void
            ## 
            def claims_mapping_policies=(value)
                @claims_mapping_policies = value
            end
            ## 
            ## Gets the conditionalAccessPolicies property value. The custom rules that define an access scenario.
            ## @return a conditional_access_policy
            ## 
            def conditional_access_policies
                return @conditional_access_policies
            end
            ## 
            ## Sets the conditionalAccessPolicies property value. The custom rules that define an access scenario.
            ## @param value Value to set for the conditional_access_policies property.
            ## @return a void
            ## 
            def conditional_access_policies=(value)
                @conditional_access_policies = value
            end
            ## 
            ## Instantiates a new PolicyRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a policy_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PolicyRoot.new
            end
            ## 
            ## Gets the crossTenantAccessPolicy property value. The custom rules that define an access scenario when interacting with external Azure AD tenants.
            ## @return a cross_tenant_access_policy
            ## 
            def cross_tenant_access_policy
                return @cross_tenant_access_policy
            end
            ## 
            ## Sets the crossTenantAccessPolicy property value. The custom rules that define an access scenario when interacting with external Azure AD tenants.
            ## @param value Value to set for the cross_tenant_access_policy property.
            ## @return a void
            ## 
            def cross_tenant_access_policy=(value)
                @cross_tenant_access_policy = value
            end
            ## 
            ## Gets the defaultAppManagementPolicy property value. The defaultAppManagementPolicy property
            ## @return a tenant_app_management_policy
            ## 
            def default_app_management_policy
                return @default_app_management_policy
            end
            ## 
            ## Sets the defaultAppManagementPolicy property value. The defaultAppManagementPolicy property
            ## @param value Value to set for the default_app_management_policy property.
            ## @return a void
            ## 
            def default_app_management_policy=(value)
                @default_app_management_policy = value
            end
            ## 
            ## Gets the featureRolloutPolicies property value. The feature rollout policy associated with a directory object.
            ## @return a feature_rollout_policy
            ## 
            def feature_rollout_policies
                return @feature_rollout_policies
            end
            ## 
            ## Sets the featureRolloutPolicies property value. The feature rollout policy associated with a directory object.
            ## @param value Value to set for the feature_rollout_policies property.
            ## @return a void
            ## 
            def feature_rollout_policies=(value)
                @feature_rollout_policies = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activityBasedTimeoutPolicies" => lambda {|n| @activity_based_timeout_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ActivityBasedTimeoutPolicy.create_from_discriminator_value(pn) }) },
                    "adminConsentRequestPolicy" => lambda {|n| @admin_consent_request_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AdminConsentRequestPolicy.create_from_discriminator_value(pn) }) },
                    "appManagementPolicies" => lambda {|n| @app_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppManagementPolicy.create_from_discriminator_value(pn) }) },
                    "authenticationFlowsPolicy" => lambda {|n| @authentication_flows_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationFlowsPolicy.create_from_discriminator_value(pn) }) },
                    "authenticationMethodsPolicy" => lambda {|n| @authentication_methods_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodsPolicy.create_from_discriminator_value(pn) }) },
                    "authorizationPolicy" => lambda {|n| @authorization_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuthorizationPolicy.create_from_discriminator_value(pn) }) },
                    "claimsMappingPolicies" => lambda {|n| @claims_mapping_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ClaimsMappingPolicy.create_from_discriminator_value(pn) }) },
                    "conditionalAccessPolicies" => lambda {|n| @conditional_access_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                    "crossTenantAccessPolicy" => lambda {|n| @cross_tenant_access_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CrossTenantAccessPolicy.create_from_discriminator_value(pn) }) },
                    "defaultAppManagementPolicy" => lambda {|n| @default_app_management_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TenantAppManagementPolicy.create_from_discriminator_value(pn) }) },
                    "featureRolloutPolicies" => lambda {|n| @feature_rollout_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::FeatureRolloutPolicy.create_from_discriminator_value(pn) }) },
                    "homeRealmDiscoveryPolicies" => lambda {|n| @home_realm_discovery_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::HomeRealmDiscoveryPolicy.create_from_discriminator_value(pn) }) },
                    "identitySecurityDefaultsEnforcementPolicy" => lambda {|n| @identity_security_defaults_enforcement_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySecurityDefaultsEnforcementPolicy.create_from_discriminator_value(pn) }) },
                    "permissionGrantPolicies" => lambda {|n| @permission_grant_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PermissionGrantPolicy.create_from_discriminator_value(pn) }) },
                    "roleManagementPolicies" => lambda {|n| @role_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleManagementPolicy.create_from_discriminator_value(pn) }) },
                    "roleManagementPolicyAssignments" => lambda {|n| @role_management_policy_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedRoleManagementPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "tokenIssuancePolicies" => lambda {|n| @token_issuance_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TokenIssuancePolicy.create_from_discriminator_value(pn) }) },
                    "tokenLifetimePolicies" => lambda {|n| @token_lifetime_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TokenLifetimePolicy.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the homeRealmDiscoveryPolicies property value. The policy to control Azure AD authentication behavior for federated users.
            ## @return a home_realm_discovery_policy
            ## 
            def home_realm_discovery_policies
                return @home_realm_discovery_policies
            end
            ## 
            ## Sets the homeRealmDiscoveryPolicies property value. The policy to control Azure AD authentication behavior for federated users.
            ## @param value Value to set for the home_realm_discovery_policies property.
            ## @return a void
            ## 
            def home_realm_discovery_policies=(value)
                @home_realm_discovery_policies = value
            end
            ## 
            ## Gets the identitySecurityDefaultsEnforcementPolicy property value. The policy that represents the security defaults that protect against common attacks.
            ## @return a identity_security_defaults_enforcement_policy
            ## 
            def identity_security_defaults_enforcement_policy
                return @identity_security_defaults_enforcement_policy
            end
            ## 
            ## Sets the identitySecurityDefaultsEnforcementPolicy property value. The policy that represents the security defaults that protect against common attacks.
            ## @param value Value to set for the identity_security_defaults_enforcement_policy property.
            ## @return a void
            ## 
            def identity_security_defaults_enforcement_policy=(value)
                @identity_security_defaults_enforcement_policy = value
            end
            ## 
            ## Gets the permissionGrantPolicies property value. The policy that specifies the conditions under which consent can be granted.
            ## @return a permission_grant_policy
            ## 
            def permission_grant_policies
                return @permission_grant_policies
            end
            ## 
            ## Sets the permissionGrantPolicies property value. The policy that specifies the conditions under which consent can be granted.
            ## @param value Value to set for the permission_grant_policies property.
            ## @return a void
            ## 
            def permission_grant_policies=(value)
                @permission_grant_policies = value
            end
            ## 
            ## Gets the roleManagementPolicies property value. Specifies the various policies associated with scopes and roles.
            ## @return a unified_role_management_policy
            ## 
            def role_management_policies
                return @role_management_policies
            end
            ## 
            ## Sets the roleManagementPolicies property value. Specifies the various policies associated with scopes and roles.
            ## @param value Value to set for the role_management_policies property.
            ## @return a void
            ## 
            def role_management_policies=(value)
                @role_management_policies = value
            end
            ## 
            ## Gets the roleManagementPolicyAssignments property value. The assignment of a role management policy to a role definition object.
            ## @return a unified_role_management_policy_assignment
            ## 
            def role_management_policy_assignments
                return @role_management_policy_assignments
            end
            ## 
            ## Sets the roleManagementPolicyAssignments property value. The assignment of a role management policy to a role definition object.
            ## @param value Value to set for the role_management_policy_assignments property.
            ## @return a void
            ## 
            def role_management_policy_assignments=(value)
                @role_management_policy_assignments = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("activityBasedTimeoutPolicies", @activity_based_timeout_policies)
                writer.write_object_value("adminConsentRequestPolicy", @admin_consent_request_policy)
                writer.write_collection_of_object_values("appManagementPolicies", @app_management_policies)
                writer.write_object_value("authenticationFlowsPolicy", @authentication_flows_policy)
                writer.write_object_value("authenticationMethodsPolicy", @authentication_methods_policy)
                writer.write_object_value("authorizationPolicy", @authorization_policy)
                writer.write_collection_of_object_values("claimsMappingPolicies", @claims_mapping_policies)
                writer.write_collection_of_object_values("conditionalAccessPolicies", @conditional_access_policies)
                writer.write_object_value("crossTenantAccessPolicy", @cross_tenant_access_policy)
                writer.write_object_value("defaultAppManagementPolicy", @default_app_management_policy)
                writer.write_collection_of_object_values("featureRolloutPolicies", @feature_rollout_policies)
                writer.write_collection_of_object_values("homeRealmDiscoveryPolicies", @home_realm_discovery_policies)
                writer.write_object_value("identitySecurityDefaultsEnforcementPolicy", @identity_security_defaults_enforcement_policy)
                writer.write_collection_of_object_values("permissionGrantPolicies", @permission_grant_policies)
                writer.write_collection_of_object_values("roleManagementPolicies", @role_management_policies)
                writer.write_collection_of_object_values("roleManagementPolicyAssignments", @role_management_policy_assignments)
                writer.write_collection_of_object_values("tokenIssuancePolicies", @token_issuance_policies)
                writer.write_collection_of_object_values("tokenLifetimePolicies", @token_lifetime_policies)
            end
            ## 
            ## Gets the tokenIssuancePolicies property value. The policy that specifies the characteristics of SAML tokens issued by Azure AD.
            ## @return a token_issuance_policy
            ## 
            def token_issuance_policies
                return @token_issuance_policies
            end
            ## 
            ## Sets the tokenIssuancePolicies property value. The policy that specifies the characteristics of SAML tokens issued by Azure AD.
            ## @param value Value to set for the token_issuance_policies property.
            ## @return a void
            ## 
            def token_issuance_policies=(value)
                @token_issuance_policies = value
            end
            ## 
            ## Gets the tokenLifetimePolicies property value. The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.
            ## @return a token_lifetime_policy
            ## 
            def token_lifetime_policies
                return @token_lifetime_policies
            end
            ## 
            ## Sets the tokenLifetimePolicies property value. The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.
            ## @param value Value to set for the token_lifetime_policies property.
            ## @return a void
            ## 
            def token_lifetime_policies=(value)
                @token_lifetime_policies = value
            end
        end
    end
end
