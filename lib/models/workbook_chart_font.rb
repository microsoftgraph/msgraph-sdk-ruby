require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartFont < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the fond is bold.
            @bold
            ## 
            # The HTML color code representation of the text color. For example #FF0000 represents Red.
            @color
            ## 
            # Indicates whether the fond is italic.
            @italic
            ## 
            # The font name. For example 'Calibri'.
            @name
            ## 
            # The size of the font. For example,  11.
            @size
            ## 
            # The type of underlining applied to the font. The possible values are: None, Single.
            @underline
            ## 
            ## Gets the bold property value. Indicates whether the fond is bold.
            ## @return a boolean
            ## 
            def bold
                return @bold
            end
            ## 
            ## Sets the bold property value. Indicates whether the fond is bold.
            ## @param value Value to set for the bold property.
            ## @return a void
            ## 
            def bold=(value)
                @bold = value
            end
            ## 
            ## Gets the color property value. The HTML color code representation of the text color. For example #FF0000 represents Red.
            ## @return a string
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. The HTML color code representation of the text color. For example #FF0000 represents Red.
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new WorkbookChartFont and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_font
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartFont.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bold" => lambda {|n| @bold = n.get_boolean_value() },
                    "color" => lambda {|n| @color = n.get_string_value() },
                    "italic" => lambda {|n| @italic = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "underline" => lambda {|n| @underline = n.get_string_value() },
                })
            end
            ## 
            ## Gets the italic property value. Indicates whether the fond is italic.
            ## @return a boolean
            ## 
            def italic
                return @italic
            end
            ## 
            ## Sets the italic property value. Indicates whether the fond is italic.
            ## @param value Value to set for the italic property.
            ## @return a void
            ## 
            def italic=(value)
                @italic = value
            end
            ## 
            ## Gets the name property value. The font name. For example 'Calibri'.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The font name. For example 'Calibri'.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("bold", @bold)
                writer.write_string_value("color", @color)
                writer.write_boolean_value("italic", @italic)
                writer.write_string_value("name", @name)
                writer.write_object_value("size", @size)
                writer.write_string_value("underline", @underline)
            end
            ## 
            ## Gets the size property value. The size of the font. For example,  11.
            ## @return a double
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The size of the font. For example,  11.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the underline property value. The type of underlining applied to the font. The possible values are: None, Single.
            ## @return a string
            ## 
            def underline
                return @underline
            end
            ## 
            ## Sets the underline property value. The type of underlining applied to the font. The possible values are: None, Single.
            ## @param value Value to set for the underline property.
            ## @return a void
            ## 
            def underline=(value)
                @underline = value
            end
        end
    end
end
