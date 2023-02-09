require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Color in RGB.
        class RgbColor
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Blue value
            @b
            ## 
            # Green value
            @g
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Red value
            @r
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
            ## Gets the b property value. Blue value
            ## @return a byte
            ## 
            def b
                return @b
            end
            ## 
            ## Sets the b property value. Blue value
            ## @param value Value to set for the b property.
            ## @return a void
            ## 
            def b=(value)
                @b = value
            end
            ## 
            ## Instantiates a new rgbColor and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a rgb_color
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RgbColor.new
            end
            ## 
            ## Gets the g property value. Green value
            ## @return a byte
            ## 
            def g
                return @g
            end
            ## 
            ## Sets the g property value. Green value
            ## @param value Value to set for the g property.
            ## @return a void
            ## 
            def g=(value)
                @g = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "b" => lambda {|n| @b = n.get_object_value(lambda {|pn| Byte.create_from_discriminator_value(pn) }) },
                    "g" => lambda {|n| @g = n.get_object_value(lambda {|pn| Byte.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "r" => lambda {|n| @r = n.get_object_value(lambda {|pn| Byte.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the r property value. Red value
            ## @return a byte
            ## 
            def r
                return @r
            end
            ## 
            ## Sets the r property value. Red value
            ## @param value Value to set for the r property.
            ## @return a void
            ## 
            def r=(value)
                @r = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("b", @b)
                writer.write_object_value("g", @g)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("r", @r)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
