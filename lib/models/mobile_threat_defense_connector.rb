require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    ## 
    # Entity which represents a connection to Mobile threat defense partner.
    class MobileThreatDefenseConnector < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant
        @android_device_blocked_on_missing_partner_data
        ## 
        # For Android, set whether data from the data sync partner should be used during compliance evaluations
        @android_enabled
        ## 
        # For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant
        @ios_device_blocked_on_missing_partner_data
        ## 
        # For IOS, get or set whether data from the data sync partner should be used during compliance evaluations
        @ios_enabled
        ## 
        # DateTime of last Heartbeat recieved from the Data Sync Partner
        @last_heartbeat_date_time
        ## 
        # Partner state of this tenant.
        @partner_state
        ## 
        # Get or Set days the per tenant tolerance to unresponsiveness for this partner integration
        @partner_unresponsiveness_threshold_in_days
        ## 
        # Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner
        @partner_unsupported_os_version_blocked
        ## 
        ## Gets the androidDeviceBlockedOnMissingPartnerData property value. For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant
        ## @return a boolean
        ## 
        def android_device_blocked_on_missing_partner_data
            return @android_device_blocked_on_missing_partner_data
        end
        ## 
        ## Sets the androidDeviceBlockedOnMissingPartnerData property value. For Android, set whether Intune must receive data from the data sync partner prior to marking a device compliant
        ## @param value Value to set for the androidDeviceBlockedOnMissingPartnerData property.
        ## @return a void
        ## 
        def android_device_blocked_on_missing_partner_data=(value)
            @android_device_blocked_on_missing_partner_data = value
        end
        ## 
        ## Gets the androidEnabled property value. For Android, set whether data from the data sync partner should be used during compliance evaluations
        ## @return a boolean
        ## 
        def android_enabled
            return @android_enabled
        end
        ## 
        ## Sets the androidEnabled property value. For Android, set whether data from the data sync partner should be used during compliance evaluations
        ## @param value Value to set for the androidEnabled property.
        ## @return a void
        ## 
        def android_enabled=(value)
            @android_enabled = value
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
                "androidDeviceBlockedOnMissingPartnerData" => lambda {|n| @android_device_blocked_on_missing_partner_data = n.get_boolean_value() },
                "androidEnabled" => lambda {|n| @android_enabled = n.get_boolean_value() },
                "iosDeviceBlockedOnMissingPartnerData" => lambda {|n| @ios_device_blocked_on_missing_partner_data = n.get_boolean_value() },
                "iosEnabled" => lambda {|n| @ios_enabled = n.get_boolean_value() },
                "lastHeartbeatDateTime" => lambda {|n| @last_heartbeat_date_time = n.get_date_time_value() },
                "partnerState" => lambda {|n| @partner_state = n.get_enum_value(MicrosoftGraph::Models::MobileThreatPartnerTenantState) },
                "partnerUnresponsivenessThresholdInDays" => lambda {|n| @partner_unresponsiveness_threshold_in_days = n.get_number_value() },
                "partnerUnsupportedOsVersionBlocked" => lambda {|n| @partner_unsupported_os_version_blocked = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the iosDeviceBlockedOnMissingPartnerData property value. For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant
        ## @return a boolean
        ## 
        def ios_device_blocked_on_missing_partner_data
            return @ios_device_blocked_on_missing_partner_data
        end
        ## 
        ## Sets the iosDeviceBlockedOnMissingPartnerData property value. For IOS, set whether Intune must receive data from the data sync partner prior to marking a device compliant
        ## @param value Value to set for the iosDeviceBlockedOnMissingPartnerData property.
        ## @return a void
        ## 
        def ios_device_blocked_on_missing_partner_data=(value)
            @ios_device_blocked_on_missing_partner_data = value
        end
        ## 
        ## Gets the iosEnabled property value. For IOS, get or set whether data from the data sync partner should be used during compliance evaluations
        ## @return a boolean
        ## 
        def ios_enabled
            return @ios_enabled
        end
        ## 
        ## Sets the iosEnabled property value. For IOS, get or set whether data from the data sync partner should be used during compliance evaluations
        ## @param value Value to set for the iosEnabled property.
        ## @return a void
        ## 
        def ios_enabled=(value)
            @ios_enabled = value
        end
        ## 
        ## Gets the lastHeartbeatDateTime property value. DateTime of last Heartbeat recieved from the Data Sync Partner
        ## @return a date_time
        ## 
        def last_heartbeat_date_time
            return @last_heartbeat_date_time
        end
        ## 
        ## Sets the lastHeartbeatDateTime property value. DateTime of last Heartbeat recieved from the Data Sync Partner
        ## @param value Value to set for the lastHeartbeatDateTime property.
        ## @return a void
        ## 
        def last_heartbeat_date_time=(value)
            @last_heartbeat_date_time = value
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
        ## @param value Value to set for the partnerState property.
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
        ## @param value Value to set for the partnerUnresponsivenessThresholdInDays property.
        ## @return a void
        ## 
        def partner_unresponsiveness_threshold_in_days=(value)
            @partner_unresponsiveness_threshold_in_days = value
        end
        ## 
        ## Gets the partnerUnsupportedOsVersionBlocked property value. Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner
        ## @return a boolean
        ## 
        def partner_unsupported_os_version_blocked
            return @partner_unsupported_os_version_blocked
        end
        ## 
        ## Sets the partnerUnsupportedOsVersionBlocked property value. Get or set whether to block devices on the enabled platforms that do not meet the minimum version requirements of the Data Sync Partner
        ## @param value Value to set for the partnerUnsupportedOsVersionBlocked property.
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
            writer.write_boolean_value("androidDeviceBlockedOnMissingPartnerData", @android_device_blocked_on_missing_partner_data)
            writer.write_boolean_value("androidEnabled", @android_enabled)
            writer.write_boolean_value("iosDeviceBlockedOnMissingPartnerData", @ios_device_blocked_on_missing_partner_data)
            writer.write_boolean_value("iosEnabled", @ios_enabled)
            writer.write_date_time_value("lastHeartbeatDateTime", @last_heartbeat_date_time)
            writer.write_enum_value("partnerState", @partner_state)
            writer.write_number_value("partnerUnresponsivenessThresholdInDays", @partner_unresponsiveness_threshold_in_days)
            writer.write_boolean_value("partnerUnsupportedOsVersionBlocked", @partner_unsupported_os_version_blocked)
        end
    end
end
