require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class SinglePropertySchema
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The name of the property.
                @name
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The type of the property.
                @type
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
                ## Instantiates a new singlePropertySchema and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a single_property_schema
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SinglePropertySchema.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "type" => lambda {|n| @type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the name property value. The name of the property.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name of the property.
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
                    writer.write_string_value("name", @name)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("type", @type)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the type property value. The type of the property.
                ## @return a string
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. The type of the property.
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
            end
        end
    end
end
