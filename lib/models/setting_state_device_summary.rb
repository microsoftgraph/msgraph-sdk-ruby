require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Device Compilance Policy and Configuration for a Setting State summary
        class SettingStateDeviceSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Device Compliant count for the setting
            @compliant_device_count
            ## 
            # Device conflict error count for the setting
            @conflict_device_count
            ## 
            # Device error count for the setting
            @error_device_count
            ## 
            # Name of the InstancePath for the setting
            @instance_path
            ## 
            # Device NonCompliant count for the setting
            @non_compliant_device_count
            ## 
            # Device Not Applicable count for the setting
            @not_applicable_device_count
            ## 
            # Device Compliant count for the setting
            @remediated_device_count
            ## 
            # Name of the setting
            @setting_name
            ## 
            # Device Unkown count for the setting
            @unknown_device_count
            ## 
            ## Gets the compliantDeviceCount property value. Device Compliant count for the setting
            ## @return a integer
            ## 
            def compliant_device_count
                return @compliant_device_count
            end
            ## 
            ## Sets the compliantDeviceCount property value. Device Compliant count for the setting
            ## @param value Value to set for the compliant_device_count property.
            ## @return a void
            ## 
            def compliant_device_count=(value)
                @compliant_device_count = value
            end
            ## 
            ## Gets the conflictDeviceCount property value. Device conflict error count for the setting
            ## @return a integer
            ## 
            def conflict_device_count
                return @conflict_device_count
            end
            ## 
            ## Sets the conflictDeviceCount property value. Device conflict error count for the setting
            ## @param value Value to set for the conflict_device_count property.
            ## @return a void
            ## 
            def conflict_device_count=(value)
                @conflict_device_count = value
            end
            ## 
            ## Instantiates a new settingStateDeviceSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a setting_state_device_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SettingStateDeviceSummary.new
            end
            ## 
            ## Gets the errorDeviceCount property value. Device error count for the setting
            ## @return a integer
            ## 
            def error_device_count
                return @error_device_count
            end
            ## 
            ## Sets the errorDeviceCount property value. Device error count for the setting
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
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "instancePath" => lambda {|n| @instance_path = n.get_string_value() },
                    "nonCompliantDeviceCount" => lambda {|n| @non_compliant_device_count = n.get_number_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "remediatedDeviceCount" => lambda {|n| @remediated_device_count = n.get_number_value() },
                    "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the instancePath property value. Name of the InstancePath for the setting
            ## @return a string
            ## 
            def instance_path
                return @instance_path
            end
            ## 
            ## Sets the instancePath property value. Name of the InstancePath for the setting
            ## @param value Value to set for the instance_path property.
            ## @return a void
            ## 
            def instance_path=(value)
                @instance_path = value
            end
            ## 
            ## Gets the nonCompliantDeviceCount property value. Device NonCompliant count for the setting
            ## @return a integer
            ## 
            def non_compliant_device_count
                return @non_compliant_device_count
            end
            ## 
            ## Sets the nonCompliantDeviceCount property value. Device NonCompliant count for the setting
            ## @param value Value to set for the non_compliant_device_count property.
            ## @return a void
            ## 
            def non_compliant_device_count=(value)
                @non_compliant_device_count = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. Device Not Applicable count for the setting
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. Device Not Applicable count for the setting
            ## @param value Value to set for the not_applicable_device_count property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the remediatedDeviceCount property value. Device Compliant count for the setting
            ## @return a integer
            ## 
            def remediated_device_count
                return @remediated_device_count
            end
            ## 
            ## Sets the remediatedDeviceCount property value. Device Compliant count for the setting
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
                writer.write_number_value("errorDeviceCount", @error_device_count)
                writer.write_string_value("instancePath", @instance_path)
                writer.write_number_value("nonCompliantDeviceCount", @non_compliant_device_count)
                writer.write_number_value("notApplicableDeviceCount", @not_applicable_device_count)
                writer.write_number_value("remediatedDeviceCount", @remediated_device_count)
                writer.write_string_value("settingName", @setting_name)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
            end
            ## 
            ## Gets the settingName property value. Name of the setting
            ## @return a string
            ## 
            def setting_name
                return @setting_name
            end
            ## 
            ## Sets the settingName property value. Name of the setting
            ## @param value Value to set for the setting_name property.
            ## @return a void
            ## 
            def setting_name=(value)
                @setting_name = value
            end
            ## 
            ## Gets the unknownDeviceCount property value. Device Unkown count for the setting
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Device Unkown count for the setting
            ## @param value Value to set for the unknown_device_count property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
            end
        end
    end
end
