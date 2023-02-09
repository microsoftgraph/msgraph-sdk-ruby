require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosUpdateDeviceStatus < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The DateTime when device compliance grace period expires
            @compliance_grace_period_expiration_date_time
            ## 
            # Device name of the DevicePolicyStatus.
            @device_display_name
            ## 
            # The device id that is being reported.
            @device_id
            ## 
            # The device model that is being reported
            @device_model
            ## 
            # The installStatus property
            @install_status
            ## 
            # Last modified date time of the policy report.
            @last_reported_date_time
            ## 
            # The device version that is being reported.
            @os_version
            ## 
            # The status property
            @status
            ## 
            # The User id that is being reported.
            @user_id
            ## 
            # The User Name that is being reported
            @user_name
            ## 
            # UserPrincipalName.
            @user_principal_name
            ## 
            ## Gets the complianceGracePeriodExpirationDateTime property value. The DateTime when device compliance grace period expires
            ## @return a date_time
            ## 
            def compliance_grace_period_expiration_date_time
                return @compliance_grace_period_expiration_date_time
            end
            ## 
            ## Sets the complianceGracePeriodExpirationDateTime property value. The DateTime when device compliance grace period expires
            ## @param value Value to set for the compliance_grace_period_expiration_date_time property.
            ## @return a void
            ## 
            def compliance_grace_period_expiration_date_time=(value)
                @compliance_grace_period_expiration_date_time = value
            end
            ## 
            ## Instantiates a new iosUpdateDeviceStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_update_device_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosUpdateDeviceStatus.new
            end
            ## 
            ## Gets the deviceDisplayName property value. Device name of the DevicePolicyStatus.
            ## @return a string
            ## 
            def device_display_name
                return @device_display_name
            end
            ## 
            ## Sets the deviceDisplayName property value. Device name of the DevicePolicyStatus.
            ## @param value Value to set for the device_display_name property.
            ## @return a void
            ## 
            def device_display_name=(value)
                @device_display_name = value
            end
            ## 
            ## Gets the deviceId property value. The device id that is being reported.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The device id that is being reported.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceModel property value. The device model that is being reported
            ## @return a string
            ## 
            def device_model
                return @device_model
            end
            ## 
            ## Sets the deviceModel property value. The device model that is being reported
            ## @param value Value to set for the device_model property.
            ## @return a void
            ## 
            def device_model=(value)
                @device_model = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "complianceGracePeriodExpirationDateTime" => lambda {|n| @compliance_grace_period_expiration_date_time = n.get_date_time_value() },
                    "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "installStatus" => lambda {|n| @install_status = n.get_enum_value(MicrosoftGraph::Models::IosUpdatesInstallStatus) },
                    "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ComplianceStatus) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the installStatus property value. The installStatus property
            ## @return a ios_updates_install_status
            ## 
            def install_status
                return @install_status
            end
            ## 
            ## Sets the installStatus property value. The installStatus property
            ## @param value Value to set for the install_status property.
            ## @return a void
            ## 
            def install_status=(value)
                @install_status = value
            end
            ## 
            ## Gets the lastReportedDateTime property value. Last modified date time of the policy report.
            ## @return a date_time
            ## 
            def last_reported_date_time
                return @last_reported_date_time
            end
            ## 
            ## Sets the lastReportedDateTime property value. Last modified date time of the policy report.
            ## @param value Value to set for the last_reported_date_time property.
            ## @return a void
            ## 
            def last_reported_date_time=(value)
                @last_reported_date_time = value
            end
            ## 
            ## Gets the osVersion property value. The device version that is being reported.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The device version that is being reported.
            ## @param value Value to set for the os_version property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("complianceGracePeriodExpirationDateTime", @compliance_grace_period_expiration_date_time)
                writer.write_string_value("deviceDisplayName", @device_display_name)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_enum_value("installStatus", @install_status)
                writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
                writer.write_string_value("osVersion", @os_version)
                writer.write_enum_value("status", @status)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userName", @user_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a compliance_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the userId property value. The User id that is being reported.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The User id that is being reported.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userName property value. The User Name that is being reported
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. The User Name that is being reported
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. UserPrincipalName.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. UserPrincipalName.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
