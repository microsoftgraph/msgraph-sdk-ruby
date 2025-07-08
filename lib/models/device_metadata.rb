require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceMetadata
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Optional. The general type of the device (for example, 'Managed', 'Unmanaged').
            @device_type
            ## 
            # The Internet Protocol (IP) address of the device.
            @ip_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Details about the operating system platform and version.
            @operating_system_specifications
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new DeviceMetadata and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_metadata
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceMetadata.new
            end
            ## 
            ## Gets the deviceType property value. Optional. The general type of the device (for example, 'Managed', 'Unmanaged').
            ## @return a string
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. Optional. The general type of the device (for example, 'Managed', 'Unmanaged').
            ## @param value Value to set for the deviceType property.
            ## @return a void
            ## 
            def device_type=(value)
                @device_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceType" => lambda {|n| @device_type = n.get_string_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatingSystemSpecifications" => lambda {|n| @operating_system_specifications = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::OperatingSystemSpecifications.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the ipAddress property value. The Internet Protocol (IP) address of the device.
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The Internet Protocol (IP) address of the device.
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the operatingSystemSpecifications property value. Details about the operating system platform and version.
            ## @return a operating_system_specifications
            ## 
            def operating_system_specifications
                return @operating_system_specifications
            end
            ## 
            ## Sets the operatingSystemSpecifications property value. Details about the operating system platform and version.
            ## @param value Value to set for the operatingSystemSpecifications property.
            ## @return a void
            ## 
            def operating_system_specifications=(value)
                @operating_system_specifications = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("deviceType", @device_type)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("operatingSystemSpecifications", @operating_system_specifications)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
