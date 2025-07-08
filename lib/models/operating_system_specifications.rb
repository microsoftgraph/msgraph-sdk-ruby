require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OperatingSystemSpecifications
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The platform of the operating system (for example, 'Windows').
            @operating_system_platform
            ## 
            # The version string of the operating system.
            @operating_system_version
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
            ## Instantiates a new OperatingSystemSpecifications and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a operating_system_specifications
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OperatingSystemSpecifications.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatingSystemPlatform" => lambda {|n| @operating_system_platform = n.get_string_value() },
                    "operatingSystemVersion" => lambda {|n| @operating_system_version = n.get_string_value() },
                }
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
            ## Gets the operatingSystemPlatform property value. The platform of the operating system (for example, 'Windows').
            ## @return a string
            ## 
            def operating_system_platform
                return @operating_system_platform
            end
            ## 
            ## Sets the operatingSystemPlatform property value. The platform of the operating system (for example, 'Windows').
            ## @param value Value to set for the operatingSystemPlatform property.
            ## @return a void
            ## 
            def operating_system_platform=(value)
                @operating_system_platform = value
            end
            ## 
            ## Gets the operatingSystemVersion property value. The version string of the operating system.
            ## @return a string
            ## 
            def operating_system_version
                return @operating_system_version
            end
            ## 
            ## Sets the operatingSystemVersion property value. The version string of the operating system.
            ## @param value Value to set for the operatingSystemVersion property.
            ## @return a void
            ## 
            def operating_system_version=(value)
                @operating_system_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operatingSystemPlatform", @operating_system_platform)
                writer.write_string_value("operatingSystemVersion", @operating_system_version)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
