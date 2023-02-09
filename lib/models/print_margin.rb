require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintMargin
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The margin in microns from the bottom edge.
            @bottom
            ## 
            # The margin in microns from the left edge.
            @left
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The margin in microns from the right edge.
            @right
            ## 
            # The margin in microns from the top edge.
            @top
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
            ## Gets the bottom property value. The margin in microns from the bottom edge.
            ## @return a integer
            ## 
            def bottom
                return @bottom
            end
            ## 
            ## Sets the bottom property value. The margin in microns from the bottom edge.
            ## @param value Value to set for the bottom property.
            ## @return a void
            ## 
            def bottom=(value)
                @bottom = value
            end
            ## 
            ## Instantiates a new printMargin and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_margin
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintMargin.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bottom" => lambda {|n| @bottom = n.get_number_value() },
                    "left" => lambda {|n| @left = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "right" => lambda {|n| @right = n.get_number_value() },
                    "top" => lambda {|n| @top = n.get_number_value() },
                }
            end
            ## 
            ## Gets the left property value. The margin in microns from the left edge.
            ## @return a integer
            ## 
            def left
                return @left
            end
            ## 
            ## Sets the left property value. The margin in microns from the left edge.
            ## @param value Value to set for the left property.
            ## @return a void
            ## 
            def left=(value)
                @left = value
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
            ## Gets the right property value. The margin in microns from the right edge.
            ## @return a integer
            ## 
            def right
                return @right
            end
            ## 
            ## Sets the right property value. The margin in microns from the right edge.
            ## @param value Value to set for the right property.
            ## @return a void
            ## 
            def right=(value)
                @right = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("bottom", @bottom)
                writer.write_number_value("left", @left)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("right", @right)
                writer.write_number_value("top", @top)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the top property value. The margin in microns from the top edge.
            ## @return a integer
            ## 
            def top
                return @top
            end
            ## 
            ## Sets the top property value. The margin in microns from the top edge.
            ## @param value Value to set for the top property.
            ## @return a void
            ## 
            def top=(value)
                @top = value
            end
        end
    end
end
