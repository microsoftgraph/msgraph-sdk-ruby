require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device Compilance Policy Setting State for a given device.
        class DeviceCompliancePolicySettingState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Current value of setting on device
            @current_value
            ## 
            # Error code for the setting
            @error_code
            ## 
            # Error description
            @error_description
            ## 
            # Name of setting instance that is being reported.
            @instance_display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The setting that is being reported
            @setting
            ## 
            # Localized/user friendly setting name that is being reported
            @setting_name
            ## 
            # Contributing policies
            @sources
            ## 
            # The state property
            @state
            ## 
            # UserEmail
            @user_email
            ## 
            # UserId
            @user_id
            ## 
            # UserName
            @user_name
            ## 
            # UserPrincipalName.
            @user_principal_name
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new deviceCompliancePolicySettingState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_policy_setting_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceCompliancePolicySettingState.new
            end
            ## 
            ## Gets the currentValue property value. Current value of setting on device
            ## @return a string
            ## 
            def current_value
                return @current_value
            end
            ## 
            ## Sets the currentValue property value. Current value of setting on device
            ## @param value Value to set for the current_value property.
            ## @return a void
            ## 
            def current_value=(value)
                @current_value = value
            end
            ## 
            ## Gets the errorCode property value. Error code for the setting
            ## @return a int64
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. Error code for the setting
            ## @param value Value to set for the error_code property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## Gets the errorDescription property value. Error description
            ## @return a string
            ## 
            def error_description
                return @error_description
            end
            ## 
            ## Sets the errorDescription property value. Error description
            ## @param value Value to set for the error_description property.
            ## @return a void
            ## 
            def error_description=(value)
                @error_description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "currentValue" => lambda {|n| @current_value = n.get_string_value() },
                    "errorCode" => lambda {|n| @error_code = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "errorDescription" => lambda {|n| @error_description = n.get_string_value() },
                    "instanceDisplayName" => lambda {|n| @instance_display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "setting" => lambda {|n| @setting = n.get_string_value() },
                    "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                    "sources" => lambda {|n| @sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SettingSource.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::ComplianceStatus) },
                    "userEmail" => lambda {|n| @user_email = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the instanceDisplayName property value. Name of setting instance that is being reported.
            ## @return a string
            ## 
            def instance_display_name
                return @instance_display_name
            end
            ## 
            ## Sets the instanceDisplayName property value. Name of setting instance that is being reported.
            ## @param value Value to set for the instance_display_name property.
            ## @return a void
            ## 
            def instance_display_name=(value)
                @instance_display_name = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("currentValue", @current_value)
                writer.write_object_value("errorCode", @error_code)
                writer.write_string_value("errorDescription", @error_description)
                writer.write_string_value("instanceDisplayName", @instance_display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("setting", @setting)
                writer.write_string_value("settingName", @setting_name)
                writer.write_collection_of_object_values("sources", @sources)
                writer.write_enum_value("state", @state)
                writer.write_string_value("userEmail", @user_email)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userName", @user_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the setting property value. The setting that is being reported
            ## @return a string
            ## 
            def setting
                return @setting
            end
            ## 
            ## Sets the setting property value. The setting that is being reported
            ## @param value Value to set for the setting property.
            ## @return a void
            ## 
            def setting=(value)
                @setting = value
            end
            ## 
            ## Gets the settingName property value. Localized/user friendly setting name that is being reported
            ## @return a string
            ## 
            def setting_name
                return @setting_name
            end
            ## 
            ## Sets the settingName property value. Localized/user friendly setting name that is being reported
            ## @param value Value to set for the setting_name property.
            ## @return a void
            ## 
            def setting_name=(value)
                @setting_name = value
            end
            ## 
            ## Gets the sources property value. Contributing policies
            ## @return a setting_source
            ## 
            def sources
                return @sources
            end
            ## 
            ## Sets the sources property value. Contributing policies
            ## @param value Value to set for the sources property.
            ## @return a void
            ## 
            def sources=(value)
                @sources = value
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
            ## Gets the userEmail property value. UserEmail
            ## @return a string
            ## 
            def user_email
                return @user_email
            end
            ## 
            ## Sets the userEmail property value. UserEmail
            ## @param value Value to set for the user_email property.
            ## @return a void
            ## 
            def user_email=(value)
                @user_email = value
            end
            ## 
            ## Gets the userId property value. UserId
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. UserId
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userName property value. UserName
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. UserName
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
