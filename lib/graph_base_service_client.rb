require 'microsoft_kiota_abstractions'
require 'microsoft_kiota_serialization_json'
require_relative './admin/admin_request_builder'
require_relative './agreement_acceptances/agreement_acceptances_request_builder'
require_relative './agreement_acceptances/item/agreement_acceptance_item_request_builder'
require_relative './agreements/agreements_request_builder'
require_relative './agreements/item/agreement_item_request_builder'
require_relative './app_catalogs/app_catalogs_request_builder'
require_relative './applications/applications_request_builder'
require_relative './applications/item/application_item_request_builder'
require_relative './application_templates/application_templates_request_builder'
require_relative './application_templates/item/application_template_item_request_builder'
require_relative './audit_logs/audit_logs_request_builder'
require_relative './authentication_method_configurations/authentication_method_configurations_request_builder'
require_relative './authentication_method_configurations/item/authentication_method_configuration_item_request_builder'
require_relative './authentication_methods_policy/authentication_methods_policy_request_builder'
require_relative './branding/branding_request_builder'
require_relative './certificate_based_auth_configuration/certificate_based_auth_configuration_request_builder'
require_relative './certificate_based_auth_configuration/item/certificate_based_auth_configuration_item_request_builder'
require_relative './chats/chats_request_builder'
require_relative './chats/item/chat_item_request_builder'
require_relative './communications/communications_request_builder'
require_relative './compliance/compliance_request_builder'
require_relative './connections/connections_request_builder'
require_relative './connections/item/external_connection_item_request_builder'
require_relative './contacts/contacts_request_builder'
require_relative './contacts/item/org_contact_item_request_builder'
require_relative './contracts/contracts_request_builder'
require_relative './contracts/item/contract_item_request_builder'
require_relative './data_policy_operations/data_policy_operations_request_builder'
require_relative './data_policy_operations/item/data_policy_operation_item_request_builder'
require_relative './device_app_management/device_app_management_request_builder'
require_relative './device_management/device_management_request_builder'
require_relative './devices/devices_request_builder'
require_relative './devices/item/device_item_request_builder'
require_relative './directory/directory_request_builder'
require_relative './directory_objects/directory_objects_request_builder'
require_relative './directory_objects/item/directory_object_item_request_builder'
require_relative './directory_roles/directory_roles_request_builder'
require_relative './directory_roles/item/directory_role_item_request_builder'
require_relative './directory_role_templates/directory_role_templates_request_builder'
require_relative './directory_role_templates/item/directory_role_template_item_request_builder'
require_relative './domain_dns_records/domain_dns_records_request_builder'
require_relative './domain_dns_records/item/domain_dns_record_item_request_builder'
require_relative './domains/domains_request_builder'
require_relative './domains/item/domain_item_request_builder'
require_relative './drives/drives_request_builder'
require_relative './drives/item/drive_item_request_builder'
require_relative './education/education_request_builder'
require_relative './employee_experience/employee_experience_request_builder'
require_relative './external/external_request_builder'
require_relative './group_lifecycle_policies/group_lifecycle_policies_request_builder'
require_relative './group_lifecycle_policies/item/group_lifecycle_policy_item_request_builder'
require_relative './groups/groups_request_builder'
require_relative './groups/item/group_item_request_builder'
require_relative './group_settings/group_settings_request_builder'
require_relative './group_settings/item/group_setting_item_request_builder'
require_relative './group_setting_templates/group_setting_templates_request_builder'
require_relative './group_setting_templates/item/group_setting_template_item_request_builder'
require_relative './identity/identity_request_builder'
require_relative './identity_governance/identity_governance_request_builder'
require_relative './identity_protection/identity_protection_request_builder'
require_relative './identity_providers/identity_providers_request_builder'
require_relative './identity_providers/item/identity_provider_item_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './invitations/invitations_request_builder'
require_relative './invitations/item/invitation_item_request_builder'
require_relative './localizations/item/organizational_branding_localization_item_request_builder'
require_relative './localizations/localizations_request_builder'
require_relative './me/me_request_builder'
require_relative './microsoft_graph'
require_relative './oauth2_permission_grants/item/o_auth2_permission_grant_item_request_builder'
require_relative './oauth2_permission_grants/oauth2_permission_grants_request_builder'
require_relative './organization/item/organization_item_request_builder'
require_relative './organization/organization_request_builder'
require_relative './permission_grants/item/resource_specific_permission_grant_item_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './places/item/place_item_request_builder'
require_relative './places/places_request_builder'
require_relative './planner/planner_request_builder'
require_relative './policies/policies_request_builder'
require_relative './print/print_request_builder'
require_relative './privacy/privacy_request_builder'
require_relative './reports/reports_request_builder'
require_relative './role_management/role_management_request_builder'
require_relative './schema_extensions/item/schema_extension_item_request_builder'
require_relative './schema_extensions/schema_extensions_request_builder'
require_relative './scoped_role_memberships/item/scoped_role_membership_item_request_builder'
require_relative './scoped_role_memberships/scoped_role_memberships_request_builder'
require_relative './search/search_request_builder'
require_relative './security/security_request_builder'
require_relative './service_principals/item/service_principal_item_request_builder'
require_relative './service_principals/service_principals_request_builder'
require_relative './shares/item/shared_drive_item_item_request_builder'
require_relative './shares/shares_request_builder'
require_relative './sites/item/site_item_request_builder'
require_relative './sites/sites_request_builder'
require_relative './solutions/solutions_request_builder'
require_relative './subscribed_skus/item/subscribed_sku_item_request_builder'
require_relative './subscribed_skus/subscribed_skus_request_builder'
require_relative './subscriptions/item/subscription_item_request_builder'
require_relative './subscriptions/subscriptions_request_builder'
require_relative './teams/item/team_item_request_builder'
require_relative './teams/teams_request_builder'
require_relative './teams_templates/item/teams_template_item_request_builder'
require_relative './teams_templates/teams_templates_request_builder'
require_relative './teamwork/teamwork_request_builder'
require_relative './tenant_relationships/tenant_relationships_request_builder'
require_relative './users/item/user_item_request_builder'
require_relative './users/users_request_builder'

module MicrosoftGraph
    ## 
    # The main entry point of the SDK, exposes the configuration and the fluent API.
    class GraphBaseServiceClient
        
        ## 
        # Provides operations to manage the admin singleton.
        def admin()
            return MicrosoftGraph::Admin::AdminRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of agreementAcceptance entities.
        def agreement_acceptances()
            return MicrosoftGraph::AgreementAcceptances::AgreementAcceptancesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of agreement entities.
        def agreements()
            return MicrosoftGraph::Agreements::AgreementsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the appCatalogs singleton.
        def app_catalogs()
            return MicrosoftGraph::AppCatalogs::AppCatalogsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of application entities.
        def applications()
            return MicrosoftGraph::Applications::ApplicationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of applicationTemplate entities.
        def application_templates()
            return MicrosoftGraph::ApplicationTemplates::ApplicationTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the auditLogRoot singleton.
        def audit_logs()
            return MicrosoftGraph::AuditLogs::AuditLogsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of authenticationMethodConfiguration entities.
        def authentication_method_configurations()
            return MicrosoftGraph::AuthenticationMethodConfigurations::AuthenticationMethodConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the authenticationMethodsPolicy singleton.
        def authentication_methods_policy()
            return MicrosoftGraph::AuthenticationMethodsPolicy::AuthenticationMethodsPolicyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the organizationalBranding singleton.
        def branding()
            return MicrosoftGraph::Branding::BrandingRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of certificateBasedAuthConfiguration entities.
        def certificate_based_auth_configuration()
            return MicrosoftGraph::CertificateBasedAuthConfiguration::CertificateBasedAuthConfigurationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of chat entities.
        def chats()
            return MicrosoftGraph::Chats::ChatsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the cloudCommunications singleton.
        def communications()
            return MicrosoftGraph::Communications::CommunicationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the compliance singleton.
        def compliance()
            return MicrosoftGraph::Compliance::ComplianceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of externalConnection entities.
        def connections()
            return MicrosoftGraph::Connections::ConnectionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of orgContact entities.
        def contacts()
            return MicrosoftGraph::Contacts::ContactsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of contract entities.
        def contracts()
            return MicrosoftGraph::Contracts::ContractsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of dataPolicyOperation entities.
        def data_policy_operations()
            return MicrosoftGraph::DataPolicyOperations::DataPolicyOperationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceAppManagement singleton.
        def device_app_management()
            return MicrosoftGraph::DeviceAppManagement::DeviceAppManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceManagement singleton.
        def device_management()
            return MicrosoftGraph::DeviceManagement::DeviceManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of device entities.
        def devices()
            return MicrosoftGraph::Devices::DevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the directory singleton.
        def directory()
            return MicrosoftGraph::Directory::DirectoryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directoryObject entities.
        def directory_objects()
            return MicrosoftGraph::DirectoryObjects::DirectoryObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directoryRole entities.
        def directory_roles()
            return MicrosoftGraph::DirectoryRoles::DirectoryRolesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directoryRoleTemplate entities.
        def directory_role_templates()
            return MicrosoftGraph::DirectoryRoleTemplates::DirectoryRoleTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of domainDnsRecord entities.
        def domain_dns_records()
            return MicrosoftGraph::DomainDnsRecords::DomainDnsRecordsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of domain entities.
        def domains()
            return MicrosoftGraph::Domains::DomainsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of drive entities.
        def drives()
            return MicrosoftGraph::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the educationRoot singleton.
        def education()
            return MicrosoftGraph::Education::EducationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the employeeExperience singleton.
        def employee_experience()
            return MicrosoftGraph::EmployeeExperience::EmployeeExperienceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the external singleton.
        def external()
            return MicrosoftGraph::External::ExternalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of groupLifecyclePolicy entities.
        def group_lifecycle_policies()
            return MicrosoftGraph::GroupLifecyclePolicies::GroupLifecyclePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of group entities.
        def groups()
            return MicrosoftGraph::Groups::GroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of groupSetting entities.
        def group_settings()
            return MicrosoftGraph::GroupSettings::GroupSettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of groupSettingTemplate entities.
        def group_setting_templates()
            return MicrosoftGraph::GroupSettingTemplates::GroupSettingTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the identityContainer singleton.
        def identity()
            return MicrosoftGraph::Identity::IdentityRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the identityGovernance singleton.
        def identity_governance()
            return MicrosoftGraph::IdentityGovernance::IdentityGovernanceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the identityProtectionRoot singleton.
        def identity_protection()
            return MicrosoftGraph::IdentityProtection::IdentityProtectionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of identityProvider entities.
        def identity_providers()
            return MicrosoftGraph::IdentityProviders::IdentityProvidersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the informationProtection singleton.
        def information_protection()
            return MicrosoftGraph::InformationProtection::InformationProtectionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of invitation entities.
        def invitations()
            return MicrosoftGraph::Invitations::InvitationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of organizationalBrandingLocalization entities.
        def localizations()
            return MicrosoftGraph::Localizations::LocalizationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the user singleton.
        def me()
            return MicrosoftGraph::Me::MeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of oAuth2PermissionGrant entities.
        def oauth2_permission_grants()
            return MicrosoftGraph::Oauth2PermissionGrants::Oauth2PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of organization entities.
        def organization()
            return MicrosoftGraph::Organization::OrganizationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of resourceSpecificPermissionGrant entities.
        def permission_grants()
            return MicrosoftGraph::PermissionGrants::PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The places property
        def places()
            return MicrosoftGraph::Places::PlacesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the planner singleton.
        def planner()
            return MicrosoftGraph::Planner::PlannerRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the policyRoot singleton.
        def policies()
            return MicrosoftGraph::Policies::PoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the print singleton.
        def print()
            return MicrosoftGraph::Print::PrintRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the privacy singleton.
        def privacy()
            return MicrosoftGraph::Privacy::PrivacyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the reportRoot singleton.
        def reports()
            return MicrosoftGraph::Reports::ReportsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the roleManagement singleton.
        def role_management()
            return MicrosoftGraph::RoleManagement::RoleManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of schemaExtension entities.
        def schema_extensions()
            return MicrosoftGraph::SchemaExtensions::SchemaExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of scopedRoleMembership entities.
        def scoped_role_memberships()
            return MicrosoftGraph::ScopedRoleMemberships::ScopedRoleMembershipsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the searchEntity singleton.
        def search()
            return MicrosoftGraph::Search::SearchRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the security singleton.
        def security()
            return MicrosoftGraph::Security::SecurityRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of servicePrincipal entities.
        def service_principals()
            return MicrosoftGraph::ServicePrincipals::ServicePrincipalsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of sharedDriveItem entities.
        def shares()
            return MicrosoftGraph::Shares::SharesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of site entities.
        def sites()
            return MicrosoftGraph::Sites::SitesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the solutionsRoot singleton.
        def solutions()
            return MicrosoftGraph::Solutions::SolutionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of subscribedSku entities.
        def subscribed_skus()
            return MicrosoftGraph::SubscribedSkus::SubscribedSkusRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of subscription entities.
        def subscriptions()
            return MicrosoftGraph::Subscriptions::SubscriptionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of team entities.
        def teams()
            return MicrosoftGraph::Teams::TeamsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of teamsTemplate entities.
        def teams_templates()
            return MicrosoftGraph::TeamsTemplates::TeamsTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the teamwork singleton.
        def teamwork()
            return MicrosoftGraph::Teamwork::TeamworkRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the tenantRelationship singleton.
        def tenant_relationships()
            return MicrosoftGraph::TenantRelationships::TenantRelationshipsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the collection of user entities.
        def users()
            return MicrosoftGraph::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of agreementAcceptance entities.
        ## @param id Unique identifier of the item
        ## @return a agreement_acceptance_item_request_builder
        ## 
        def agreement_acceptances_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["agreementAcceptance%2Did"] = id
            return MicrosoftGraph::AgreementAcceptances::Item::AgreementAcceptanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of agreement entities.
        ## @param id Unique identifier of the item
        ## @return a agreement_item_request_builder
        ## 
        def agreements_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["agreement%2Did"] = id
            return MicrosoftGraph::Agreements::Item::AgreementItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of application entities.
        ## @param id Unique identifier of the item
        ## @return a application_item_request_builder
        ## 
        def applications_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["application%2Did"] = id
            return MicrosoftGraph::Applications::Item::ApplicationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of applicationTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a application_template_item_request_builder
        ## 
        def application_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["applicationTemplate%2Did"] = id
            return MicrosoftGraph::ApplicationTemplates::Item::ApplicationTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of authenticationMethodConfiguration entities.
        ## @param id Unique identifier of the item
        ## @return a authentication_method_configuration_item_request_builder
        ## 
        def authentication_method_configurations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["authenticationMethodConfiguration%2Did"] = id
            return MicrosoftGraph::AuthenticationMethodConfigurations::Item::AuthenticationMethodConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of certificateBasedAuthConfiguration entities.
        ## @param id Unique identifier of the item
        ## @return a certificate_based_auth_configuration_item_request_builder
        ## 
        def certificate_based_auth_configuration_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["certificateBasedAuthConfiguration%2Did"] = id
            return MicrosoftGraph::CertificateBasedAuthConfiguration::Item::CertificateBasedAuthConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of chat entities.
        ## @param id Unique identifier of the item
        ## @return a chat_item_request_builder
        ## 
        def chats_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["chat%2Did"] = id
            return MicrosoftGraph::Chats::Item::ChatItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of externalConnection entities.
        ## @param id Unique identifier of the item
        ## @return a external_connection_item_request_builder
        ## 
        def connections_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["externalConnection%2Did"] = id
            return MicrosoftGraph::Connections::Item::ExternalConnectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new GraphBaseServiceClient and sets the default values.
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(request_adapter)
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @path_parameters = Hash.new
            @url_template = "{+baseurl}"
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_serializer(MicrosoftKiotaSerializationJson::JsonSerializationWriterFactory)
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_deserializer(MicrosoftKiotaSerializationJson::JsonParseNodeFactory)
            @request_adapter = request_adapter
            if @request_adapter.get_base_url.nil? || @request_adapter.get_base_url.empty?
                @request_adapter.set_base_url('https://graph.microsoft.com/v1.0')
            end
            @path_parameters['baseurl'] = @request_adapter.get_base_url
        end
        ## 
        ## Provides operations to manage the collection of orgContact entities.
        ## @param id Unique identifier of the item
        ## @return a org_contact_item_request_builder
        ## 
        def contacts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["orgContact%2Did"] = id
            return MicrosoftGraph::Contacts::Item::OrgContactItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of contract entities.
        ## @param id Unique identifier of the item
        ## @return a contract_item_request_builder
        ## 
        def contracts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["contract%2Did"] = id
            return MicrosoftGraph::Contracts::Item::ContractItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of dataPolicyOperation entities.
        ## @param id Unique identifier of the item
        ## @return a data_policy_operation_item_request_builder
        ## 
        def data_policy_operations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["dataPolicyOperation%2Did"] = id
            return MicrosoftGraph::DataPolicyOperations::Item::DataPolicyOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of device entities.
        ## @param id Unique identifier of the item
        ## @return a device_item_request_builder
        ## 
        def devices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["device%2Did"] = id
            return MicrosoftGraph::Devices::Item::DeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directoryObject entities.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def directory_objects_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraph::DirectoryObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directoryRole entities.
        ## @param id Unique identifier of the item
        ## @return a directory_role_item_request_builder
        ## 
        def directory_roles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryRole%2Did"] = id
            return MicrosoftGraph::DirectoryRoles::Item::DirectoryRoleItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directoryRoleTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a directory_role_template_item_request_builder
        ## 
        def directory_role_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryRoleTemplate%2Did"] = id
            return MicrosoftGraph::DirectoryRoleTemplates::Item::DirectoryRoleTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of domainDnsRecord entities.
        ## @param id Unique identifier of the item
        ## @return a domain_dns_record_item_request_builder
        ## 
        def domain_dns_records_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["domainDnsRecord%2Did"] = id
            return MicrosoftGraph::DomainDnsRecords::Item::DomainDnsRecordItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of domain entities.
        ## @param id Unique identifier of the item
        ## @return a domain_item_request_builder
        ## 
        def domains_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["domain%2Did"] = id
            return MicrosoftGraph::Domains::Item::DomainItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of drive entities.
        ## @param id Unique identifier of the item
        ## @return a drive_item_request_builder
        ## 
        def drives_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["drive%2Did"] = id
            return MicrosoftGraph::Drives::Item::DriveItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of groupLifecyclePolicy entities.
        ## @param id Unique identifier of the item
        ## @return a group_lifecycle_policy_item_request_builder
        ## 
        def group_lifecycle_policies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["groupLifecyclePolicy%2Did"] = id
            return MicrosoftGraph::GroupLifecyclePolicies::Item::GroupLifecyclePolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of group entities.
        ## @param id Unique identifier of the item
        ## @return a group_item_request_builder
        ## 
        def groups_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["group%2Did"] = id
            return MicrosoftGraph::Groups::Item::GroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of groupSetting entities.
        ## @param id Unique identifier of the item
        ## @return a group_setting_item_request_builder
        ## 
        def group_settings_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["groupSetting%2Did"] = id
            return MicrosoftGraph::GroupSettings::Item::GroupSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of groupSettingTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a group_setting_template_item_request_builder
        ## 
        def group_setting_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["groupSettingTemplate%2Did"] = id
            return MicrosoftGraph::GroupSettingTemplates::Item::GroupSettingTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of identityProvider entities.
        ## @param id Unique identifier of the item
        ## @return a identity_provider_item_request_builder
        ## 
        def identity_providers_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["identityProvider%2Did"] = id
            return MicrosoftGraph::IdentityProviders::Item::IdentityProviderItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of invitation entities.
        ## @param id Unique identifier of the item
        ## @return a invitation_item_request_builder
        ## 
        def invitations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["invitation%2Did"] = id
            return MicrosoftGraph::Invitations::Item::InvitationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of organizationalBrandingLocalization entities.
        ## @param id Unique identifier of the item
        ## @return a organizational_branding_localization_item_request_builder
        ## 
        def localizations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["organizationalBrandingLocalization%2Did"] = id
            return MicrosoftGraph::Localizations::Item::OrganizationalBrandingLocalizationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of oAuth2PermissionGrant entities.
        ## @param id Unique identifier of the item
        ## @return a o_auth2_permission_grant_item_request_builder
        ## 
        def oauth2_permission_grants_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["oAuth2PermissionGrant%2Did"] = id
            return MicrosoftGraph::Oauth2PermissionGrants::Item::OAuth2PermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of organization entities.
        ## @param id Unique identifier of the item
        ## @return a organization_item_request_builder
        ## 
        def organization_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["organization%2Did"] = id
            return MicrosoftGraph::Organization::Item::OrganizationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of resourceSpecificPermissionGrant entities.
        ## @param id Unique identifier of the item
        ## @return a resource_specific_permission_grant_item_request_builder
        ## 
        def permission_grants_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["resourceSpecificPermissionGrant%2Did"] = id
            return MicrosoftGraph::PermissionGrants::Item::ResourceSpecificPermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of place entities.
        ## @param id Unique identifier of the item
        ## @return a place_item_request_builder
        ## 
        def places_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["place%2Did"] = id
            return MicrosoftGraph::Places::Item::PlaceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of schemaExtension entities.
        ## @param id Unique identifier of the item
        ## @return a schema_extension_item_request_builder
        ## 
        def schema_extensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["schemaExtension%2Did"] = id
            return MicrosoftGraph::SchemaExtensions::Item::SchemaExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of scopedRoleMembership entities.
        ## @param id Unique identifier of the item
        ## @return a scoped_role_membership_item_request_builder
        ## 
        def scoped_role_memberships_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["scopedRoleMembership%2Did"] = id
            return MicrosoftGraph::ScopedRoleMemberships::Item::ScopedRoleMembershipItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of servicePrincipal entities.
        ## @param id Unique identifier of the item
        ## @return a service_principal_item_request_builder
        ## 
        def service_principals_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["servicePrincipal%2Did"] = id
            return MicrosoftGraph::ServicePrincipals::Item::ServicePrincipalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of sharedDriveItem entities.
        ## @param id Unique identifier of the item
        ## @return a shared_drive_item_item_request_builder
        ## 
        def shares_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["sharedDriveItem%2Did"] = id
            return MicrosoftGraph::Shares::Item::SharedDriveItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of site entities.
        ## @param id Unique identifier of the item
        ## @return a site_item_request_builder
        ## 
        def sites_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["site%2Did"] = id
            return MicrosoftGraph::Sites::Item::SiteItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of subscribedSku entities.
        ## @param id Unique identifier of the item
        ## @return a subscribed_sku_item_request_builder
        ## 
        def subscribed_skus_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["subscribedSku%2Did"] = id
            return MicrosoftGraph::SubscribedSkus::Item::SubscribedSkuItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of subscription entities.
        ## @param id Unique identifier of the item
        ## @return a subscription_item_request_builder
        ## 
        def subscriptions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["subscription%2Did"] = id
            return MicrosoftGraph::Subscriptions::Item::SubscriptionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of team entities.
        ## @param id Unique identifier of the item
        ## @return a team_item_request_builder
        ## 
        def teams_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["team%2Did"] = id
            return MicrosoftGraph::Teams::Item::TeamItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of teamsTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a teams_template_item_request_builder
        ## 
        def teams_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["teamsTemplate%2Did"] = id
            return MicrosoftGraph::TeamsTemplates::Item::TeamsTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of user entities.
        ## @param id Unique identifier of the item
        ## @return a user_item_request_builder
        ## 
        def users_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["user%2Did"] = id
            return MicrosoftGraph::Users::Item::UserItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
    end
end
