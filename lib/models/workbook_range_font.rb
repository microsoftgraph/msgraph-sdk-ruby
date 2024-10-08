require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookRangeFont < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Inidicates whether the font is bold.
            @bold
            ## 
            # The HTML color code representation of the text color. For example, #FF0000 represents the color red.
            @color
            ## 
            # Inidicates whether the font is italic.
            @italic
            ## 
            # The font name. For example, 'Calibri'.
            @name
            ## 
            # The font size.
            @size
            ## 
            # The type of underlining applied to the font. The possible values are: None, Single, Double, SingleAccountant, DoubleAccountant.
            @underline
            ## 
            ## Gets the bold property value. Inidicates whether the font is bold.
            ## @return a boolean
            ## 
            def bold
                return @bold
            end
            ## 
            ## Sets the bold property value. Inidicates whether the font is bold.
            ## @param value Value to set for the bold property.
            ## @return a void
            ## 
            def bold=(value)
                @bold = value
            end
            ## 
            ## Gets the color property value. The HTML color code representation of the text color. For example, #FF0000 represents the color red.
            ## @return a string
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. The HTML color code representation of the text color. For example, #FF0000 represents the color red.
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new WorkbookRangeFont and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_range_font
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookRangeFont.new
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
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| WorkbookRangeFont::WorkbookRangeFontSize.create_from_discriminator_value(pn) }) },
                    "underline" => lambda {|n| @underline = n.get_string_value() },
                })
            end
            ## 
            ## Gets the italic property value. Inidicates whether the font is italic.
            ## @return a boolean
            ## 
            def italic
                return @italic
            end
            ## 
            ## Sets the italic property value. Inidicates whether the font is italic.
            ## @param value Value to set for the italic property.
            ## @return a void
            ## 
            def italic=(value)
                @italic = value
            end
            ## 
            ## Gets the name property value. The font name. For example, 'Calibri'.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The font name. For example, 'Calibri'.
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
            ## Gets the size property value. The font size.
            ## @return a workbook_range_font_size
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The font size.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the underline property value. The type of underlining applied to the font. The possible values are: None, Single, Double, SingleAccountant, DoubleAccountant.
            ## @return a string
            ## 
            def underline
                return @underline
            end
            ## 
            ## Sets the underline property value. The type of underlining applied to the font. The possible values are: None, Single, Double, SingleAccountant, DoubleAccountant.
            ## @param value Value to set for the underline property.
            ## @return a void
            ## 
            def underline=(value)
                @underline = value
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class WorkbookRangeFontSize
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a workbook_range_font_size
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return WorkbookRangeFontSize.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
