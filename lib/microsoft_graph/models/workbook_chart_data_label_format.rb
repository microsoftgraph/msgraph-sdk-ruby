require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class WorkbookChartDataLabelFormat < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Represents the fill format of the current chart data label. Read-only.
        @fill
        ## 
        # Represents the font attributes (font name, font size, color, etc.) for a chart data label. Read-only.
        @font
        ## 
        ## Instantiates a new workbookChartDataLabelFormat and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a workbook_chart_data_label_format
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WorkbookChartDataLabelFormat.new
        end
        ## 
        ## Gets the fill property value. Represents the fill format of the current chart data label. Read-only.
        ## @return a workbook_chart_fill
        ## 
        def fill
            return @fill
        end
        ## 
        ## Sets the fill property value. Represents the fill format of the current chart data label. Read-only.
        ## @param value Value to set for the fill property.
        ## @return a void
        ## 
        def fill=(value)
            @fill = value
        end
        ## 
        ## Gets the font property value. Represents the font attributes (font name, font size, color, etc.) for a chart data label. Read-only.
        ## @return a workbook_chart_font
        ## 
        def font
            return @font
        end
        ## 
        ## Sets the font property value. Represents the font attributes (font name, font size, color, etc.) for a chart data label. Read-only.
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
                "fill" => lambda {|n| @fill = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartFill.create_from_discriminator_value(pn) }) },
                "font" => lambda {|n| @font = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartFont.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("fill", @fill)
            writer.write_object_value("font", @font)
        end
    end
end
