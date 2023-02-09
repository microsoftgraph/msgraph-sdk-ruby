require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OptionalClaim
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional properties of the claim. If a property exists in this collection, it modifies the behavior of the optional claim specified in the name property.
            @additional_properties
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If the value is true, the claim specified by the client is necessary to ensure a smooth authorization experience for the specific task requested by the end user. The default value is false.
            @essential
            ## 
            # The name of the optional claim.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The source (directory object) of the claim. There are predefined claims and user-defined claims from extension properties. If the source value is null, the claim is a predefined optional claim. If the source value is user, the value in the name property is the extension property from the user object.
            @source
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
            ## Gets the additionalProperties property value. Additional properties of the claim. If a property exists in this collection, it modifies the behavior of the optional claim specified in the name property.
            ## @return a string
            ## 
            def additional_properties
                return @additional_properties
            end
            ## 
            ## Sets the additionalProperties property value. Additional properties of the claim. If a property exists in this collection, it modifies the behavior of the optional claim specified in the name property.
            ## @param value Value to set for the additional_properties property.
            ## @return a void
            ## 
            def additional_properties=(value)
                @additional_properties = value
            end
            ## 
            ## Instantiates a new optionalClaim and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a optional_claim
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OptionalClaim.new
            end
            ## 
            ## Gets the essential property value. If the value is true, the claim specified by the client is necessary to ensure a smooth authorization experience for the specific task requested by the end user. The default value is false.
            ## @return a boolean
            ## 
            def essential
                return @essential
            end
            ## 
            ## Sets the essential property value. If the value is true, the claim specified by the client is necessary to ensure a smooth authorization experience for the specific task requested by the end user. The default value is false.
            ## @param value Value to set for the essential property.
            ## @return a void
            ## 
            def essential=(value)
                @essential = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalProperties" => lambda {|n| @additional_properties = n.get_collection_of_primitive_values(String) },
                    "essential" => lambda {|n| @essential = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "source" => lambda {|n| @source = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. The name of the optional claim.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the optional claim.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
                writer.write_collection_of_primitive_values("additionalProperties", @additional_properties)
                writer.write_boolean_value("essential", @essential)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("source", @source)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the source property value. The source (directory object) of the claim. There are predefined claims and user-defined claims from extension properties. If the source value is null, the claim is a predefined optional claim. If the source value is user, the value in the name property is the extension property from the user object.
            ## @return a string
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source (directory object) of the claim. There are predefined claims and user-defined claims from extension properties. If the source value is null, the claim is a predefined optional claim. If the source value is user, the value in the name property is the extension property from the user object.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
        end
    end
end
