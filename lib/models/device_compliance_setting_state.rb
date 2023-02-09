require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device compliance setting State for a given device.
        class DeviceComplianceSettingState < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The DateTime when device compliance grace period expires
            @compliance_grace_period_expiration_date_time
            ## 
            # The Device Id that is being reported
            @device_id
            ## 
            # The device model that is being reported
            @device_model
            ## 
            # The Device Name that is being reported
            @device_name
            ## 
            # The setting class name and property name.
            @setting
            ## 
            # The Setting Name that is being reported
            @setting_name
            ## 
            # The state property
            @state
            ## 
            # The User email address that is being reported
            @user_email
            ## 
            # The user Id that is being reported
            @user_id
            ## 
            # The User Name that is being reported
            @user_name
            ## 
            # The User PrincipalName that is being reported
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
            ## Instantiates a new deviceComplianceSettingState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_setting_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComplianceSettingState.new
            end
            ## 
            ## Gets the deviceId property value. The Device Id that is being reported
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The Device Id that is being reported
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
            ## Gets the deviceName property value. The Device Name that is being reported
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The Device Name that is being reported
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "complianceGracePeriodExpirationDateTime" => lambda {|n| @compliance_grace_period_expiration_date_time = n.get_date_time_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "setting" => lambda {|n| @setting = n.get_string_value() },
                    "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::ComplianceStatus) },
                    "userEmail" => lambda {|n| @user_email = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
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
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("setting", @setting)
                writer.write_string_value("settingName", @setting_name)
                writer.write_enum_value("state", @state)
                writer.write_string_value("userEmail", @user_email)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userName", @user_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the setting property value. The setting class name and property name.
            ## @return a string
            ## 
            def setting
                return @setting
            end
            ## 
            ## Sets the setting property value. The setting class name and property name.
            ## @param value Value to set for the setting property.
            ## @return a void
            ## 
            def setting=(value)
                @setting = value
            end
            ## 
            ## Gets the settingName property value. The Setting Name that is being reported
            ## @return a string
            ## 
            def setting_name
                return @setting_name
            end
            ## 
            ## Sets the settingName property value. The Setting Name that is being reported
            ## @param value Value to set for the setting_name property.
            ## @return a void
            ## 
            def setting_name=(value)
                @setting_name = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a compliance_status
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the userEmail property value. The User email address that is being reported
            ## @return a string
            ## 
            def user_email
                return @user_email
            end
            ## 
            ## Sets the userEmail property value. The User email address that is being reported
            ## @param value Value to set for the user_email property.
            ## @return a void
            ## 
            def user_email=(value)
                @user_email = value
            end
            ## 
            ## Gets the userId property value. The user Id that is being reported
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The user Id that is being reported
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
            ## Gets the userPrincipalName property value. The User PrincipalName that is being reported
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The User PrincipalName that is being reported
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
