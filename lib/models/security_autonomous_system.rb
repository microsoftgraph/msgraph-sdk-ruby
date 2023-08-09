require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityAutonomousSystem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name of the autonomous system.
            @name
            ## 
            # The autonomous system number, assigned by IANA.
            @number
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The name of the autonomous system organization.
            @organization
            ## 
            # A displayable value for these autonomous system details.
            @value
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new securityAutonomousSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_autonomous_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAutonomousSystem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "number" => lambda {|n| @number = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organization" => lambda {|n| @organization = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. The name of the autonomous system.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the autonomous system.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the number property value. The autonomous system number, assigned by IANA.
            ## @return a integer
            ## 
            def number
                return @number
            end
            ## 
            ## Sets the number property value. The autonomous system number, assigned by IANA.
            ## @param value Value to set for the number property.
            ## @return a void
            ## 
            def number=(value)
                @number = value
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
            ## Gets the organization property value. The name of the autonomous system organization.
            ## @return a string
            ## 
            def organization
                return @organization
            end
            ## 
            ## Sets the organization property value. The name of the autonomous system organization.
            ## @param value Value to set for the organization property.
            ## @return a void
            ## 
            def organization=(value)
                @organization = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("name", @name)
                writer.write_number_value("number", @number)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("organization", @organization)
                writer.write_string_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the value property value. A displayable value for these autonomous system details.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. A displayable value for these autonomous system details.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
