require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Imported windows autopilot devices.
        class ImportedWindowsAutopilotDeviceIdentity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # UPN of the user the device will be assigned
            @assigned_user_principal_name
            ## 
            # Group Tag of the Windows autopilot device.
            @group_tag
            ## 
            # Hardware Blob of the Windows autopilot device.
            @hardware_identifier
            ## 
            # The Import Id of the Windows autopilot device.
            @import_id
            ## 
            # Product Key of the Windows autopilot device.
            @product_key
            ## 
            # Serial number of the Windows autopilot device.
            @serial_number
            ## 
            # Current state of the imported device.
            @state
            ## 
            ## Gets the assignedUserPrincipalName property value. UPN of the user the device will be assigned
            ## @return a string
            ## 
            def assigned_user_principal_name
                return @assigned_user_principal_name
            end
            ## 
            ## Sets the assignedUserPrincipalName property value. UPN of the user the device will be assigned
            ## @param value Value to set for the assigned_user_principal_name property.
            ## @return a void
            ## 
            def assigned_user_principal_name=(value)
                @assigned_user_principal_name = value
            end
            ## 
            ## Instantiates a new importedWindowsAutopilotDeviceIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a imported_windows_autopilot_device_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ImportedWindowsAutopilotDeviceIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedUserPrincipalName" => lambda {|n| @assigned_user_principal_name = n.get_string_value() },
                    "groupTag" => lambda {|n| @group_tag = n.get_string_value() },
                    "hardwareIdentifier" => lambda {|n| @hardware_identifier = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "importId" => lambda {|n| @import_id = n.get_string_value() },
                    "productKey" => lambda {|n| @product_key = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ImportedWindowsAutopilotDeviceIdentityState.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupTag property value. Group Tag of the Windows autopilot device.
            ## @return a string
            ## 
            def group_tag
                return @group_tag
            end
            ## 
            ## Sets the groupTag property value. Group Tag of the Windows autopilot device.
            ## @param value Value to set for the group_tag property.
            ## @return a void
            ## 
            def group_tag=(value)
                @group_tag = value
            end
            ## 
            ## Gets the hardwareIdentifier property value. Hardware Blob of the Windows autopilot device.
            ## @return a base64url
            ## 
            def hardware_identifier
                return @hardware_identifier
            end
            ## 
            ## Sets the hardwareIdentifier property value. Hardware Blob of the Windows autopilot device.
            ## @param value Value to set for the hardware_identifier property.
            ## @return a void
            ## 
            def hardware_identifier=(value)
                @hardware_identifier = value
            end
            ## 
            ## Gets the importId property value. The Import Id of the Windows autopilot device.
            ## @return a string
            ## 
            def import_id
                return @import_id
            end
            ## 
            ## Sets the importId property value. The Import Id of the Windows autopilot device.
            ## @param value Value to set for the import_id property.
            ## @return a void
            ## 
            def import_id=(value)
                @import_id = value
            end
            ## 
            ## Gets the productKey property value. Product Key of the Windows autopilot device.
            ## @return a string
            ## 
            def product_key
                return @product_key
            end
            ## 
            ## Sets the productKey property value. Product Key of the Windows autopilot device.
            ## @param value Value to set for the product_key property.
            ## @return a void
            ## 
            def product_key=(value)
                @product_key = value
            end
            ## 
            ## Gets the serialNumber property value. Serial number of the Windows autopilot device.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. Serial number of the Windows autopilot device.
            ## @param value Value to set for the serial_number property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assignedUserPrincipalName", @assigned_user_principal_name)
                writer.write_string_value("groupTag", @group_tag)
                writer.write_object_value("hardwareIdentifier", @hardware_identifier)
                writer.write_string_value("importId", @import_id)
                writer.write_string_value("productKey", @product_key)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_object_value("state", @state)
            end
            ## 
            ## Gets the state property value. Current state of the imported device.
            ## @return a imported_windows_autopilot_device_identity_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Current state of the imported device.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
