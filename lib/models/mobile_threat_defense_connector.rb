require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Entity which represents a connection to Mobile Threat Defense partner.
        class MobileThreatDefenseConnector < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, indicates the Mobile Threat Defense partner may collect metadata about installed applications from Intune for IOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about installed applications from Intune for IOS devices. Default value is FALSE.
            @allow_partner_to_collect_i_o_s_application_metadata
            ## 
            # When TRUE, indicates the Mobile Threat Defense partner may collect metadata about personally installed applications from Intune for IOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about personally installed applications from Intune for IOS devices. Default value is FALSE.
            @allow_partner_to_collect_i_o_s_personal_application_metadata
            ## 
            # For Android, set whether Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant
            @android_device_blocked_on_missing_partner_data
            ## 
            # For Android, set whether data from the Mobile Threat Defense partner should be used during compliance evaluations
            @android_enabled
            ## 
            # When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for Android devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for Android devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.
            @android_mobile_application_management_enabled
            ## 
            # For IOS, set whether Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant
            @ios_device_blocked_on_missing_partner_data
            ## 
            # For IOS, get or set whether data from the Mobile Threat Defense partner should be used during compliance evaluations
            @ios_enabled
            ## 
            # When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for IOS devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for IOS devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.
            @ios_mobile_application_management_enabled
            ## 
            # DateTime of last Heartbeat recieved from the Mobile Threat Defense partner
            @last_heartbeat_date_time
            ## 
            # When TRUE, inidicates that configuration profile management via Microsoft Defender for Endpoint is enabled. When FALSE, inidicates that configuration profile management via Microsoft Defender for Endpoint is disabled. Default value is FALSE.
            @microsoft_defender_for_endpoint_attach_enabled
            ## 
            # Partner state of this tenant.
            @partner_state
            ## 
            # Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
            @partner_unresponsiveness_threshold_in_days
            ## 
            # Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Mobile Threat Defense partner
            @partner_unsupported_os_version_blocked
            ## 
            # When TRUE, inidicates that Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant for Windows. When FALSE, inidicates that Intune may make a device compliant without receiving data from the Mobile Threat Defense partner for Windows. Default value is FALSE.
            @windows_device_blocked_on_missing_partner_data
            ## 
            # When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during compliance evaluations for Windows. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during compliance evaluations for Windows. Default value is FALSE.
            @windows_enabled
            ## 
            ## Gets the allowPartnerToCollectIOSApplicationMetadata property value. When TRUE, indicates the Mobile Threat Defense partner may collect metadata about installed applications from Intune for IOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about installed applications from Intune for IOS devices. Default value is FALSE.
            ## @return a boolean
            ## 
            def allow_partner_to_collect_i_o_s_application_metadata
                return @allow_partner_to_collect_i_o_s_application_metadata
            end
            ## 
            ## Sets the allowPartnerToCollectIOSApplicationMetadata property value. When TRUE, indicates the Mobile Threat Defense partner may collect metadata about installed applications from Intune for IOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about installed applications from Intune for IOS devices. Default value is FALSE.
            ## @param value Value to set for the allow_partner_to_collect_i_o_s_application_metadata property.
            ## @return a void
            ## 
            def allow_partner_to_collect_i_o_s_application_metadata=(value)
                @allow_partner_to_collect_i_o_s_application_metadata = value
            end
            ## 
            ## Gets the allowPartnerToCollectIOSPersonalApplicationMetadata property value. When TRUE, indicates the Mobile Threat Defense partner may collect metadata about personally installed applications from Intune for IOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about personally installed applications from Intune for IOS devices. Default value is FALSE.
            ## @return a boolean
            ## 
            def allow_partner_to_collect_i_o_s_personal_application_metadata
                return @allow_partner_to_collect_i_o_s_personal_application_metadata
            end
            ## 
            ## Sets the allowPartnerToCollectIOSPersonalApplicationMetadata property value. When TRUE, indicates the Mobile Threat Defense partner may collect metadata about personally installed applications from Intune for IOS devices. When FALSE, indicates the Mobile Threat Defense partner may not collect metadata about personally installed applications from Intune for IOS devices. Default value is FALSE.
            ## @param value Value to set for the allow_partner_to_collect_i_o_s_personal_application_metadata property.
            ## @return a void
            ## 
            def allow_partner_to_collect_i_o_s_personal_application_metadata=(value)
                @allow_partner_to_collect_i_o_s_personal_application_metadata = value
            end
            ## 
            ## Gets the androidDeviceBlockedOnMissingPartnerData property value. For Android, set whether Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant
            ## @return a boolean
            ## 
            def android_device_blocked_on_missing_partner_data
                return @android_device_blocked_on_missing_partner_data
            end
            ## 
            ## Sets the androidDeviceBlockedOnMissingPartnerData property value. For Android, set whether Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant
            ## @param value Value to set for the android_device_blocked_on_missing_partner_data property.
            ## @return a void
            ## 
            def android_device_blocked_on_missing_partner_data=(value)
                @android_device_blocked_on_missing_partner_data = value
            end
            ## 
            ## Gets the androidEnabled property value. For Android, set whether data from the Mobile Threat Defense partner should be used during compliance evaluations
            ## @return a boolean
            ## 
            def android_enabled
                return @android_enabled
            end
            ## 
            ## Sets the androidEnabled property value. For Android, set whether data from the Mobile Threat Defense partner should be used during compliance evaluations
            ## @param value Value to set for the android_enabled property.
            ## @return a void
            ## 
            def android_enabled=(value)
                @android_enabled = value
            end
            ## 
            ## Gets the androidMobileApplicationManagementEnabled property value. When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for Android devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for Android devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.
            ## @return a boolean
            ## 
            def android_mobile_application_management_enabled
                return @android_mobile_application_management_enabled
            end
            ## 
            ## Sets the androidMobileApplicationManagementEnabled property value. When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for Android devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for Android devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.
            ## @param value Value to set for the android_mobile_application_management_enabled property.
            ## @return a void
            ## 
            def android_mobile_application_management_enabled=(value)
                @android_mobile_application_management_enabled = value
            end
            ## 
            ## Instantiates a new mobileThreatDefenseConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mobile_threat_defense_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileThreatDefenseConnector.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowPartnerToCollectIOSApplicationMetadata" => lambda {|n| @allow_partner_to_collect_i_o_s_application_metadata = n.get_boolean_value() },
                    "allowPartnerToCollectIOSPersonalApplicationMetadata" => lambda {|n| @allow_partner_to_collect_i_o_s_personal_application_metadata = n.get_boolean_value() },
                    "androidDeviceBlockedOnMissingPartnerData" => lambda {|n| @android_device_blocked_on_missing_partner_data = n.get_boolean_value() },
                    "androidEnabled" => lambda {|n| @android_enabled = n.get_boolean_value() },
                    "androidMobileApplicationManagementEnabled" => lambda {|n| @android_mobile_application_management_enabled = n.get_boolean_value() },
                    "iosDeviceBlockedOnMissingPartnerData" => lambda {|n| @ios_device_blocked_on_missing_partner_data = n.get_boolean_value() },
                    "iosEnabled" => lambda {|n| @ios_enabled = n.get_boolean_value() },
                    "iosMobileApplicationManagementEnabled" => lambda {|n| @ios_mobile_application_management_enabled = n.get_boolean_value() },
                    "lastHeartbeatDateTime" => lambda {|n| @last_heartbeat_date_time = n.get_date_time_value() },
                    "microsoftDefenderForEndpointAttachEnabled" => lambda {|n| @microsoft_defender_for_endpoint_attach_enabled = n.get_boolean_value() },
                    "partnerState" => lambda {|n| @partner_state = n.get_enum_value(MicrosoftGraph::Models::MobileThreatPartnerTenantState) },
                    "partnerUnresponsivenessThresholdInDays" => lambda {|n| @partner_unresponsiveness_threshold_in_days = n.get_number_value() },
                    "partnerUnsupportedOsVersionBlocked" => lambda {|n| @partner_unsupported_os_version_blocked = n.get_boolean_value() },
                    "windowsDeviceBlockedOnMissingPartnerData" => lambda {|n| @windows_device_blocked_on_missing_partner_data = n.get_boolean_value() },
                    "windowsEnabled" => lambda {|n| @windows_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the iosDeviceBlockedOnMissingPartnerData property value. For IOS, set whether Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant
            ## @return a boolean
            ## 
            def ios_device_blocked_on_missing_partner_data
                return @ios_device_blocked_on_missing_partner_data
            end
            ## 
            ## Sets the iosDeviceBlockedOnMissingPartnerData property value. For IOS, set whether Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant
            ## @param value Value to set for the ios_device_blocked_on_missing_partner_data property.
            ## @return a void
            ## 
            def ios_device_blocked_on_missing_partner_data=(value)
                @ios_device_blocked_on_missing_partner_data = value
            end
            ## 
            ## Gets the iosEnabled property value. For IOS, get or set whether data from the Mobile Threat Defense partner should be used during compliance evaluations
            ## @return a boolean
            ## 
            def ios_enabled
                return @ios_enabled
            end
            ## 
            ## Sets the iosEnabled property value. For IOS, get or set whether data from the Mobile Threat Defense partner should be used during compliance evaluations
            ## @param value Value to set for the ios_enabled property.
            ## @return a void
            ## 
            def ios_enabled=(value)
                @ios_enabled = value
            end
            ## 
            ## Gets the iosMobileApplicationManagementEnabled property value. When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for IOS devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for IOS devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.
            ## @return a boolean
            ## 
            def ios_mobile_application_management_enabled
                return @ios_mobile_application_management_enabled
            end
            ## 
            ## Sets the iosMobileApplicationManagementEnabled property value. When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during Mobile Application Management (MAM) evaluations for IOS devices. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during Mobile Application Management (MAM) evaluations for IOS devices. Only one partner per platform may be enabled for Mobile Application Management (MAM) evaluation. Default value is FALSE.
            ## @param value Value to set for the ios_mobile_application_management_enabled property.
            ## @return a void
            ## 
            def ios_mobile_application_management_enabled=(value)
                @ios_mobile_application_management_enabled = value
            end
            ## 
            ## Gets the lastHeartbeatDateTime property value. DateTime of last Heartbeat recieved from the Mobile Threat Defense partner
            ## @return a date_time
            ## 
            def last_heartbeat_date_time
                return @last_heartbeat_date_time
            end
            ## 
            ## Sets the lastHeartbeatDateTime property value. DateTime of last Heartbeat recieved from the Mobile Threat Defense partner
            ## @param value Value to set for the last_heartbeat_date_time property.
            ## @return a void
            ## 
            def last_heartbeat_date_time=(value)
                @last_heartbeat_date_time = value
            end
            ## 
            ## Gets the microsoftDefenderForEndpointAttachEnabled property value. When TRUE, inidicates that configuration profile management via Microsoft Defender for Endpoint is enabled. When FALSE, inidicates that configuration profile management via Microsoft Defender for Endpoint is disabled. Default value is FALSE.
            ## @return a boolean
            ## 
            def microsoft_defender_for_endpoint_attach_enabled
                return @microsoft_defender_for_endpoint_attach_enabled
            end
            ## 
            ## Sets the microsoftDefenderForEndpointAttachEnabled property value. When TRUE, inidicates that configuration profile management via Microsoft Defender for Endpoint is enabled. When FALSE, inidicates that configuration profile management via Microsoft Defender for Endpoint is disabled. Default value is FALSE.
            ## @param value Value to set for the microsoft_defender_for_endpoint_attach_enabled property.
            ## @return a void
            ## 
            def microsoft_defender_for_endpoint_attach_enabled=(value)
                @microsoft_defender_for_endpoint_attach_enabled = value
            end
            ## 
            ## Gets the partnerState property value. Partner state of this tenant.
            ## @return a mobile_threat_partner_tenant_state
            ## 
            def partner_state
                return @partner_state
            end
            ## 
            ## Sets the partnerState property value. Partner state of this tenant.
            ## @param value Value to set for the partner_state property.
            ## @return a void
            ## 
            def partner_state=(value)
                @partner_state = value
            end
            ## 
            ## Gets the partnerUnresponsivenessThresholdInDays property value. Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
            ## @return a integer
            ## 
            def partner_unresponsiveness_threshold_in_days
                return @partner_unresponsiveness_threshold_in_days
            end
            ## 
            ## Sets the partnerUnresponsivenessThresholdInDays property value. Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
            ## @param value Value to set for the partner_unresponsiveness_threshold_in_days property.
            ## @return a void
            ## 
            def partner_unresponsiveness_threshold_in_days=(value)
                @partner_unresponsiveness_threshold_in_days = value
            end
            ## 
            ## Gets the partnerUnsupportedOsVersionBlocked property value. Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Mobile Threat Defense partner
            ## @return a boolean
            ## 
            def partner_unsupported_os_version_blocked
                return @partner_unsupported_os_version_blocked
            end
            ## 
            ## Sets the partnerUnsupportedOsVersionBlocked property value. Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Mobile Threat Defense partner
            ## @param value Value to set for the partner_unsupported_os_version_blocked property.
            ## @return a void
            ## 
            def partner_unsupported_os_version_blocked=(value)
                @partner_unsupported_os_version_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowPartnerToCollectIOSApplicationMetadata", @allow_partner_to_collect_i_o_s_application_metadata)
                writer.write_boolean_value("allowPartnerToCollectIOSPersonalApplicationMetadata", @allow_partner_to_collect_i_o_s_personal_application_metadata)
                writer.write_boolean_value("androidDeviceBlockedOnMissingPartnerData", @android_device_blocked_on_missing_partner_data)
                writer.write_boolean_value("androidEnabled", @android_enabled)
                writer.write_boolean_value("androidMobileApplicationManagementEnabled", @android_mobile_application_management_enabled)
                writer.write_boolean_value("iosDeviceBlockedOnMissingPartnerData", @ios_device_blocked_on_missing_partner_data)
                writer.write_boolean_value("iosEnabled", @ios_enabled)
                writer.write_boolean_value("iosMobileApplicationManagementEnabled", @ios_mobile_application_management_enabled)
                writer.write_date_time_value("lastHeartbeatDateTime", @last_heartbeat_date_time)
                writer.write_boolean_value("microsoftDefenderForEndpointAttachEnabled", @microsoft_defender_for_endpoint_attach_enabled)
                writer.write_enum_value("partnerState", @partner_state)
                writer.write_number_value("partnerUnresponsivenessThresholdInDays", @partner_unresponsiveness_threshold_in_days)
                writer.write_boolean_value("partnerUnsupportedOsVersionBlocked", @partner_unsupported_os_version_blocked)
                writer.write_boolean_value("windowsDeviceBlockedOnMissingPartnerData", @windows_device_blocked_on_missing_partner_data)
                writer.write_boolean_value("windowsEnabled", @windows_enabled)
            end
            ## 
            ## Gets the windowsDeviceBlockedOnMissingPartnerData property value. When TRUE, inidicates that Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant for Windows. When FALSE, inidicates that Intune may make a device compliant without receiving data from the Mobile Threat Defense partner for Windows. Default value is FALSE.
            ## @return a boolean
            ## 
            def windows_device_blocked_on_missing_partner_data
                return @windows_device_blocked_on_missing_partner_data
            end
            ## 
            ## Sets the windowsDeviceBlockedOnMissingPartnerData property value. When TRUE, inidicates that Intune must receive data from the Mobile Threat Defense partner prior to marking a device compliant for Windows. When FALSE, inidicates that Intune may make a device compliant without receiving data from the Mobile Threat Defense partner for Windows. Default value is FALSE.
            ## @param value Value to set for the windows_device_blocked_on_missing_partner_data property.
            ## @return a void
            ## 
            def windows_device_blocked_on_missing_partner_data=(value)
                @windows_device_blocked_on_missing_partner_data = value
            end
            ## 
            ## Gets the windowsEnabled property value. When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during compliance evaluations for Windows. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during compliance evaluations for Windows. Default value is FALSE.
            ## @return a boolean
            ## 
            def windows_enabled
                return @windows_enabled
            end
            ## 
            ## Sets the windowsEnabled property value. When TRUE, inidicates that data from the Mobile Threat Defense partner can be used during compliance evaluations for Windows. When FALSE, inidicates that data from the Mobile Threat Defense partner should not be used during compliance evaluations for Windows. Default value is FALSE.
            ## @param value Value to set for the windows_enabled property.
            ## @return a void
            ## 
            def windows_enabled=(value)
                @windows_enabled = value
            end
        end
    end
end
