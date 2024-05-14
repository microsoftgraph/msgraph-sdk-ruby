require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/device_management'
require_relative '../models/o_data_errors_o_data_error'
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
require_relative './mobile_app_troubleshooting_events/mobile_app_troubleshooting_events_request_builder'
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
require_relative './user_experience_analytics_app_health_application_performance/user_experience_analytics_app_health_application_performance_request_builder'
require_relative './user_experience_analytics_app_health_application_performance_by_app_version_details/b5977ca896bb8f07ba0110a16f7d5b9de7419efcedd12306c7bce008c6149c07'
require_relative './user_experience_analytics_app_health_application_performance_by_app_version_device_id/5b8a65d5a63f0349825de135a809711610a9af8fe10a6b6cb11e3a107c3c85b6'
require_relative './user_experience_analytics_app_health_application_performance_by_o_s_version/user_experience_analytics_app_health_application_performance_by_o_s_version_request_builder'
require_relative './user_experience_analytics_app_health_device_model_performance/user_experience_analytics_app_health_device_model_performance_request_builder'
require_relative './user_experience_analytics_app_health_device_performance/user_experience_analytics_app_health_device_performance_request_builder'
require_relative './user_experience_analytics_app_health_device_performance_details/user_experience_analytics_app_health_device_performance_details_request_builder'
require_relative './user_experience_analytics_app_health_o_s_version_performance/user_experience_analytics_app_health_o_s_version_performance_request_builder'
require_relative './user_experience_analytics_app_health_overview/user_experience_analytics_app_health_overview_request_builder'
require_relative './user_experience_analytics_baselines/user_experience_analytics_baselines_request_builder'
require_relative './user_experience_analytics_categories/user_experience_analytics_categories_request_builder'
require_relative './user_experience_analytics_device_performance/user_experience_analytics_device_performance_request_builder'
require_relative './user_experience_analytics_device_scores/user_experience_analytics_device_scores_request_builder'
require_relative './user_experience_analytics_device_startup_history/user_experience_analytics_device_startup_history_request_builder'
require_relative './user_experience_analytics_device_startup_processes/user_experience_analytics_device_startup_processes_request_builder'
require_relative './user_experience_analytics_device_startup_process_performance/user_experience_analytics_device_startup_process_performance_request_builder'
require_relative './user_experience_analytics_metric_history/user_experience_analytics_metric_history_request_builder'
require_relative './user_experience_analytics_model_scores/user_experience_analytics_model_scores_request_builder'
require_relative './user_experience_analytics_overview/user_experience_analytics_overview_request_builder'
require_relative './user_experience_analytics_score_history/user_experience_analytics_score_history_request_builder'
require_relative './user_experience_analytics_summarize_work_from_anywhere_devices/user_experience_analytics_summarize_work_from_anywhere_devices_request_builder'
require_relative './user_experience_analytics_work_from_anywhere_hardware_readiness_metric/user_experience_analytics_work_from_anywhere_hardware_readiness_metric_request_builder'
require_relative './user_experience_analytics_work_from_anywhere_metrics/user_experience_analytics_work_from_anywhere_metrics_request_builder'
require_relative './user_experience_analytics_work_from_anywhere_model_performance/user_experience_analytics_work_from_anywhere_model_performance_request_builder'
require_relative './verify_windows_enrollment_auto_discovery_with_domain_name/verify_windows_enrollment_auto_discovery_with_domain_name_request_builder'
require_relative './virtual_endpoint/virtual_endpoint_request_builder'
require_relative './windows_autopilot_device_identities/windows_autopilot_device_identities_request_builder'
require_relative './windows_information_protection_app_learning_summaries/windows_information_protection_app_learning_summaries_request_builder'
require_relative './windows_information_protection_network_learning_summaries/windows_information_protection_network_learning_summaries_request_builder'
require_relative './windows_malware_information/windows_malware_information_request_builder'

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
            # Provides operations to manage the mobileAppTroubleshootingEvents property of the microsoft.graph.deviceManagement entity.
            def mobile_app_troubleshooting_events()
                return MicrosoftGraph::DeviceManagement::MobileAppTroubleshootingEvents::MobileAppTroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
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
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformance::UserExperienceAnalyticsAppHealthApplicationPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance_by_app_version_details()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance_by_app_version_device_id()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceIdRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance_by_o_s_version()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion::UserExperienceAnalyticsAppHealthApplicationPerformanceByOSVersionRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthDeviceModelPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_device_model_performance()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthDeviceModelPerformance::UserExperienceAnalyticsAppHealthDeviceModelPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthDevicePerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_device_performance()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthDevicePerformance::UserExperienceAnalyticsAppHealthDevicePerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthDevicePerformanceDetails property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_device_performance_details()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthDevicePerformanceDetails::UserExperienceAnalyticsAppHealthDevicePerformanceDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthOSVersionPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_o_s_version_performance()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthOSVersionPerformance::UserExperienceAnalyticsAppHealthOSVersionPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthOverview property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_overview()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsAppHealthOverview::UserExperienceAnalyticsAppHealthOverviewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBaselines property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_baselines()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsBaselines::UserExperienceAnalyticsBaselinesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsCategories property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_categories()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsCategories::UserExperienceAnalyticsCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDevicePerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_performance()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsDevicePerformance::UserExperienceAnalyticsDevicePerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceScores property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_scores()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsDeviceScores::UserExperienceAnalyticsDeviceScoresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceStartupHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_startup_history()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsDeviceStartupHistory::UserExperienceAnalyticsDeviceStartupHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceStartupProcesses property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_startup_processes()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsDeviceStartupProcesses::UserExperienceAnalyticsDeviceStartupProcessesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceStartupProcessPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_startup_process_performance()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsDeviceStartupProcessPerformance::UserExperienceAnalyticsDeviceStartupProcessPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsMetricHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_metric_history()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsMetricHistory::UserExperienceAnalyticsMetricHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsModelScores property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_model_scores()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsModelScores::UserExperienceAnalyticsModelScoresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsOverview property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_overview()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsOverview::UserExperienceAnalyticsOverviewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsScoreHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_score_history()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsScoreHistory::UserExperienceAnalyticsScoreHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the userExperienceAnalyticsSummarizeWorkFromAnywhereDevices method.
            def user_experience_analytics_summarize_work_from_anywhere_devices()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsSummarizeWorkFromAnywhereDevices::UserExperienceAnalyticsSummarizeWorkFromAnywhereDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_work_from_anywhere_hardware_readiness_metric()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric::UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsWorkFromAnywhereMetrics property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_work_from_anywhere_metrics()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsWorkFromAnywhereMetrics::UserExperienceAnalyticsWorkFromAnywhereMetricsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsWorkFromAnywhereModelPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_work_from_anywhere_model_performance()
                return MicrosoftGraph::DeviceManagement::UserExperienceAnalyticsWorkFromAnywhereModelPerformance::UserExperienceAnalyticsWorkFromAnywhereModelPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the virtualEndpoint property of the microsoft.graph.deviceManagement entity.
            def virtual_endpoint()
                return MicrosoftGraph::DeviceManagement::VirtualEndpoint::VirtualEndpointRequestBuilder.new(@path_parameters, @request_adapter)
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
            # Provides operations to manage the windowsMalwareInformation property of the microsoft.graph.deviceManagement entity.
            def windows_malware_information()
                return MicrosoftGraph::DeviceManagement::WindowsMalwareInformation::WindowsMalwareInformationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new DeviceManagementRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/deviceManagement{?%24expand,%24select}")
            end
            ## 
            ## Read properties and relationships of the deviceManagement object.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_management
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
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
            ## Update the properties of a deviceManagement object.
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
                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Read properties and relationships of the deviceManagement object.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_get_request_information(request_configuration=nil)
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :GET
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Update the properties of a deviceManagement object.
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_patch_request_information(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :PATCH
                request_info.headers.try_add('Accept', 'application/json')
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
            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
            ## @param raw_url The raw URL to use for the request builder.
            ## @return a device_management_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return DeviceManagementRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Read properties and relationships of the deviceManagement object.
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
