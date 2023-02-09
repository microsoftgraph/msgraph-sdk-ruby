require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Image
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Optional. Height of the image, in pixels. Read-only.
            @height
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Optional. Width of the image, in pixels. Read-only.
            @width
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
            ## Instantiates a new image and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Image.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "height" => lambda {|n| @height = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "width" => lambda {|n| @width = n.get_number_value() },
                }
            end
            ## 
            ## Gets the height property value. Optional. Height of the image, in pixels. Read-only.
            ## @return a integer
            ## 
            def height
                return @height
            end
            ## 
            ## Sets the height property value. Optional. Height of the image, in pixels. Read-only.
            ## @param value Value to set for the height property.
            ## @return a void
            ## 
            def height=(value)
                @height = value
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
                writer.write_number_value("height", @height)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("width", @width)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the width property value. Optional. Width of the image, in pixels. Read-only.
            ## @return a integer
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. Optional. Width of the image, in pixels. Read-only.
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
        end
    end
end
