require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Singleton entity that acts as a container for all device management functionality.
        class DeviceManagement < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Apple push notification certificate.
            @apple_push_notification_certificate
            ## 
            # The Audit Events
            @audit_events
            ## 
            # The list of Compliance Management Partners configured by the tenant.
            @compliance_management_partners
            ## 
            # The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
            @conditional_access_settings
            ## 
            # The list of detected apps associated with a device.
            @detected_apps
            ## 
            # The list of device categories with the tenant.
            @device_categories
            ## 
            # The device compliance policies.
            @device_compliance_policies
            ## 
            # The device compliance state summary for this account.
            @device_compliance_policy_device_state_summary
            ## 
            # The summary states of compliance policy settings for this account.
            @device_compliance_policy_setting_state_summaries
            ## 
            # The device configuration device state summary for this account.
            @device_configuration_device_state_summaries
            ## 
            # The device configurations.
            @device_configurations
            ## 
            # The list of device enrollment configurations
            @device_enrollment_configurations
            ## 
            # The list of Device Management Partners configured by the tenant.
            @device_management_partners
            ## 
            # Device protection overview.
            @device_protection_overview
            ## 
            # The list of Exchange Connectors configured by the tenant.
            @exchange_connectors
            ## 
            # Collection of imported Windows autopilot devices.
            @imported_windows_autopilot_device_identities
            ## 
            # Intune Account Id for given tenant
            @intune_account_id
            ## 
            # intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
            @intune_brand
            ## 
            # The IOS software update installation statuses for this account.
            @ios_update_statuses
            ## 
            # Device overview
            @managed_device_overview
            ## 
            # The list of managed devices.
            @managed_devices
            ## 
            # The collection property of MobileAppTroubleshootingEvent.
            @mobile_app_troubleshooting_events
            ## 
            # The list of Mobile threat Defense connectors configured by the tenant.
            @mobile_threat_defense_connectors
            ## 
            # The Notification Message Templates.
            @notification_message_templates
            ## 
            # The remote assist partners.
            @remote_assistance_partners
            ## 
            # Reports singleton
            @reports
            ## 
            # The Resource Operations.
            @resource_operations
            ## 
            # The Role Assignments.
            @role_assignments
            ## 
            # The Role Definitions.
            @role_definitions
            ## 
            # Account level settings.
            @settings
            ## 
            # The software update status summary.
            @software_update_status_summary
            ## 
            # Tenant mobile device management subscription state.
            @subscription_state
            ## 
            # The telecom expense management partners.
            @telecom_expense_management_partners
            ## 
            # The terms and conditions associated with device management of the company.
            @terms_and_conditions
            ## 
            # The list of troubleshooting events for the tenant.
            @troubleshooting_events
            ## 
            # User experience analytics appHealth Application Performance
            @user_experience_analytics_app_health_application_performance
            ## 
            # User experience analytics appHealth Application Performance by App Version details
            @user_experience_analytics_app_health_application_performance_by_app_version_details
            ## 
            # User experience analytics appHealth Application Performance by App Version Device Id
            @user_experience_analytics_app_health_application_performance_by_app_version_device_id
            ## 
            # User experience analytics appHealth Application Performance by OS Version
            @user_experience_analytics_app_health_application_performance_by_o_s_version
            ## 
            # User experience analytics appHealth Model Performance
            @user_experience_analytics_app_health_device_model_performance
            ## 
            # User experience analytics appHealth Device Performance
            @user_experience_analytics_app_health_device_performance
            ## 
            # User experience analytics device performance details
            @user_experience_analytics_app_health_device_performance_details
            ## 
            # User experience analytics appHealth OS version Performance
            @user_experience_analytics_app_health_o_s_version_performance
            ## 
            # User experience analytics appHealth overview
            @user_experience_analytics_app_health_overview
            ## 
            # User experience analytics baselines
            @user_experience_analytics_baselines
            ## 
            # User experience analytics categories
            @user_experience_analytics_categories
            ## 
            # User experience analytics device performance
            @user_experience_analytics_device_performance
            ## 
            # User experience analytics device scores
            @user_experience_analytics_device_scores
            ## 
            # User experience analytics device Startup History
            @user_experience_analytics_device_startup_history
            ## 
            # User experience analytics device Startup Processes
            @user_experience_analytics_device_startup_processes
            ## 
            # User experience analytics metric history
            @user_experience_analytics_metric_history
            ## 
            # User experience analytics model scores
            @user_experience_analytics_model_scores
            ## 
            # User experience analytics overview
            @user_experience_analytics_overview
            ## 
            # User experience analytics device Startup Score History
            @user_experience_analytics_score_history
            ## 
            # User experience analytics device settings
            @user_experience_analytics_settings
            ## 
            # User experience analytics work from anywhere hardware readiness metrics.
            @user_experience_analytics_work_from_anywhere_hardware_readiness_metric
            ## 
            # User experience analytics work from anywhere metrics.
            @user_experience_analytics_work_from_anywhere_metrics
            ## 
            # The user experience analytics work from anywhere model performance
            @user_experience_analytics_work_from_anywhere_model_performance
            ## 
            # The Windows autopilot device identities contained collection.
            @windows_autopilot_device_identities
            ## 
            # The windows information protection app learning summaries.
            @windows_information_protection_app_learning_summaries
            ## 
            # The windows information protection network learning summaries.
            @windows_information_protection_network_learning_summaries
            ## 
            # The list of affected malware in the tenant.
            @windows_malware_information
            ## 
            # Malware overview for windows devices.
            @windows_malware_overview
            ## 
            ## Gets the applePushNotificationCertificate property value. Apple push notification certificate.
            ## @return a apple_push_notification_certificate
            ## 
            def apple_push_notification_certificate
                return @apple_push_notification_certificate
            end
            ## 
            ## Sets the applePushNotificationCertificate property value. Apple push notification certificate.
            ## @param value Value to set for the apple_push_notification_certificate property.
            ## @return a void
            ## 
            def apple_push_notification_certificate=(value)
                @apple_push_notification_certificate = value
            end
            ## 
            ## Gets the auditEvents property value. The Audit Events
            ## @return a audit_event
            ## 
            def audit_events
                return @audit_events
            end
            ## 
            ## Sets the auditEvents property value. The Audit Events
            ## @param value Value to set for the audit_events property.
            ## @return a void
            ## 
            def audit_events=(value)
                @audit_events = value
            end
            ## 
            ## Gets the complianceManagementPartners property value. The list of Compliance Management Partners configured by the tenant.
            ## @return a compliance_management_partner
            ## 
            def compliance_management_partners
                return @compliance_management_partners
            end
            ## 
            ## Sets the complianceManagementPartners property value. The list of Compliance Management Partners configured by the tenant.
            ## @param value Value to set for the compliance_management_partners property.
            ## @return a void
            ## 
            def compliance_management_partners=(value)
                @compliance_management_partners = value
            end
            ## 
            ## Gets the conditionalAccessSettings property value. The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
            ## @return a on_premises_conditional_access_settings
            ## 
            def conditional_access_settings
                return @conditional_access_settings
            end
            ## 
            ## Sets the conditionalAccessSettings property value. The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
            ## @param value Value to set for the conditional_access_settings property.
            ## @return a void
            ## 
            def conditional_access_settings=(value)
                @conditional_access_settings = value
            end
            ## 
            ## Instantiates a new deviceManagement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagement.new
            end
            ## 
            ## Gets the detectedApps property value. The list of detected apps associated with a device.
            ## @return a detected_app
            ## 
            def detected_apps
                return @detected_apps
            end
            ## 
            ## Sets the detectedApps property value. The list of detected apps associated with a device.
            ## @param value Value to set for the detected_apps property.
            ## @return a void
            ## 
            def detected_apps=(value)
                @detected_apps = value
            end
            ## 
            ## Gets the deviceCategories property value. The list of device categories with the tenant.
            ## @return a device_category
            ## 
            def device_categories
                return @device_categories
            end
            ## 
            ## Sets the deviceCategories property value. The list of device categories with the tenant.
            ## @param value Value to set for the device_categories property.
            ## @return a void
            ## 
            def device_categories=(value)
                @device_categories = value
            end
            ## 
            ## Gets the deviceCompliancePolicies property value. The device compliance policies.
            ## @return a device_compliance_policy
            ## 
            def device_compliance_policies
                return @device_compliance_policies
            end
            ## 
            ## Sets the deviceCompliancePolicies property value. The device compliance policies.
            ## @param value Value to set for the device_compliance_policies property.
            ## @return a void
            ## 
            def device_compliance_policies=(value)
                @device_compliance_policies = value
            end
            ## 
            ## Gets the deviceCompliancePolicyDeviceStateSummary property value. The device compliance state summary for this account.
            ## @return a device_compliance_policy_device_state_summary
            ## 
            def device_compliance_policy_device_state_summary
                return @device_compliance_policy_device_state_summary
            end
            ## 
            ## Sets the deviceCompliancePolicyDeviceStateSummary property value. The device compliance state summary for this account.
            ## @param value Value to set for the device_compliance_policy_device_state_summary property.
            ## @return a void
            ## 
            def device_compliance_policy_device_state_summary=(value)
                @device_compliance_policy_device_state_summary = value
            end
            ## 
            ## Gets the deviceCompliancePolicySettingStateSummaries property value. The summary states of compliance policy settings for this account.
            ## @return a device_compliance_policy_setting_state_summary
            ## 
            def device_compliance_policy_setting_state_summaries
                return @device_compliance_policy_setting_state_summaries
            end
            ## 
            ## Sets the deviceCompliancePolicySettingStateSummaries property value. The summary states of compliance policy settings for this account.
            ## @param value Value to set for the device_compliance_policy_setting_state_summaries property.
            ## @return a void
            ## 
            def device_compliance_policy_setting_state_summaries=(value)
                @device_compliance_policy_setting_state_summaries = value
            end
            ## 
            ## Gets the deviceConfigurationDeviceStateSummaries property value. The device configuration device state summary for this account.
            ## @return a device_configuration_device_state_summary
            ## 
            def device_configuration_device_state_summaries
                return @device_configuration_device_state_summaries
            end
            ## 
            ## Sets the deviceConfigurationDeviceStateSummaries property value. The device configuration device state summary for this account.
            ## @param value Value to set for the device_configuration_device_state_summaries property.
            ## @return a void
            ## 
            def device_configuration_device_state_summaries=(value)
                @device_configuration_device_state_summaries = value
            end
            ## 
            ## Gets the deviceConfigurations property value. The device configurations.
            ## @return a device_configuration
            ## 
            def device_configurations
                return @device_configurations
            end
            ## 
            ## Sets the deviceConfigurations property value. The device configurations.
            ## @param value Value to set for the device_configurations property.
            ## @return a void
            ## 
            def device_configurations=(value)
                @device_configurations = value
            end
            ## 
            ## Gets the deviceEnrollmentConfigurations property value. The list of device enrollment configurations
            ## @return a device_enrollment_configuration
            ## 
            def device_enrollment_configurations
                return @device_enrollment_configurations
            end
            ## 
            ## Sets the deviceEnrollmentConfigurations property value. The list of device enrollment configurations
            ## @param value Value to set for the device_enrollment_configurations property.
            ## @return a void
            ## 
            def device_enrollment_configurations=(value)
                @device_enrollment_configurations = value
            end
            ## 
            ## Gets the deviceManagementPartners property value. The list of Device Management Partners configured by the tenant.
            ## @return a device_management_partner
            ## 
            def device_management_partners
                return @device_management_partners
            end
            ## 
            ## Sets the deviceManagementPartners property value. The list of Device Management Partners configured by the tenant.
            ## @param value Value to set for the device_management_partners property.
            ## @return a void
            ## 
            def device_management_partners=(value)
                @device_management_partners = value
            end
            ## 
            ## Gets the deviceProtectionOverview property value. Device protection overview.
            ## @return a device_protection_overview
            ## 
            def device_protection_overview
                return @device_protection_overview
            end
            ## 
            ## Sets the deviceProtectionOverview property value. Device protection overview.
            ## @param value Value to set for the device_protection_overview property.
            ## @return a void
            ## 
            def device_protection_overview=(value)
                @device_protection_overview = value
            end
            ## 
            ## Gets the exchangeConnectors property value. The list of Exchange Connectors configured by the tenant.
            ## @return a device_management_exchange_connector
            ## 
            def exchange_connectors
                return @exchange_connectors
            end
            ## 
            ## Sets the exchangeConnectors property value. The list of Exchange Connectors configured by the tenant.
            ## @param value Value to set for the exchange_connectors property.
            ## @return a void
            ## 
            def exchange_connectors=(value)
                @exchange_connectors = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applePushNotificationCertificate" => lambda {|n| @apple_push_notification_certificate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ApplePushNotificationCertificate.create_from_discriminator_value(pn) }) },
                    "auditEvents" => lambda {|n| @audit_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuditEvent.create_from_discriminator_value(pn) }) },
                    "complianceManagementPartners" => lambda {|n| @compliance_management_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ComplianceManagementPartner.create_from_discriminator_value(pn) }) },
                    "conditionalAccessSettings" => lambda {|n| @conditional_access_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OnPremisesConditionalAccessSettings.create_from_discriminator_value(pn) }) },
                    "detectedApps" => lambda {|n| @detected_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DetectedApp.create_from_discriminator_value(pn) }) },
                    "deviceCategories" => lambda {|n| @device_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceCategory.create_from_discriminator_value(pn) }) },
                    "deviceCompliancePolicies" => lambda {|n| @device_compliance_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceCompliancePolicy.create_from_discriminator_value(pn) }) },
                    "deviceCompliancePolicyDeviceStateSummary" => lambda {|n| @device_compliance_policy_device_state_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceCompliancePolicyDeviceStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceCompliancePolicySettingStateSummaries" => lambda {|n| @device_compliance_policy_setting_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceCompliancePolicySettingStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationDeviceStateSummaries" => lambda {|n| @device_configuration_device_state_summaries = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceConfigurationDeviceStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceConfigurations" => lambda {|n| @device_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceConfiguration.create_from_discriminator_value(pn) }) },
                    "deviceEnrollmentConfigurations" => lambda {|n| @device_enrollment_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceEnrollmentConfiguration.create_from_discriminator_value(pn) }) },
                    "deviceManagementPartners" => lambda {|n| @device_management_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceManagementPartner.create_from_discriminator_value(pn) }) },
                    "deviceProtectionOverview" => lambda {|n| @device_protection_overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceProtectionOverview.create_from_discriminator_value(pn) }) },
                    "exchangeConnectors" => lambda {|n| @exchange_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceManagementExchangeConnector.create_from_discriminator_value(pn) }) },
                    "importedWindowsAutopilotDeviceIdentities" => lambda {|n| @imported_windows_autopilot_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ImportedWindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }) },
                    "intuneAccountId" => lambda {|n| @intune_account_id = n.get_guid_value() },
                    "intuneBrand" => lambda {|n| @intune_brand = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IntuneBrand.create_from_discriminator_value(pn) }) },
                    "iosUpdateStatuses" => lambda {|n| @ios_update_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IosUpdateDeviceStatus.create_from_discriminator_value(pn) }) },
                    "managedDeviceOverview" => lambda {|n| @managed_device_overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ManagedDeviceOverview.create_from_discriminator_value(pn) }) },
                    "managedDevices" => lambda {|n| @managed_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                    "mobileAppTroubleshootingEvents" => lambda {|n| @mobile_app_troubleshooting_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MobileAppTroubleshootingEvent.create_from_discriminator_value(pn) }) },
                    "mobileThreatDefenseConnectors" => lambda {|n| @mobile_threat_defense_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MobileThreatDefenseConnector.create_from_discriminator_value(pn) }) },
                    "notificationMessageTemplates" => lambda {|n| @notification_message_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::NotificationMessageTemplate.create_from_discriminator_value(pn) }) },
                    "remoteAssistancePartners" => lambda {|n| @remote_assistance_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RemoteAssistancePartner.create_from_discriminator_value(pn) }) },
                    "reports" => lambda {|n| @reports = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceManagementReports.create_from_discriminator_value(pn) }) },
                    "resourceOperations" => lambda {|n| @resource_operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ResourceOperation.create_from_discriminator_value(pn) }) },
                    "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceAndAppManagementRoleAssignment.create_from_discriminator_value(pn) }) },
                    "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RoleDefinition.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeviceManagementSettings.create_from_discriminator_value(pn) }) },
                    "softwareUpdateStatusSummary" => lambda {|n| @software_update_status_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SoftwareUpdateStatusSummary.create_from_discriminator_value(pn) }) },
                    "subscriptionState" => lambda {|n| @subscription_state = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementSubscriptionState) },
                    "telecomExpenseManagementPartners" => lambda {|n| @telecom_expense_management_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TelecomExpenseManagementPartner.create_from_discriminator_value(pn) }) },
                    "termsAndConditions" => lambda {|n| @terms_and_conditions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TermsAndConditions.create_from_discriminator_value(pn) }) },
                    "troubleshootingEvents" => lambda {|n| @troubleshooting_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceManagementTroubleshootingEvent.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformance" => lambda {|n| @user_experience_analytics_app_health_application_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthApplicationPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails" => lambda {|n| @user_experience_analytics_app_health_application_performance_by_app_version_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId" => lambda {|n| @user_experience_analytics_app_health_application_performance_by_app_version_device_id = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion" => lambda {|n| @user_experience_analytics_app_health_application_performance_by_o_s_version = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthAppPerformanceByOSVersion.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthDeviceModelPerformance" => lambda {|n| @user_experience_analytics_app_health_device_model_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthDeviceModelPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthDevicePerformance" => lambda {|n| @user_experience_analytics_app_health_device_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthDevicePerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthDevicePerformanceDetails" => lambda {|n| @user_experience_analytics_app_health_device_performance_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthDevicePerformanceDetails.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthOSVersionPerformance" => lambda {|n| @user_experience_analytics_app_health_o_s_version_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsAppHealthOSVersionPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthOverview" => lambda {|n| @user_experience_analytics_app_health_overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBaselines" => lambda {|n| @user_experience_analytics_baselines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsBaseline.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsCategories" => lambda {|n| @user_experience_analytics_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDevicePerformance" => lambda {|n| @user_experience_analytics_device_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsDevicePerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceScores" => lambda {|n| @user_experience_analytics_device_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsDeviceScores.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceStartupHistory" => lambda {|n| @user_experience_analytics_device_startup_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsDeviceStartupHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceStartupProcesses" => lambda {|n| @user_experience_analytics_device_startup_processes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsDeviceStartupProcess.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsMetricHistory" => lambda {|n| @user_experience_analytics_metric_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsMetricHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsModelScores" => lambda {|n| @user_experience_analytics_model_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsModelScores.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsOverview" => lambda {|n| @user_experience_analytics_overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsOverview.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsScoreHistory" => lambda {|n| @user_experience_analytics_score_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsScoreHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsSettings" => lambda {|n| @user_experience_analytics_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsSettings.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric" => lambda {|n| @user_experience_analytics_work_from_anywhere_hardware_readiness_metric = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsWorkFromAnywhereMetrics" => lambda {|n| @user_experience_analytics_work_from_anywhere_metrics = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsWorkFromAnywhereMetric.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsWorkFromAnywhereModelPerformance" => lambda {|n| @user_experience_analytics_work_from_anywhere_model_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserExperienceAnalyticsWorkFromAnywhereModelPerformance.create_from_discriminator_value(pn) }) },
                    "windowsAutopilotDeviceIdentities" => lambda {|n| @windows_autopilot_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }) },
                    "windowsInformationProtectionAppLearningSummaries" => lambda {|n| @windows_information_protection_app_learning_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionAppLearningSummary.create_from_discriminator_value(pn) }) },
                    "windowsInformationProtectionNetworkLearningSummaries" => lambda {|n| @windows_information_protection_network_learning_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionNetworkLearningSummary.create_from_discriminator_value(pn) }) },
                    "windowsMalwareInformation" => lambda {|n| @windows_malware_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsMalwareInformation.create_from_discriminator_value(pn) }) },
                    "windowsMalwareOverview" => lambda {|n| @windows_malware_overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WindowsMalwareOverview.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the importedWindowsAutopilotDeviceIdentities property value. Collection of imported Windows autopilot devices.
            ## @return a imported_windows_autopilot_device_identity
            ## 
            def imported_windows_autopilot_device_identities
                return @imported_windows_autopilot_device_identities
            end
            ## 
            ## Sets the importedWindowsAutopilotDeviceIdentities property value. Collection of imported Windows autopilot devices.
            ## @param value Value to set for the imported_windows_autopilot_device_identities property.
            ## @return a void
            ## 
            def imported_windows_autopilot_device_identities=(value)
                @imported_windows_autopilot_device_identities = value
            end
            ## 
            ## Gets the intuneAccountId property value. Intune Account Id for given tenant
            ## @return a guid
            ## 
            def intune_account_id
                return @intune_account_id
            end
            ## 
            ## Sets the intuneAccountId property value. Intune Account Id for given tenant
            ## @param value Value to set for the intune_account_id property.
            ## @return a void
            ## 
            def intune_account_id=(value)
                @intune_account_id = value
            end
            ## 
            ## Gets the intuneBrand property value. intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
            ## @return a intune_brand
            ## 
            def intune_brand
                return @intune_brand
            end
            ## 
            ## Sets the intuneBrand property value. intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
            ## @param value Value to set for the intune_brand property.
            ## @return a void
            ## 
            def intune_brand=(value)
                @intune_brand = value
            end
            ## 
            ## Gets the iosUpdateStatuses property value. The IOS software update installation statuses for this account.
            ## @return a ios_update_device_status
            ## 
            def ios_update_statuses
                return @ios_update_statuses
            end
            ## 
            ## Sets the iosUpdateStatuses property value. The IOS software update installation statuses for this account.
            ## @param value Value to set for the ios_update_statuses property.
            ## @return a void
            ## 
            def ios_update_statuses=(value)
                @ios_update_statuses = value
            end
            ## 
            ## Gets the managedDeviceOverview property value. Device overview
            ## @return a managed_device_overview
            ## 
            def managed_device_overview
                return @managed_device_overview
            end
            ## 
            ## Sets the managedDeviceOverview property value. Device overview
            ## @param value Value to set for the managed_device_overview property.
            ## @return a void
            ## 
            def managed_device_overview=(value)
                @managed_device_overview = value
            end
            ## 
            ## Gets the managedDevices property value. The list of managed devices.
            ## @return a managed_device
            ## 
            def managed_devices
                return @managed_devices
            end
            ## 
            ## Sets the managedDevices property value. The list of managed devices.
            ## @param value Value to set for the managed_devices property.
            ## @return a void
            ## 
            def managed_devices=(value)
                @managed_devices = value
            end
            ## 
            ## Gets the mobileAppTroubleshootingEvents property value. The collection property of MobileAppTroubleshootingEvent.
            ## @return a mobile_app_troubleshooting_event
            ## 
            def mobile_app_troubleshooting_events
                return @mobile_app_troubleshooting_events
            end
            ## 
            ## Sets the mobileAppTroubleshootingEvents property value. The collection property of MobileAppTroubleshootingEvent.
            ## @param value Value to set for the mobile_app_troubleshooting_events property.
            ## @return a void
            ## 
            def mobile_app_troubleshooting_events=(value)
                @mobile_app_troubleshooting_events = value
            end
            ## 
            ## Gets the mobileThreatDefenseConnectors property value. The list of Mobile threat Defense connectors configured by the tenant.
            ## @return a mobile_threat_defense_connector
            ## 
            def mobile_threat_defense_connectors
                return @mobile_threat_defense_connectors
            end
            ## 
            ## Sets the mobileThreatDefenseConnectors property value. The list of Mobile threat Defense connectors configured by the tenant.
            ## @param value Value to set for the mobile_threat_defense_connectors property.
            ## @return a void
            ## 
            def mobile_threat_defense_connectors=(value)
                @mobile_threat_defense_connectors = value
            end
            ## 
            ## Gets the notificationMessageTemplates property value. The Notification Message Templates.
            ## @return a notification_message_template
            ## 
            def notification_message_templates
                return @notification_message_templates
            end
            ## 
            ## Sets the notificationMessageTemplates property value. The Notification Message Templates.
            ## @param value Value to set for the notification_message_templates property.
            ## @return a void
            ## 
            def notification_message_templates=(value)
                @notification_message_templates = value
            end
            ## 
            ## Gets the remoteAssistancePartners property value. The remote assist partners.
            ## @return a remote_assistance_partner
            ## 
            def remote_assistance_partners
                return @remote_assistance_partners
            end
            ## 
            ## Sets the remoteAssistancePartners property value. The remote assist partners.
            ## @param value Value to set for the remote_assistance_partners property.
            ## @return a void
            ## 
            def remote_assistance_partners=(value)
                @remote_assistance_partners = value
            end
            ## 
            ## Gets the reports property value. Reports singleton
            ## @return a device_management_reports
            ## 
            def reports
                return @reports
            end
            ## 
            ## Sets the reports property value. Reports singleton
            ## @param value Value to set for the reports property.
            ## @return a void
            ## 
            def reports=(value)
                @reports = value
            end
            ## 
            ## Gets the resourceOperations property value. The Resource Operations.
            ## @return a resource_operation
            ## 
            def resource_operations
                return @resource_operations
            end
            ## 
            ## Sets the resourceOperations property value. The Resource Operations.
            ## @param value Value to set for the resource_operations property.
            ## @return a void
            ## 
            def resource_operations=(value)
                @resource_operations = value
            end
            ## 
            ## Gets the roleAssignments property value. The Role Assignments.
            ## @return a device_and_app_management_role_assignment
            ## 
            def role_assignments
                return @role_assignments
            end
            ## 
            ## Sets the roleAssignments property value. The Role Assignments.
            ## @param value Value to set for the role_assignments property.
            ## @return a void
            ## 
            def role_assignments=(value)
                @role_assignments = value
            end
            ## 
            ## Gets the roleDefinitions property value. The Role Definitions.
            ## @return a role_definition
            ## 
            def role_definitions
                return @role_definitions
            end
            ## 
            ## Sets the roleDefinitions property value. The Role Definitions.
            ## @param value Value to set for the role_definitions property.
            ## @return a void
            ## 
            def role_definitions=(value)
                @role_definitions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("applePushNotificationCertificate", @apple_push_notification_certificate)
                writer.write_collection_of_object_values("auditEvents", @audit_events)
                writer.write_collection_of_object_values("complianceManagementPartners", @compliance_management_partners)
                writer.write_object_value("conditionalAccessSettings", @conditional_access_settings)
                writer.write_collection_of_object_values("detectedApps", @detected_apps)
                writer.write_collection_of_object_values("deviceCategories", @device_categories)
                writer.write_collection_of_object_values("deviceCompliancePolicies", @device_compliance_policies)
                writer.write_object_value("deviceCompliancePolicyDeviceStateSummary", @device_compliance_policy_device_state_summary)
                writer.write_collection_of_object_values("deviceCompliancePolicySettingStateSummaries", @device_compliance_policy_setting_state_summaries)
                writer.write_object_value("deviceConfigurationDeviceStateSummaries", @device_configuration_device_state_summaries)
                writer.write_collection_of_object_values("deviceConfigurations", @device_configurations)
                writer.write_collection_of_object_values("deviceEnrollmentConfigurations", @device_enrollment_configurations)
                writer.write_collection_of_object_values("deviceManagementPartners", @device_management_partners)
                writer.write_object_value("deviceProtectionOverview", @device_protection_overview)
                writer.write_collection_of_object_values("exchangeConnectors", @exchange_connectors)
                writer.write_collection_of_object_values("importedWindowsAutopilotDeviceIdentities", @imported_windows_autopilot_device_identities)
                writer.write_guid_value("intuneAccountId", @intune_account_id)
                writer.write_object_value("intuneBrand", @intune_brand)
                writer.write_collection_of_object_values("iosUpdateStatuses", @ios_update_statuses)
                writer.write_object_value("managedDeviceOverview", @managed_device_overview)
                writer.write_collection_of_object_values("managedDevices", @managed_devices)
                writer.write_collection_of_object_values("mobileAppTroubleshootingEvents", @mobile_app_troubleshooting_events)
                writer.write_collection_of_object_values("mobileThreatDefenseConnectors", @mobile_threat_defense_connectors)
                writer.write_collection_of_object_values("notificationMessageTemplates", @notification_message_templates)
                writer.write_collection_of_object_values("remoteAssistancePartners", @remote_assistance_partners)
                writer.write_object_value("reports", @reports)
                writer.write_collection_of_object_values("resourceOperations", @resource_operations)
                writer.write_collection_of_object_values("roleAssignments", @role_assignments)
                writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
                writer.write_object_value("settings", @settings)
                writer.write_object_value("softwareUpdateStatusSummary", @software_update_status_summary)
                writer.write_enum_value("subscriptionState", @subscription_state)
                writer.write_collection_of_object_values("telecomExpenseManagementPartners", @telecom_expense_management_partners)
                writer.write_collection_of_object_values("termsAndConditions", @terms_and_conditions)
                writer.write_collection_of_object_values("troubleshootingEvents", @troubleshooting_events)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformance", @user_experience_analytics_app_health_application_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails", @user_experience_analytics_app_health_application_performance_by_app_version_details)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId", @user_experience_analytics_app_health_application_performance_by_app_version_device_id)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion", @user_experience_analytics_app_health_application_performance_by_o_s_version)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthDeviceModelPerformance", @user_experience_analytics_app_health_device_model_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthDevicePerformance", @user_experience_analytics_app_health_device_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthDevicePerformanceDetails", @user_experience_analytics_app_health_device_performance_details)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthOSVersionPerformance", @user_experience_analytics_app_health_o_s_version_performance)
                writer.write_object_value("userExperienceAnalyticsAppHealthOverview", @user_experience_analytics_app_health_overview)
                writer.write_collection_of_object_values("userExperienceAnalyticsBaselines", @user_experience_analytics_baselines)
                writer.write_collection_of_object_values("userExperienceAnalyticsCategories", @user_experience_analytics_categories)
                writer.write_collection_of_object_values("userExperienceAnalyticsDevicePerformance", @user_experience_analytics_device_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceScores", @user_experience_analytics_device_scores)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceStartupHistory", @user_experience_analytics_device_startup_history)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceStartupProcesses", @user_experience_analytics_device_startup_processes)
                writer.write_collection_of_object_values("userExperienceAnalyticsMetricHistory", @user_experience_analytics_metric_history)
                writer.write_collection_of_object_values("userExperienceAnalyticsModelScores", @user_experience_analytics_model_scores)
                writer.write_object_value("userExperienceAnalyticsOverview", @user_experience_analytics_overview)
                writer.write_collection_of_object_values("userExperienceAnalyticsScoreHistory", @user_experience_analytics_score_history)
                writer.write_object_value("userExperienceAnalyticsSettings", @user_experience_analytics_settings)
                writer.write_object_value("userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric", @user_experience_analytics_work_from_anywhere_hardware_readiness_metric)
                writer.write_collection_of_object_values("userExperienceAnalyticsWorkFromAnywhereMetrics", @user_experience_analytics_work_from_anywhere_metrics)
                writer.write_collection_of_object_values("userExperienceAnalyticsWorkFromAnywhereModelPerformance", @user_experience_analytics_work_from_anywhere_model_performance)
                writer.write_collection_of_object_values("windowsAutopilotDeviceIdentities", @windows_autopilot_device_identities)
                writer.write_collection_of_object_values("windowsInformationProtectionAppLearningSummaries", @windows_information_protection_app_learning_summaries)
                writer.write_collection_of_object_values("windowsInformationProtectionNetworkLearningSummaries", @windows_information_protection_network_learning_summaries)
                writer.write_collection_of_object_values("windowsMalwareInformation", @windows_malware_information)
                writer.write_object_value("windowsMalwareOverview", @windows_malware_overview)
            end
            ## 
            ## Gets the settings property value. Account level settings.
            ## @return a device_management_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Account level settings.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the softwareUpdateStatusSummary property value. The software update status summary.
            ## @return a software_update_status_summary
            ## 
            def software_update_status_summary
                return @software_update_status_summary
            end
            ## 
            ## Sets the softwareUpdateStatusSummary property value. The software update status summary.
            ## @param value Value to set for the software_update_status_summary property.
            ## @return a void
            ## 
            def software_update_status_summary=(value)
                @software_update_status_summary = value
            end
            ## 
            ## Gets the subscriptionState property value. Tenant mobile device management subscription state.
            ## @return a device_management_subscription_state
            ## 
            def subscription_state
                return @subscription_state
            end
            ## 
            ## Sets the subscriptionState property value. Tenant mobile device management subscription state.
            ## @param value Value to set for the subscription_state property.
            ## @return a void
            ## 
            def subscription_state=(value)
                @subscription_state = value
            end
            ## 
            ## Gets the telecomExpenseManagementPartners property value. The telecom expense management partners.
            ## @return a telecom_expense_management_partner
            ## 
            def telecom_expense_management_partners
                return @telecom_expense_management_partners
            end
            ## 
            ## Sets the telecomExpenseManagementPartners property value. The telecom expense management partners.
            ## @param value Value to set for the telecom_expense_management_partners property.
            ## @return a void
            ## 
            def telecom_expense_management_partners=(value)
                @telecom_expense_management_partners = value
            end
            ## 
            ## Gets the termsAndConditions property value. The terms and conditions associated with device management of the company.
            ## @return a terms_and_conditions
            ## 
            def terms_and_conditions
                return @terms_and_conditions
            end
            ## 
            ## Sets the termsAndConditions property value. The terms and conditions associated with device management of the company.
            ## @param value Value to set for the terms_and_conditions property.
            ## @return a void
            ## 
            def terms_and_conditions=(value)
                @terms_and_conditions = value
            end
            ## 
            ## Gets the troubleshootingEvents property value. The list of troubleshooting events for the tenant.
            ## @return a device_management_troubleshooting_event
            ## 
            def troubleshooting_events
                return @troubleshooting_events
            end
            ## 
            ## Sets the troubleshootingEvents property value. The list of troubleshooting events for the tenant.
            ## @param value Value to set for the troubleshooting_events property.
            ## @return a void
            ## 
            def troubleshooting_events=(value)
                @troubleshooting_events = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformance property value. User experience analytics appHealth Application Performance
            ## @return a user_experience_analytics_app_health_application_performance
            ## 
            def user_experience_analytics_app_health_application_performance
                return @user_experience_analytics_app_health_application_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformance property value. User experience analytics appHealth Application Performance
            ## @param value Value to set for the user_experience_analytics_app_health_application_performance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance=(value)
                @user_experience_analytics_app_health_application_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails property value. User experience analytics appHealth Application Performance by App Version details
            ## @return a user_experience_analytics_app_health_app_performance_by_app_version_details
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_details
                return @user_experience_analytics_app_health_application_performance_by_app_version_details
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails property value. User experience analytics appHealth Application Performance by App Version details
            ## @param value Value to set for the user_experience_analytics_app_health_application_performance_by_app_version_details property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_details=(value)
                @user_experience_analytics_app_health_application_performance_by_app_version_details = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId property value. User experience analytics appHealth Application Performance by App Version Device Id
            ## @return a user_experience_analytics_app_health_app_performance_by_app_version_device_id
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_device_id
                return @user_experience_analytics_app_health_application_performance_by_app_version_device_id
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId property value. User experience analytics appHealth Application Performance by App Version Device Id
            ## @param value Value to set for the user_experience_analytics_app_health_application_performance_by_app_version_device_id property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_device_id=(value)
                @user_experience_analytics_app_health_application_performance_by_app_version_device_id = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion property value. User experience analytics appHealth Application Performance by OS Version
            ## @return a user_experience_analytics_app_health_app_performance_by_o_s_version
            ## 
            def user_experience_analytics_app_health_application_performance_by_o_s_version
                return @user_experience_analytics_app_health_application_performance_by_o_s_version
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion property value. User experience analytics appHealth Application Performance by OS Version
            ## @param value Value to set for the user_experience_analytics_app_health_application_performance_by_o_s_version property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance_by_o_s_version=(value)
                @user_experience_analytics_app_health_application_performance_by_o_s_version = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthDeviceModelPerformance property value. User experience analytics appHealth Model Performance
            ## @return a user_experience_analytics_app_health_device_model_performance
            ## 
            def user_experience_analytics_app_health_device_model_performance
                return @user_experience_analytics_app_health_device_model_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthDeviceModelPerformance property value. User experience analytics appHealth Model Performance
            ## @param value Value to set for the user_experience_analytics_app_health_device_model_performance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_device_model_performance=(value)
                @user_experience_analytics_app_health_device_model_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthDevicePerformance property value. User experience analytics appHealth Device Performance
            ## @return a user_experience_analytics_app_health_device_performance
            ## 
            def user_experience_analytics_app_health_device_performance
                return @user_experience_analytics_app_health_device_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthDevicePerformance property value. User experience analytics appHealth Device Performance
            ## @param value Value to set for the user_experience_analytics_app_health_device_performance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_device_performance=(value)
                @user_experience_analytics_app_health_device_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthDevicePerformanceDetails property value. User experience analytics device performance details
            ## @return a user_experience_analytics_app_health_device_performance_details
            ## 
            def user_experience_analytics_app_health_device_performance_details
                return @user_experience_analytics_app_health_device_performance_details
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthDevicePerformanceDetails property value. User experience analytics device performance details
            ## @param value Value to set for the user_experience_analytics_app_health_device_performance_details property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_device_performance_details=(value)
                @user_experience_analytics_app_health_device_performance_details = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthOSVersionPerformance property value. User experience analytics appHealth OS version Performance
            ## @return a user_experience_analytics_app_health_o_s_version_performance
            ## 
            def user_experience_analytics_app_health_o_s_version_performance
                return @user_experience_analytics_app_health_o_s_version_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthOSVersionPerformance property value. User experience analytics appHealth OS version Performance
            ## @param value Value to set for the user_experience_analytics_app_health_o_s_version_performance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_o_s_version_performance=(value)
                @user_experience_analytics_app_health_o_s_version_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthOverview property value. User experience analytics appHealth overview
            ## @return a user_experience_analytics_category
            ## 
            def user_experience_analytics_app_health_overview
                return @user_experience_analytics_app_health_overview
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthOverview property value. User experience analytics appHealth overview
            ## @param value Value to set for the user_experience_analytics_app_health_overview property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_overview=(value)
                @user_experience_analytics_app_health_overview = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBaselines property value. User experience analytics baselines
            ## @return a user_experience_analytics_baseline
            ## 
            def user_experience_analytics_baselines
                return @user_experience_analytics_baselines
            end
            ## 
            ## Sets the userExperienceAnalyticsBaselines property value. User experience analytics baselines
            ## @param value Value to set for the user_experience_analytics_baselines property.
            ## @return a void
            ## 
            def user_experience_analytics_baselines=(value)
                @user_experience_analytics_baselines = value
            end
            ## 
            ## Gets the userExperienceAnalyticsCategories property value. User experience analytics categories
            ## @return a user_experience_analytics_category
            ## 
            def user_experience_analytics_categories
                return @user_experience_analytics_categories
            end
            ## 
            ## Sets the userExperienceAnalyticsCategories property value. User experience analytics categories
            ## @param value Value to set for the user_experience_analytics_categories property.
            ## @return a void
            ## 
            def user_experience_analytics_categories=(value)
                @user_experience_analytics_categories = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDevicePerformance property value. User experience analytics device performance
            ## @return a user_experience_analytics_device_performance
            ## 
            def user_experience_analytics_device_performance
                return @user_experience_analytics_device_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsDevicePerformance property value. User experience analytics device performance
            ## @param value Value to set for the user_experience_analytics_device_performance property.
            ## @return a void
            ## 
            def user_experience_analytics_device_performance=(value)
                @user_experience_analytics_device_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceScores property value. User experience analytics device scores
            ## @return a user_experience_analytics_device_scores
            ## 
            def user_experience_analytics_device_scores
                return @user_experience_analytics_device_scores
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceScores property value. User experience analytics device scores
            ## @param value Value to set for the user_experience_analytics_device_scores property.
            ## @return a void
            ## 
            def user_experience_analytics_device_scores=(value)
                @user_experience_analytics_device_scores = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceStartupHistory property value. User experience analytics device Startup History
            ## @return a user_experience_analytics_device_startup_history
            ## 
            def user_experience_analytics_device_startup_history
                return @user_experience_analytics_device_startup_history
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceStartupHistory property value. User experience analytics device Startup History
            ## @param value Value to set for the user_experience_analytics_device_startup_history property.
            ## @return a void
            ## 
            def user_experience_analytics_device_startup_history=(value)
                @user_experience_analytics_device_startup_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceStartupProcesses property value. User experience analytics device Startup Processes
            ## @return a user_experience_analytics_device_startup_process
            ## 
            def user_experience_analytics_device_startup_processes
                return @user_experience_analytics_device_startup_processes
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceStartupProcesses property value. User experience analytics device Startup Processes
            ## @param value Value to set for the user_experience_analytics_device_startup_processes property.
            ## @return a void
            ## 
            def user_experience_analytics_device_startup_processes=(value)
                @user_experience_analytics_device_startup_processes = value
            end
            ## 
            ## Gets the userExperienceAnalyticsMetricHistory property value. User experience analytics metric history
            ## @return a user_experience_analytics_metric_history
            ## 
            def user_experience_analytics_metric_history
                return @user_experience_analytics_metric_history
            end
            ## 
            ## Sets the userExperienceAnalyticsMetricHistory property value. User experience analytics metric history
            ## @param value Value to set for the user_experience_analytics_metric_history property.
            ## @return a void
            ## 
            def user_experience_analytics_metric_history=(value)
                @user_experience_analytics_metric_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsModelScores property value. User experience analytics model scores
            ## @return a user_experience_analytics_model_scores
            ## 
            def user_experience_analytics_model_scores
                return @user_experience_analytics_model_scores
            end
            ## 
            ## Sets the userExperienceAnalyticsModelScores property value. User experience analytics model scores
            ## @param value Value to set for the user_experience_analytics_model_scores property.
            ## @return a void
            ## 
            def user_experience_analytics_model_scores=(value)
                @user_experience_analytics_model_scores = value
            end
            ## 
            ## Gets the userExperienceAnalyticsOverview property value. User experience analytics overview
            ## @return a user_experience_analytics_overview
            ## 
            def user_experience_analytics_overview
                return @user_experience_analytics_overview
            end
            ## 
            ## Sets the userExperienceAnalyticsOverview property value. User experience analytics overview
            ## @param value Value to set for the user_experience_analytics_overview property.
            ## @return a void
            ## 
            def user_experience_analytics_overview=(value)
                @user_experience_analytics_overview = value
            end
            ## 
            ## Gets the userExperienceAnalyticsScoreHistory property value. User experience analytics device Startup Score History
            ## @return a user_experience_analytics_score_history
            ## 
            def user_experience_analytics_score_history
                return @user_experience_analytics_score_history
            end
            ## 
            ## Sets the userExperienceAnalyticsScoreHistory property value. User experience analytics device Startup Score History
            ## @param value Value to set for the user_experience_analytics_score_history property.
            ## @return a void
            ## 
            def user_experience_analytics_score_history=(value)
                @user_experience_analytics_score_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsSettings property value. User experience analytics device settings
            ## @return a user_experience_analytics_settings
            ## 
            def user_experience_analytics_settings
                return @user_experience_analytics_settings
            end
            ## 
            ## Sets the userExperienceAnalyticsSettings property value. User experience analytics device settings
            ## @param value Value to set for the user_experience_analytics_settings property.
            ## @return a void
            ## 
            def user_experience_analytics_settings=(value)
                @user_experience_analytics_settings = value
            end
            ## 
            ## Gets the userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric property value. User experience analytics work from anywhere hardware readiness metrics.
            ## @return a user_experience_analytics_work_from_anywhere_hardware_readiness_metric
            ## 
            def user_experience_analytics_work_from_anywhere_hardware_readiness_metric
                return @user_experience_analytics_work_from_anywhere_hardware_readiness_metric
            end
            ## 
            ## Sets the userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric property value. User experience analytics work from anywhere hardware readiness metrics.
            ## @param value Value to set for the user_experience_analytics_work_from_anywhere_hardware_readiness_metric property.
            ## @return a void
            ## 
            def user_experience_analytics_work_from_anywhere_hardware_readiness_metric=(value)
                @user_experience_analytics_work_from_anywhere_hardware_readiness_metric = value
            end
            ## 
            ## Gets the userExperienceAnalyticsWorkFromAnywhereMetrics property value. User experience analytics work from anywhere metrics.
            ## @return a user_experience_analytics_work_from_anywhere_metric
            ## 
            def user_experience_analytics_work_from_anywhere_metrics
                return @user_experience_analytics_work_from_anywhere_metrics
            end
            ## 
            ## Sets the userExperienceAnalyticsWorkFromAnywhereMetrics property value. User experience analytics work from anywhere metrics.
            ## @param value Value to set for the user_experience_analytics_work_from_anywhere_metrics property.
            ## @return a void
            ## 
            def user_experience_analytics_work_from_anywhere_metrics=(value)
                @user_experience_analytics_work_from_anywhere_metrics = value
            end
            ## 
            ## Gets the userExperienceAnalyticsWorkFromAnywhereModelPerformance property value. The user experience analytics work from anywhere model performance
            ## @return a user_experience_analytics_work_from_anywhere_model_performance
            ## 
            def user_experience_analytics_work_from_anywhere_model_performance
                return @user_experience_analytics_work_from_anywhere_model_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsWorkFromAnywhereModelPerformance property value. The user experience analytics work from anywhere model performance
            ## @param value Value to set for the user_experience_analytics_work_from_anywhere_model_performance property.
            ## @return a void
            ## 
            def user_experience_analytics_work_from_anywhere_model_performance=(value)
                @user_experience_analytics_work_from_anywhere_model_performance = value
            end
            ## 
            ## Gets the windowsAutopilotDeviceIdentities property value. The Windows autopilot device identities contained collection.
            ## @return a windows_autopilot_device_identity
            ## 
            def windows_autopilot_device_identities
                return @windows_autopilot_device_identities
            end
            ## 
            ## Sets the windowsAutopilotDeviceIdentities property value. The Windows autopilot device identities contained collection.
            ## @param value Value to set for the windows_autopilot_device_identities property.
            ## @return a void
            ## 
            def windows_autopilot_device_identities=(value)
                @windows_autopilot_device_identities = value
            end
            ## 
            ## Gets the windowsInformationProtectionAppLearningSummaries property value. The windows information protection app learning summaries.
            ## @return a windows_information_protection_app_learning_summary
            ## 
            def windows_information_protection_app_learning_summaries
                return @windows_information_protection_app_learning_summaries
            end
            ## 
            ## Sets the windowsInformationProtectionAppLearningSummaries property value. The windows information protection app learning summaries.
            ## @param value Value to set for the windows_information_protection_app_learning_summaries property.
            ## @return a void
            ## 
            def windows_information_protection_app_learning_summaries=(value)
                @windows_information_protection_app_learning_summaries = value
            end
            ## 
            ## Gets the windowsInformationProtectionNetworkLearningSummaries property value. The windows information protection network learning summaries.
            ## @return a windows_information_protection_network_learning_summary
            ## 
            def windows_information_protection_network_learning_summaries
                return @windows_information_protection_network_learning_summaries
            end
            ## 
            ## Sets the windowsInformationProtectionNetworkLearningSummaries property value. The windows information protection network learning summaries.
            ## @param value Value to set for the windows_information_protection_network_learning_summaries property.
            ## @return a void
            ## 
            def windows_information_protection_network_learning_summaries=(value)
                @windows_information_protection_network_learning_summaries = value
            end
            ## 
            ## Gets the windowsMalwareInformation property value. The list of affected malware in the tenant.
            ## @return a windows_malware_information
            ## 
            def windows_malware_information
                return @windows_malware_information
            end
            ## 
            ## Sets the windowsMalwareInformation property value. The list of affected malware in the tenant.
            ## @param value Value to set for the windows_malware_information property.
            ## @return a void
            ## 
            def windows_malware_information=(value)
                @windows_malware_information = value
            end
            ## 
            ## Gets the windowsMalwareOverview property value. Malware overview for windows devices.
            ## @return a windows_malware_overview
            ## 
            def windows_malware_overview
                return @windows_malware_overview
            end
            ## 
            ## Sets the windowsMalwareOverview property value. Malware overview for windows devices.
            ## @param value Value to set for the windows_malware_overview property.
            ## @return a void
            ## 
            def windows_malware_overview=(value)
                @windows_malware_overview = value
            end
        end
    end
end
