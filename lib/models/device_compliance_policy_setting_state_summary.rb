require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device Compilance Policy Setting State summary across the account.
        class DeviceCompliancePolicySettingStateSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of compliant devices
            @compliant_device_count
            ## 
            # Number of conflict devices
            @conflict_device_count
            ## 
            # Not yet documented
            @device_compliance_setting_states
            ## 
            # Number of error devices
            @error_device_count
            ## 
            # Number of NonCompliant devices
            @non_compliant_device_count
            ## 
            # Number of not applicable devices
            @not_applicable_device_count
            ## 
            # Supported platform types for policies.
            @platform_type
            ## 
            # Number of remediated devices
            @remediated_device_count
            ## 
            # The setting class name and property name.
            @setting
            ## 
            # Name of the setting.
            @setting_name
            ## 
            # Number of unknown devices
            @unknown_device_count
            ## 
            ## Gets the compliantDeviceCount property value. Number of compliant devices
            ## @return a integer
            ## 
            def compliant_device_count
                return @compliant_device_count
            end
            ## 
            ## Sets the compliantDeviceCount property value. Number of compliant devices
            ## @param value Value to set for the compliant_device_count property.
            ## @return a void
            ## 
            def compliant_device_count=(value)
                @compliant_device_count = value
            end
            ## 
            ## Gets the conflictDeviceCount property value. Number of conflict devices
            ## @return a integer
            ## 
            def conflict_device_count
                return @conflict_device_count
            end
            ## 
            ## Sets the conflictDeviceCount property value. Number of conflict devices
            ## @param value Value to set for the conflict_device_count property.
            ## @return a void
            ## 
            def conflict_device_count=(value)
                @conflict_device_count = value
            end
            ## 
            ## Instantiates a new deviceCompliancePolicySettingStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_policy_setting_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceCompliancePolicySettingStateSummary.new
            end
            ## 
            ## Gets the deviceComplianceSettingStates property value. Not yet documented
            ## @return a device_compliance_setting_state
            ## 
            def device_compliance_setting_states
                return @device_compliance_setting_states
            end
            ## 
            ## Sets the deviceComplianceSettingStates property value. Not yet documented
            ## @param value Value to set for the device_compliance_setting_states property.
            ## @return a void
            ## 
            def device_compliance_setting_states=(value)
                @device_compliance_setting_states = value
            end
            ## 
            ## Gets the errorDeviceCount property value. Number of error devices
            ## @return a integer
            ## 
            def error_device_count
                return @error_device_count
            end
            ## 
            ## Sets the errorDeviceCount property value. Number of error devices
            ## @param value Value to set for the error_device_count property.
            ## @return a void
            ## 
            def error_device_count=(value)
                @error_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantDeviceCount" => lambda {|n| @compliant_device_count = n.get_number_value() },
                    "conflictDeviceCount" => lambda {|n| @conflict_device_count = n.get_number_value() },
                    "deviceComplianceSettingStates" => lambda {|n| @device_compliance_setting_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceComplianceSettingState.create_from_discriminator_value(pn) }) },
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "nonCompliantDeviceCount" => lambda {|n| @non_compliant_device_count = n.get_number_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "platformType" => lambda {|n| @platform_type = n.get_enum_value(MicrosoftGraph::Models::PolicyPlatformType) },
                    "remediatedDeviceCount" => lambda {|n| @remediated_device_count = n.get_number_value() },
                    "setting" => lambda {|n| @setting = n.get_string_value() },
                    "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the nonCompliantDeviceCount property value. Number of NonCompliant devices
            ## @return a integer
            ## 
            def non_compliant_device_count
                return @non_compliant_device_count
            end
            ## 
            ## Sets the nonCompliantDeviceCount property value. Number of NonCompliant devices
            ## @param value Value to set for the non_compliant_device_count property.
            ## @return a void
            ## 
            def non_compliant_device_count=(value)
                @non_compliant_device_count = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. Number of not applicable devices
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. Number of not applicable devices
            ## @param value Value to set for the not_applicable_device_count property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the platformType property value. Supported platform types for policies.
            ## @return a policy_platform_type
            ## 
            def platform_type
                return @platform_type
            end
            ## 
            ## Sets the platformType property value. Supported platform types for policies.
            ## @param value Value to set for the platform_type property.
            ## @return a void
            ## 
            def platform_type=(value)
                @platform_type = value
            end
            ## 
            ## Gets the remediatedDeviceCount property value. Number of remediated devices
            ## @return a integer
            ## 
            def remediated_device_count
                return @remediated_device_count
            end
            ## 
            ## Sets the remediatedDeviceCount property value. Number of remediated devices
            ## @param value Value to set for the remediated_device_count property.
            ## @return a void
            ## 
            def remediated_device_count=(value)
                @remediated_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("compliantDeviceCount", @compliant_device_count)
                writer.write_number_value("conflictDeviceCount", @conflict_device_count)
                writer.write_collection_of_object_values("deviceComplianceSettingStates", @device_compliance_setting_states)
                writer.write_number_value("errorDeviceCount", @error_device_count)
                writer.write_number_value("nonCompliantDeviceCount", @non_compliant_device_count)
                writer.write_number_value("notApplicableDeviceCount", @not_applicable_device_count)
                writer.write_enum_value("platformType", @platform_type)
                writer.write_number_value("remediatedDeviceCount", @remediated_device_count)
                writer.write_string_value("setting", @setting)
                writer.write_string_value("settingName", @setting_name)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
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
            ## Gets the settingName property value. Name of the setting.
            ## @return a string
            ## 
            def setting_name
                return @setting_name
            end
            ## 
            ## Sets the settingName property value. Name of the setting.
            ## @param value Value to set for the setting_name property.
            ## @return a void
            ## 
            def setting_name=(value)
                @setting_name = value
            end
            ## 
            ## Gets the unknownDeviceCount property value. Number of unknown devices
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Number of unknown devices
            ## @param value Value to set for the unknown_device_count property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
            end
        end
    end
end
