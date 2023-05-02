require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/device_management'
require_relative '../models/o_data_errors/o_data_error'
require_relative './apple_push_notification_certificate/apple_push_notification_certificate_request_builder'
require_relative './audit_events/audit_events_request_builder'
require_relative './compliance_management_partners/compliance_management_partners_request_builder'
require_relative './conditional_access_settings/conditional_access_settings_request_builder'
require_relative './detected_apps/detected_apps_request_builder'
require_relative './device_categories/device_categories_request_builder'
require_relative './device_compliance_policies/device_compliance_policies_request_builder'
require_relative './device_compliance_policy_device_state_summary/device_compliance_policy_device_state_summary_request_builder'
require_relative './device_compliance_policy_setting_state_summaries/device_compliance_policy_setting_state_summaries_request_builder'
require_relative './device_configuration_device_state_summaries/device_configuration_device_state_summaries_request_builder'
require_relative './device_configurations/device_configurations_request_builder'
require_relative './device_enrollment_configurations/device_enrollment_configurations_request_builder'
require_relative './device_management_partners/device_management_partners_request_builder'
require_relative './device_management'
require_relative './exchange_connectors/exchange_connectors_request_builder'
require_relative './get_effective_permissions_with_scope/get_effective_permissions_with_scope_request_builder'
require_relative './imported_windows_autopilot_device_identities/imported_windows_autopilot_device_identities_request_builder'
require_relative './ios_update_statuses/ios_update_statuses_request_builder'
require_relative './managed_device_overview/managed_device_overview_request_builder'
require_relative './managed_devices/managed_devices_request_builder'
require_relative './mobile_threat_defense_connectors/mobile_threat_defense_connectors_request_builder'
require_relative './notification_message_templates/notification_message_templates_request_builder'
require_relative './remote_assistance_partners/remote_assistance_partners_request_builder'
require_relative './reports/reports_request_builder'
require_relative './resource_operations/resource_operations_request_builder'
require_relative './role_assignments/role_assignments_request_builder'
require_relative './role_definitions/role_definitions_request_builder'
require_relative './software_update_status_summary/software_update_status_summary_request_builder'
require_relative './telecom_expense_management_partners/telecom_expense_management_partners_request_builder'
require_relative './terms_and_conditions/terms_and_conditions_request_builder'
require_relative './troubleshooting_events/troubleshooting_events_request_builder'
require_relative './verify_windows_enrollment_auto_discovery_with_domain_name/verify_windows_enrollment_auto_discovery_with_domain_name_request_builder'
require_relative './windows_autopilot_device_identities/windows_autopilot_device_identities_request_builder'
require_relative './windows_information_protection_app_learning_summaries/windows_information_protection_app_learning_summaries_request_builder'
require_relative './windows_information_protection_network_learning_summaries/windows_information_protection_network_learning_summaries_request_builder'

module MicrosoftGraph
    module DeviceManagement
        ## 
        # Provides operations to manage the deviceManagement singleton.
        class DeviceManagementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the applePushNotificationCertificate property of the microsoft.graph.deviceManagement entity.
            def apple_push_notification_certificate()
                return MicrosoftGraph::DeviceManagement::ApplePushNotificationCertificate::ApplePushNotificationCertificateRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the auditEvents property of the microsoft.graph.deviceManagement entity.
            def audit_events()
                return MicrosoftGraph::DeviceManagement::AuditEvents::AuditEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the complianceManagementPartners property of the microsoft.graph.deviceManagement entity.
            def compliance_management_partners()
                return MicrosoftGraph::DeviceManagement::ComplianceManagementPartners::ComplianceManagementPartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the conditionalAccessSettings property of the microsoft.graph.deviceManagement entity.
            def conditional_access_settings()
                return MicrosoftGraph::DeviceManagement::ConditionalAccessSettings::ConditionalAccessSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the detectedApps property of the microsoft.graph.deviceManagement entity.
            def detected_apps()
                return MicrosoftGraph::DeviceManagement::DetectedApps::DetectedAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCategories property of the microsoft.graph.deviceManagement entity.
            def device_categories()
                return MicrosoftGraph::DeviceManagement::DeviceCategories::DeviceCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCompliancePolicies property of the microsoft.graph.deviceManagement entity.
            def device_compliance_policies()
                return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::DeviceCompliancePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCompliancePolicyDeviceStateSummary property of the microsoft.graph.deviceManagement entity.
            def device_compliance_policy_device_state_summary()
                return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicyDeviceStateSummary::DeviceCompliancePolicyDeviceStateSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCompliancePolicySettingStateSummaries property of the microsoft.graph.deviceManagement entity.
            def device_compliance_policy_setting_state_summaries()
                return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicySettingStateSummaries::DeviceCompliancePolicySettingStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurationDeviceStateSummaries property of the microsoft.graph.deviceManagement entity.
            def device_configuration_device_state_summaries()
                return MicrosoftGraph::DeviceManagement::DeviceConfigurationDeviceStateSummaries::DeviceConfigurationDeviceStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurations property of the microsoft.graph.deviceManagement entity.
            def device_configurations()
                return MicrosoftGraph::DeviceManagement::DeviceConfigurations::DeviceConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceEnrollmentConfigurations property of the microsoft.graph.deviceManagement entity.
            def device_enrollment_configurations()
                return MicrosoftGraph::DeviceManagement::DeviceEnrollmentConfigurations::DeviceEnrollmentConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceManagementPartners property of the microsoft.graph.deviceManagement entity.
            def device_management_partners()
                return MicrosoftGraph::DeviceManagement::DeviceManagementPartners::DeviceManagementPartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the exchangeConnectors property of the microsoft.graph.deviceManagement entity.
            def exchange_connectors()
                return MicrosoftGraph::DeviceManagement::ExchangeConnectors::ExchangeConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the importedWindowsAutopilotDeviceIdentities property of the microsoft.graph.deviceManagement entity.
            def imported_windows_autopilot_device_identities()
                return MicrosoftGraph::DeviceManagement::ImportedWindowsAutopilotDeviceIdentities::ImportedWindowsAutopilotDeviceIdentitiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the iosUpdateStatuses property of the microsoft.graph.deviceManagement entity.
            def ios_update_statuses()
                return MicrosoftGraph::DeviceManagement::IosUpdateStatuses::IosUpdateStatusesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedDeviceOverview property of the microsoft.graph.deviceManagement entity.
            def managed_device_overview()
                return MicrosoftGraph::DeviceManagement::ManagedDeviceOverview::ManagedDeviceOverviewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedDevices property of the microsoft.graph.deviceManagement entity.
            def managed_devices()
                return MicrosoftGraph::DeviceManagement::ManagedDevices::ManagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileThreatDefenseConnectors property of the microsoft.graph.deviceManagement entity.
            def mobile_threat_defense_connectors()
                return MicrosoftGraph::DeviceManagement::MobileThreatDefenseConnectors::MobileThreatDefenseConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the notificationMessageTemplates property of the microsoft.graph.deviceManagement entity.
            def notification_message_templates()
                return MicrosoftGraph::DeviceManagement::NotificationMessageTemplates::NotificationMessageTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the remoteAssistancePartners property of the microsoft.graph.deviceManagement entity.
            def remote_assistance_partners()
                return MicrosoftGraph::DeviceManagement::RemoteAssistancePartners::RemoteAssistancePartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the reports property of the microsoft.graph.deviceManagement entity.
            def reports()
                return MicrosoftGraph::DeviceManagement::Reports::ReportsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the resourceOperations property of the microsoft.graph.deviceManagement entity.
            def resource_operations()
                return MicrosoftGraph::DeviceManagement::ResourceOperations::ResourceOperationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the roleAssignments property of the microsoft.graph.deviceManagement entity.
            def role_assignments()
                return MicrosoftGraph::DeviceManagement::RoleAssignments::RoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the roleDefinitions property of the microsoft.graph.deviceManagement entity.
            def role_definitions()
                return MicrosoftGraph::DeviceManagement::RoleDefinitions::RoleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the softwareUpdateStatusSummary property of the microsoft.graph.deviceManagement entity.
            def software_update_status_summary()
                return MicrosoftGraph::DeviceManagement::SoftwareUpdateStatusSummary::SoftwareUpdateStatusSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the telecomExpenseManagementPartners property of the microsoft.graph.deviceManagement entity.
            def telecom_expense_management_partners()
                return MicrosoftGraph::DeviceManagement::TelecomExpenseManagementPartners::TelecomExpenseManagementPartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the termsAndConditions property of the microsoft.graph.deviceManagement entity.
            def terms_and_conditions()
                return MicrosoftGraph::DeviceManagement::TermsAndConditions::TermsAndConditionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the troubleshootingEvents property of the microsoft.graph.deviceManagement entity.
            def troubleshooting_events()
                return MicrosoftGraph::DeviceManagement::TroubleshootingEvents::TroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsAutopilotDeviceIdentities property of the microsoft.graph.deviceManagement entity.
            def windows_autopilot_device_identities()
                return MicrosoftGraph::DeviceManagement::WindowsAutopilotDeviceIdentities::WindowsAutopilotDeviceIdentitiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionAppLearningSummaries property of the microsoft.graph.deviceManagement entity.
            def windows_information_protection_app_learning_summaries()
                return MicrosoftGraph::DeviceManagement::WindowsInformationProtectionAppLearningSummaries::WindowsInformationProtectionAppLearningSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionNetworkLearningSummaries property of the microsoft.graph.deviceManagement entity.
            def windows_information_protection_network_learning_summaries()
                return MicrosoftGraph::DeviceManagement::WindowsInformationProtectionNetworkLearningSummaries::WindowsInformationProtectionNetworkLearningSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new DeviceManagementRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/deviceManagement{?%24select,%24expand}")
            end
            ## 
            ## Get deviceManagement
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_management
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to call the getEffectivePermissions method.
            ## @param scope Usage: scope='{scope}'
            ## @return a get_effective_permissions_with_scope_request_builder
            ## 
            def get_effective_permissions_with_scope(scope)
                raise StandardError, 'scope cannot be null' if scope.nil?
                return GetEffectivePermissionsWithScopeRequestBuilder.new(@path_parameters, @request_adapter, scope)
            end
            ## 
            ## Update deviceManagement
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_management
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get deviceManagement
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_get_request_information(request_configuration=nil)
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :GET
                request_info.headers.add('Accept', 'application/json')
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                    request_info.add_request_options(request_configuration.options)
                end
                return request_info
            end
            ## 
            ## Update deviceManagement
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_patch_request_information(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :PATCH
                request_info.headers.add('Accept', 'application/json')
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                return request_info
            end
            ## 
            ## Provides operations to call the verifyWindowsEnrollmentAutoDiscovery method.
            ## @param domain_name Usage: domainName='{domainName}'
            ## @return a verify_windows_enrollment_auto_discovery_with_domain_name_request_builder
            ## 
            def verify_windows_enrollment_auto_discovery_with_domain_name(domain_name)
                raise StandardError, 'domain_name cannot be null' if domain_name.nil?
                return VerifyWindowsEnrollmentAutoDiscoveryWithDomainNameRequestBuilder.new(@path_parameters, @request_adapter, domainName)
            end

            ## 
            # Get deviceManagement
            class DeviceManagementRequestBuilderGetQueryParameters
                
                ## 
                # Expand related entities
                attr_accessor :expand
                ## 
                # Select properties to be returned
                attr_accessor :select
                ## 
                ## Maps the query parameters names to their encoded names for the URI template parsing.
                ## @param original_name The original query parameter name in the class.
                ## @return a string
                ## 
                def get_query_parameter(original_name)
                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                    case original_name
                        when "expand"
                            return "%24expand"
                        when "select"
                            return "%24select"
                        else
                            return original_name
                    end
                end
            end
        end
    end
end
