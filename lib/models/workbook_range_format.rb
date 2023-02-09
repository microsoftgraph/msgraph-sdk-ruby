require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookRangeFormat < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of border objects that apply to the overall range selected Read-only.
            @borders
            ## 
            # Gets or sets the width of all colums within the range. If the column widths are not uniform, null will be returned.
            @column_width
            ## 
            # Returns the fill object defined on the overall range. Read-only.
            @fill
            ## 
            # Returns the font object defined on the overall range selected Read-only.
            @font
            ## 
            # Represents the horizontal alignment for the specified object. The possible values are: General, Left, Center, Right, Fill, Justify, CenterAcrossSelection, Distributed.
            @horizontal_alignment
            ## 
            # Returns the format protection object for a range. Read-only.
            @protection
            ## 
            # Gets or sets the height of all rows in the range. If the row heights are not uniform null will be returned.
            @row_height
            ## 
            # Represents the vertical alignment for the specified object. The possible values are: Top, Center, Bottom, Justify, Distributed.
            @vertical_alignment
            ## 
            # Indicates if Excel wraps the text in the object. A null value indicates that the entire range doesn't have uniform wrap setting
            @wrap_text
            ## 
            ## Gets the borders property value. Collection of border objects that apply to the overall range selected Read-only.
            ## @return a workbook_range_border
            ## 
            def borders
                return @borders
            end
            ## 
            ## Sets the borders property value. Collection of border objects that apply to the overall range selected Read-only.
            ## @param value Value to set for the borders property.
            ## @return a void
            ## 
            def borders=(value)
                @borders = value
            end
            ## 
            ## Gets the columnWidth property value. Gets or sets the width of all colums within the range. If the column widths are not uniform, null will be returned.
            ## @return a double
            ## 
            def column_width
                return @column_width
            end
            ## 
            ## Sets the columnWidth property value. Gets or sets the width of all colums within the range. If the column widths are not uniform, null will be returned.
            ## @param value Value to set for the column_width property.
            ## @return a void
            ## 
            def column_width=(value)
                @column_width = value
            end
            ## 
            ## Instantiates a new workbookRangeFormat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_range_format
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookRangeFormat.new
            end
            ## 
            ## Gets the fill property value. Returns the fill object defined on the overall range. Read-only.
            ## @return a workbook_range_fill
            ## 
            def fill
                return @fill
            end
            ## 
            ## Sets the fill property value. Returns the fill object defined on the overall range. Read-only.
            ## @param value Value to set for the fill property.
            ## @return a void
            ## 
            def fill=(value)
                @fill = value
            end
            ## 
            ## Gets the font property value. Returns the font object defined on the overall range selected Read-only.
            ## @return a workbook_range_font
            ## 
            def font
                return @font
            end
            ## 
            ## Sets the font property value. Returns the font object defined on the overall range selected Read-only.
            ## @param value Value to set for the font property.
            ## @return a void
            ## 
            def font=(value)
                @font = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "borders" => lambda {|n| @borders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookRangeBorder.create_from_discriminator_value(pn) }) },
                    "columnWidth" => lambda {|n| @column_width = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "fill" => lambda {|n| @fill = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookRangeFill.create_from_discriminator_value(pn) }) },
                    "font" => lambda {|n| @font = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookRangeFont.create_from_discriminator_value(pn) }) },
                    "horizontalAlignment" => lambda {|n| @horizontal_alignment = n.get_string_value() },
                    "protection" => lambda {|n| @protection = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookFormatProtection.create_from_discriminator_value(pn) }) },
                    "rowHeight" => lambda {|n| @row_height = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "verticalAlignment" => lambda {|n| @vertical_alignment = n.get_string_value() },
                    "wrapText" => lambda {|n| @wrap_text = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the horizontalAlignment property value. Represents the horizontal alignment for the specified object. The possible values are: General, Left, Center, Right, Fill, Justify, CenterAcrossSelection, Distributed.
            ## @return a string
            ## 
            def horizontal_alignment
                return @horizontal_alignment
            end
            ## 
            ## Sets the horizontalAlignment property value. Represents the horizontal alignment for the specified object. The possible values are: General, Left, Center, Right, Fill, Justify, CenterAcrossSelection, Distributed.
            ## @param value Value to set for the horizontal_alignment property.
            ## @return a void
            ## 
            def horizontal_alignment=(value)
                @horizontal_alignment = value
            end
            ## 
            ## Gets the protection property value. Returns the format protection object for a range. Read-only.
            ## @return a workbook_format_protection
            ## 
            def protection
                return @protection
            end
            ## 
            ## Sets the protection property value. Returns the format protection object for a range. Read-only.
            ## @param value Value to set for the protection property.
            ## @return a void
            ## 
            def protection=(value)
                @protection = value
            end
            ## 
            ## Gets the rowHeight property value. Gets or sets the height of all rows in the range. If the row heights are not uniform null will be returned.
            ## @return a double
            ## 
            def row_height
                return @row_height
            end
            ## 
            ## Sets the rowHeight property value. Gets or sets the height of all rows in the range. If the row heights are not uniform null will be returned.
            ## @param value Value to set for the row_height property.
            ## @return a void
            ## 
            def row_height=(value)
                @row_height = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("borders", @borders)
                writer.write_object_value("columnWidth", @column_width)
                writer.write_object_value("fill", @fill)
                writer.write_object_value("font", @font)
                writer.write_string_value("horizontalAlignment", @horizontal_alignment)
                writer.write_object_value("protection", @protection)
                writer.write_object_value("rowHeight", @row_height)
                writer.write_string_value("verticalAlignment", @vertical_alignment)
                writer.write_boolean_value("wrapText", @wrap_text)
            end
            ## 
            ## Gets the verticalAlignment property value. Represents the vertical alignment for the specified object. The possible values are: Top, Center, Bottom, Justify, Distributed.
            ## @return a string
            ## 
            def vertical_alignment
                return @vertical_alignment
            end
            ## 
            ## Sets the verticalAlignment property value. Represents the vertical alignment for the specified object. The possible values are: Top, Center, Bottom, Justify, Distributed.
            ## @param value Value to set for the vertical_alignment property.
            ## @return a void
            ## 
            def vertical_alignment=(value)
                @vertical_alignment = value
            end
            ## 
            ## Gets the wrapText property value. Indicates if Excel wraps the text in the object. A null value indicates that the entire range doesn't have uniform wrap setting
            ## @return a boolean
            ## 
            def wrap_text
                return @wrap_text
            end
            ## 
            ## Sets the wrapText property value. Indicates if Excel wraps the text in the object. A null value indicates that the entire range doesn't have uniform wrap setting
            ## @param value Value to set for the wrap_text property.
            ## @return a void
            ## 
            def wrap_text=(value)
                @wrap_text = value
            end
        end
    end
end
