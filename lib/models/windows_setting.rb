require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsSetting < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The instances property
            @instances
            ## 
            # The payloadType property
            @payload_type
            ## 
            # The settingType property
            @setting_type
            ## 
            # The windowsDeviceId property
            @windows_device_id
            ## 
            ## Instantiates a new WindowsSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "instances" => lambda {|n| @instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsSettingInstance.create_from_discriminator_value(pn) }) },
                    "payloadType" => lambda {|n| @payload_type = n.get_string_value() },
                    "settingType" => lambda {|n| @setting_type = n.get_enum_value(MicrosoftGraph::Models::WindowsSettingType) },
                    "windowsDeviceId" => lambda {|n| @windows_device_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the instances property value. The instances property
            ## @return a windows_setting_instance
            ## 
            def instances
                return @instances
            end
            ## 
            ## Sets the instances property value. The instances property
            ## @param value Value to set for the instances property.
            ## @return a void
            ## 
            def instances=(value)
                @instances = value
            end
            ## 
            ## Gets the payloadType property value. The payloadType property
            ## @return a string
            ## 
            def payload_type
                return @payload_type
            end
            ## 
            ## Sets the payloadType property value. The payloadType property
            ## @param value Value to set for the payloadType property.
            ## @return a void
            ## 
            def payload_type=(value)
                @payload_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("instances", @instances)
                writer.write_string_value("payloadType", @payload_type)
                writer.write_enum_value("settingType", @setting_type)
                writer.write_string_value("windowsDeviceId", @windows_device_id)
            end
            ## 
            ## Gets the settingType property value. The settingType property
            ## @return a windows_setting_type
            ## 
            def setting_type
                return @setting_type
            end
            ## 
            ## Sets the settingType property value. The settingType property
            ## @param value Value to set for the settingType property.
            ## @return a void
            ## 
            def setting_type=(value)
                @setting_type = value
            end
            ## 
            ## Gets the windowsDeviceId property value. The windowsDeviceId property
            ## @return a string
            ## 
            def windows_device_id
                return @windows_device_id
            end
            ## 
            ## Sets the windowsDeviceId property value. The windowsDeviceId property
            ## @param value Value to set for the windowsDeviceId property.
            ## @return a void
            ## 
            def windows_device_id=(value)
                @windows_device_id = value
            end
        end
    end
end
