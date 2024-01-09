require 'microsoft_kiota_abstractions'
require 'microsoft_kiota_serialization_json'
require_relative './admin/admin_request_builder'
require_relative './agreement_acceptances/agreement_acceptances_request_builder'
require_relative './agreements/agreements_request_builder'
require_relative './app_catalogs/app_catalogs_request_builder'
require_relative './applications/applications_request_builder'
require_relative './applications_with_app_id/applications_with_app_id_request_builder'
require_relative './application_templates/application_templates_request_builder'
require_relative './audit_logs/audit_logs_request_builder'
require_relative './authentication_method_configurations/authentication_method_configurations_request_builder'
require_relative './authentication_methods_policy/authentication_methods_policy_request_builder'
require_relative './certificate_based_auth_configuration/certificate_based_auth_configuration_request_builder'
require_relative './chats/chats_request_builder'
require_relative './communications/communications_request_builder'
require_relative './compliance/compliance_request_builder'
require_relative './connections/connections_request_builder'
require_relative './contacts/contacts_request_builder'
require_relative './contracts/contracts_request_builder'
require_relative './data_policy_operations/data_policy_operations_request_builder'
require_relative './device_app_management/device_app_management_request_builder'
require_relative './device_management/device_management_request_builder'
require_relative './devices/devices_request_builder'
require_relative './devices_with_device_id/devices_with_device_id_request_builder'
require_relative './directory/directory_request_builder'
require_relative './directory_objects/directory_objects_request_builder'
require_relative './directory_roles/directory_roles_request_builder'
require_relative './directory_roles_with_role_template_id/directory_roles_with_role_template_id_request_builder'
require_relative './directory_role_templates/directory_role_templates_request_builder'
require_relative './domain_dns_records/domain_dns_records_request_builder'
require_relative './domains/domains_request_builder'
require_relative './drives/drives_request_builder'
require_relative './education/education_request_builder'
require_relative './employee_experience/employee_experience_request_builder'
require_relative './external/external_request_builder'
require_relative './filter_operators/filter_operators_request_builder'
require_relative './functions/functions_request_builder'
require_relative './group_lifecycle_policies/group_lifecycle_policies_request_builder'
require_relative './groups/groups_request_builder'
require_relative './group_settings/group_settings_request_builder'
require_relative './group_setting_templates/group_setting_templates_request_builder'
require_relative './identity/identity_request_builder'
require_relative './identity_governance/identity_governance_request_builder'
require_relative './identity_protection/identity_protection_request_builder'
require_relative './identity_providers/identity_providers_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './invitations/invitations_request_builder'
require_relative './microsoft_graph'
require_relative './oauth2_permission_grants/oauth2_permission_grants_request_builder'
require_relative './organization/organization_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './places/places_request_builder'
require_relative './planner/planner_request_builder'
require_relative './policies/policies_request_builder'
require_relative './print/print_request_builder'
require_relative './privacy/privacy_request_builder'
require_relative './reports/reports_request_builder'
require_relative './role_management/role_management_request_builder'
require_relative './schema_extensions/schema_extensions_request_builder'
require_relative './scoped_role_memberships/scoped_role_memberships_request_builder'
require_relative './search/search_request_builder'
require_relative './security/security_request_builder'
require_relative './service_principals/service_principals_request_builder'
require_relative './service_principals_with_app_id/service_principals_with_app_id_request_builder'
require_relative './shares/shares_request_builder'
require_relative './sites/sites_request_builder'
require_relative './solutions/solutions_request_builder'
require_relative './subscribed_skus/subscribed_skus_request_builder'
require_relative './subscriptions/subscriptions_request_builder'
require_relative './teams/teams_request_builder'
require_relative './teams_templates/teams_templates_request_builder'
require_relative './teamwork/teamwork_request_builder'
require_relative './tenant_relationships/tenant_relationships_request_builder'
require_relative './users/users_request_builder'

module MicrosoftGraph
    ## 
    # The main entry point of the SDK, exposes the configuration and the fluent API.
    class GraphBaseServiceClient < MicrosoftKiotaAbstractions::BaseRequestBuilder
        
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
        # Provides operations to manage the collection of filterOperatorSchema entities.
        def filter_operators()
            return MicrosoftGraph::FilterOperators::FilterOperatorsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of attributeMappingFunctionSchema entities.
        def functions()
            return MicrosoftGraph::Functions::FunctionsRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Provides operations to manage the collection of user entities.
        def users()
            return MicrosoftGraph::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of application entities.
        ## @param app_id Alternate key of application
        ## @return a applications_with_app_id_request_builder
        ## 
        def applications_with_app_id(app_id)
            raise StandardError, 'app_id cannot be null' if app_id.nil?
            return ApplicationsWithAppIdRequestBuilder.new(@path_parameters, @request_adapter, appId)
        end
        ## 
        ## Instantiates a new GraphBaseServiceClient and sets the default values.
        ## @param request_adapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(request_adapter)
            super(Hash.new, request_adapter, "{+baseurl}")
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_serializer(MicrosoftKiotaSerializationJson::JsonSerializationWriterFactory)
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_deserializer(MicrosoftKiotaSerializationJson::JsonParseNodeFactory)
            if @request_adapter.get_base_url.nil? || @request_adapter.get_base_url.empty?
                @request_adapter.set_base_url('https://graph.microsoft.com/v1.0')
            end
            @path_parameters['baseurl'] = @request_adapter.get_base_url
        end
        ## 
        ## Provides operations to manage the collection of device entities.
        ## @param device_id Alternate key of device
        ## @return a devices_with_device_id_request_builder
        ## 
        def devices_with_device_id(device_id)
            raise StandardError, 'device_id cannot be null' if device_id.nil?
            return DevicesWithDeviceIdRequestBuilder.new(@path_parameters, @request_adapter, deviceId)
        end
        ## 
        ## Provides operations to manage the collection of directoryRole entities.
        ## @param role_template_id Alternate key of directoryRole
        ## @return a directory_roles_with_role_template_id_request_builder
        ## 
        def directory_roles_with_role_template_id(role_template_id)
            raise StandardError, 'role_template_id cannot be null' if role_template_id.nil?
            return DirectoryRolesWithRoleTemplateIdRequestBuilder.new(@path_parameters, @request_adapter, roleTemplateId)
        end
        ## 
        ## Provides operations to manage the collection of servicePrincipal entities.
        ## @param app_id Alternate key of servicePrincipal
        ## @return a service_principals_with_app_id_request_builder
        ## 
        def service_principals_with_app_id(app_id)
            raise StandardError, 'app_id cannot be null' if app_id.nil?
            return ServicePrincipalsWithAppIdRequestBuilder.new(@path_parameters, @request_adapter, appId)
        end
    end
end
