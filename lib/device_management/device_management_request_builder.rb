require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/device_management'
require_relative '../models/o_data_errors/o_data_error'
require_relative './apple_push_notification_certificate/apple_push_notification_certificate_request_builder'
require_relative './audit_events/audit_events_request_builder'
require_relative './audit_events/item/audit_event_item_request_builder'
require_relative './compliance_management_partners/compliance_management_partners_request_builder'
require_relative './compliance_management_partners/item/compliance_management_partner_item_request_builder'
require_relative './conditional_access_settings/conditional_access_settings_request_builder'
require_relative './detected_apps/detected_apps_request_builder'
require_relative './detected_apps/item/detected_app_item_request_builder'
require_relative './device_categories/device_categories_request_builder'
require_relative './device_categories/item/device_category_item_request_builder'
require_relative './device_compliance_policies/device_compliance_policies_request_builder'
require_relative './device_compliance_policies/item/device_compliance_policy_item_request_builder'
require_relative './device_compliance_policy_device_state_summary/device_compliance_policy_device_state_summary_request_builder'
require_relative './device_compliance_policy_setting_state_summaries/device_compliance_policy_setting_state_summaries_request_builder'
require_relative './device_compliance_policy_setting_state_summaries/item/device_compliance_policy_setting_state_summary_item_request_builder'
require_relative './device_configuration_device_state_summaries/device_configuration_device_state_summaries_request_builder'
require_relative './device_configurations/device_configurations_request_builder'
require_relative './device_configurations/item/device_configuration_item_request_builder'
require_relative './device_enrollment_configurations/device_enrollment_configurations_request_builder'
require_relative './device_enrollment_configurations/item/device_enrollment_configuration_item_request_builder'
require_relative './device_management_partners/device_management_partners_request_builder'
require_relative './device_management_partners/item/device_management_partner_item_request_builder'
require_relative './device_management'
require_relative './exchange_connectors/exchange_connectors_request_builder'
require_relative './exchange_connectors/item/device_management_exchange_connector_item_request_builder'
require_relative './get_effective_permissions_with_scope/get_effective_permissions_with_scope_request_builder'
require_relative './imported_windows_autopilot_device_identities/imported_windows_autopilot_device_identities_request_builder'
require_relative './imported_windows_autopilot_device_identities/item/imported_windows_autopilot_device_identity_item_request_builder'
require_relative './ios_update_statuses/ios_update_statuses_request_builder'
require_relative './ios_update_statuses/item/ios_update_device_status_item_request_builder'
require_relative './managed_device_overview/managed_device_overview_request_builder'
require_relative './managed_devices/item/managed_device_item_request_builder'
require_relative './managed_devices/managed_devices_request_builder'
require_relative './mobile_threat_defense_connectors/item/mobile_threat_defense_connector_item_request_builder'
require_relative './mobile_threat_defense_connectors/mobile_threat_defense_connectors_request_builder'
require_relative './notification_message_templates/item/notification_message_template_item_request_builder'
require_relative './notification_message_templates/notification_message_templates_request_builder'
require_relative './remote_assistance_partners/item/remote_assistance_partner_item_request_builder'
require_relative './remote_assistance_partners/remote_assistance_partners_request_builder'
require_relative './reports/reports_request_builder'
require_relative './resource_operations/item/resource_operation_item_request_builder'
require_relative './resource_operations/resource_operations_request_builder'
require_relative './role_assignments/item/device_and_app_management_role_assignment_item_request_builder'
require_relative './role_assignments/role_assignments_request_builder'
require_relative './role_definitions/item/role_definition_item_request_builder'
require_relative './role_definitions/role_definitions_request_builder'
require_relative './software_update_status_summary/software_update_status_summary_request_builder'
require_relative './telecom_expense_management_partners/item/telecom_expense_management_partner_item_request_builder'
require_relative './telecom_expense_management_partners/telecom_expense_management_partners_request_builder'
require_relative './terms_and_conditions/item/terms_and_conditions_item_request_builder'
require_relative './terms_and_conditions/terms_and_conditions_request_builder'
require_relative './troubleshooting_events/item/device_management_troubleshooting_event_item_request_builder'
require_relative './troubleshooting_events/troubleshooting_events_request_builder'
require_relative './verify_windows_enrollment_auto_discovery_with_domain_name/verify_windows_enrollment_auto_discovery_with_domain_name_request_builder'
require_relative './windows_autopilot_device_identities/item/windows_autopilot_device_identity_item_request_builder'
require_relative './windows_autopilot_device_identities/windows_autopilot_device_identities_request_builder'
require_relative './windows_information_protection_app_learning_summaries/item/windows_information_protection_app_learning_summary_item_request_builder'
require_relative './windows_information_protection_app_learning_summaries/windows_information_protection_app_learning_summaries_request_builder'
require_relative './windows_information_protection_network_learning_summaries/item/windows_information_protection_network_learning_summary_item_request_builder'
require_relative './windows_information_protection_network_learning_summaries/windows_information_protection_network_learning_summaries_request_builder'

module MicrosoftGraph
    module DeviceManagement
        ## 
        # Provides operations to manage the deviceManagement singleton.
        class DeviceManagementRequestBuilder
            
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
            # Path parameters for the request
            @path_parameters
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
            # The request adapter to use to execute the requests.
            @request_adapter
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
            # Url template to use to build the URL for the current request builder
            @url_template
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
            ## Provides operations to manage the auditEvents property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a audit_event_item_request_builder
            ## 
            def audit_events_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["auditEvent%2Did"] = id
                return MicrosoftGraph::DeviceManagement::AuditEvents::Item::AuditEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the complianceManagementPartners property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a compliance_management_partner_item_request_builder
            ## 
            def compliance_management_partners_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["complianceManagementPartner%2Did"] = id
                return MicrosoftGraph::DeviceManagement::ComplianceManagementPartners::Item::ComplianceManagementPartnerItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new DeviceManagementRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/deviceManagement{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the detectedApps property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a detected_app_item_request_builder
            ## 
            def detected_apps_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["detectedApp%2Did"] = id
                return MicrosoftGraph::DeviceManagement::DetectedApps::Item::DetectedAppItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the deviceCategories property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_category_item_request_builder
            ## 
            def device_categories_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceCategory%2Did"] = id
                return MicrosoftGraph::DeviceManagement::DeviceCategories::Item::DeviceCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the deviceCompliancePolicies property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_compliance_policy_item_request_builder
            ## 
            def device_compliance_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceCompliancePolicy%2Did"] = id
                return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::DeviceCompliancePolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the deviceCompliancePolicySettingStateSummaries property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_compliance_policy_setting_state_summary_item_request_builder
            ## 
            def device_compliance_policy_setting_state_summaries_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceCompliancePolicySettingStateSummary%2Did"] = id
                return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicySettingStateSummaries::Item::DeviceCompliancePolicySettingStateSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the deviceConfigurations property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_configuration_item_request_builder
            ## 
            def device_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceConfiguration%2Did"] = id
                return MicrosoftGraph::DeviceManagement::DeviceConfigurations::Item::DeviceConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the deviceEnrollmentConfigurations property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_enrollment_configuration_item_request_builder
            ## 
            def device_enrollment_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceEnrollmentConfiguration%2Did"] = id
                return MicrosoftGraph::DeviceManagement::DeviceEnrollmentConfigurations::Item::DeviceEnrollmentConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the deviceManagementPartners property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_management_partner_item_request_builder
            ## 
            def device_management_partners_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceManagementPartner%2Did"] = id
                return MicrosoftGraph::DeviceManagement::DeviceManagementPartners::Item::DeviceManagementPartnerItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the exchangeConnectors property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_management_exchange_connector_item_request_builder
            ## 
            def exchange_connectors_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceManagementExchangeConnector%2Did"] = id
                return MicrosoftGraph::DeviceManagement::ExchangeConnectors::Item::DeviceManagementExchangeConnectorItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get deviceManagement
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
            ## Provides operations to manage the importedWindowsAutopilotDeviceIdentities property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a imported_windows_autopilot_device_identity_item_request_builder
            ## 
            def imported_windows_autopilot_device_identities_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["importedWindowsAutopilotDeviceIdentity%2Did"] = id
                return MicrosoftGraph::DeviceManagement::ImportedWindowsAutopilotDeviceIdentities::Item::ImportedWindowsAutopilotDeviceIdentityItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the iosUpdateStatuses property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a ios_update_device_status_item_request_builder
            ## 
            def ios_update_statuses_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["iosUpdateDeviceStatus%2Did"] = id
                return MicrosoftGraph::DeviceManagement::IosUpdateStatuses::Item::IosUpdateDeviceStatusItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedDevices property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_device_item_request_builder
            ## 
            def managed_devices_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedDevice%2Did"] = id
                return MicrosoftGraph::DeviceManagement::ManagedDevices::Item::ManagedDeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mobileThreatDefenseConnectors property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a mobile_threat_defense_connector_item_request_builder
            ## 
            def mobile_threat_defense_connectors_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["mobileThreatDefenseConnector%2Did"] = id
                return MicrosoftGraph::DeviceManagement::MobileThreatDefenseConnectors::Item::MobileThreatDefenseConnectorItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the notificationMessageTemplates property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a notification_message_template_item_request_builder
            ## 
            def notification_message_templates_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["notificationMessageTemplate%2Did"] = id
                return MicrosoftGraph::DeviceManagement::NotificationMessageTemplates::Item::NotificationMessageTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update deviceManagement
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
            ## Provides operations to manage the remoteAssistancePartners property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a remote_assistance_partner_item_request_builder
            ## 
            def remote_assistance_partners_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["remoteAssistancePartner%2Did"] = id
                return MicrosoftGraph::DeviceManagement::RemoteAssistancePartners::Item::RemoteAssistancePartnerItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the resourceOperations property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a resource_operation_item_request_builder
            ## 
            def resource_operations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["resourceOperation%2Did"] = id
                return MicrosoftGraph::DeviceManagement::ResourceOperations::Item::ResourceOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the roleAssignments property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_and_app_management_role_assignment_item_request_builder
            ## 
            def role_assignments_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceAndAppManagementRoleAssignment%2Did"] = id
                return MicrosoftGraph::DeviceManagement::RoleAssignments::Item::DeviceAndAppManagementRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the roleDefinitions property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a role_definition_item_request_builder
            ## 
            def role_definitions_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["roleDefinition%2Did"] = id
                return MicrosoftGraph::DeviceManagement::RoleDefinitions::Item::RoleDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the telecomExpenseManagementPartners property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a telecom_expense_management_partner_item_request_builder
            ## 
            def telecom_expense_management_partners_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["telecomExpenseManagementPartner%2Did"] = id
                return MicrosoftGraph::DeviceManagement::TelecomExpenseManagementPartners::Item::TelecomExpenseManagementPartnerItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the termsAndConditions property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a terms_and_conditions_item_request_builder
            ## 
            def terms_and_conditions_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["termsAndConditions%2Did"] = id
                return MicrosoftGraph::DeviceManagement::TermsAndConditions::Item::TermsAndConditionsItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get deviceManagement
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                return request_info
            end
            ## 
            ## Provides operations to manage the troubleshootingEvents property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_management_troubleshooting_event_item_request_builder
            ## 
            def troubleshooting_events_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceManagementTroubleshootingEvent%2Did"] = id
                return MicrosoftGraph::DeviceManagement::TroubleshootingEvents::Item::DeviceManagementTroubleshootingEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to call the verifyWindowsEnrollmentAutoDiscovery method.
            ## @param domainName Usage: domainName='{domainName}'
            ## @return a verify_windows_enrollment_auto_discovery_with_domain_name_request_builder
            ## 
            def verify_windows_enrollment_auto_discovery_with_domain_name(domain_name)
                raise StandardError, 'domain_name cannot be null' if domain_name.nil?
                return VerifyWindowsEnrollmentAutoDiscoveryWithDomainNameRequestBuilder.new(@path_parameters, @request_adapter, domainName)
            end
            ## 
            ## Provides operations to manage the windowsAutopilotDeviceIdentities property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_autopilot_device_identity_item_request_builder
            ## 
            def windows_autopilot_device_identities_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsAutopilotDeviceIdentity%2Did"] = id
                return MicrosoftGraph::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::WindowsAutopilotDeviceIdentityItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the windowsInformationProtectionAppLearningSummaries property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_information_protection_app_learning_summary_item_request_builder
            ## 
            def windows_information_protection_app_learning_summaries_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsInformationProtectionAppLearningSummary%2Did"] = id
                return MicrosoftGraph::DeviceManagement::WindowsInformationProtectionAppLearningSummaries::Item::WindowsInformationProtectionAppLearningSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the windowsInformationProtectionNetworkLearningSummaries property of the microsoft.graph.deviceManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_information_protection_network_learning_summary_item_request_builder
            ## 
            def windows_information_protection_network_learning_summaries_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsInformationProtectionNetworkLearningSummary%2Did"] = id
                return MicrosoftGraph::DeviceManagement::WindowsInformationProtectionNetworkLearningSummaries::Item::WindowsInformationProtectionNetworkLearningSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
                ## @param originalName The original query parameter name in the class.
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

            ## 
            # Configuration for the request such as headers, query parameters, and middleware options.
            class DeviceManagementRequestBuilderGetRequestConfiguration
                
                ## 
                # Request headers
                attr_accessor :headers
                ## 
                # Request options
                attr_accessor :options
                ## 
                # Request query parameters
                attr_accessor :query_parameters
            end

            ## 
            # Configuration for the request such as headers, query parameters, and middleware options.
            class DeviceManagementRequestBuilderPatchRequestConfiguration
                
                ## 
                # Request headers
                attr_accessor :headers
                ## 
                # Request options
                attr_accessor :options
            end
        end
    end
end
