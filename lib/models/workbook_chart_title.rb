require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartTitle < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the formatting of a chart title, which includes fill and font formatting. Read-only.
            @format
            ## 
            # Boolean value representing if the chart title will overlay the chart or not.
            @overlay
            ## 
            # Represents the title text of a chart.
            @text
            ## 
            # A boolean value the represents the visibility of a chart title object.
            @visible
            ## 
            ## Instantiates a new workbookChartTitle and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_title
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartTitle.new
            end
            ## 
            ## Gets the format property value. Represents the formatting of a chart title, which includes fill and font formatting. Read-only.
            ## @return a workbook_chart_title_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Represents the formatting of a chart title, which includes fill and font formatting. Read-only.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartTitleFormat.create_from_discriminator_value(pn) }) },
                    "overlay" => lambda {|n| @overlay = n.get_boolean_value() },
                    "text" => lambda {|n| @text = n.get_string_value() },
                    "visible" => lambda {|n| @visible = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the overlay property value. Boolean value representing if the chart title will overlay the chart or not.
            ## @return a boolean
            ## 
            def overlay
                return @overlay
            end
            ## 
            ## Sets the overlay property value. Boolean value representing if the chart title will overlay the chart or not.
            ## @param value Value to set for the overlay property.
            ## @return a void
            ## 
            def overlay=(value)
                @overlay = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("format", @format)
                writer.write_boolean_value("overlay", @overlay)
                writer.write_string_value("text", @text)
                writer.write_boolean_value("visible", @visible)
            end
            ## 
            ## Gets the text property value. Represents the title text of a chart.
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. Represents the title text of a chart.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
            ## 
            ## Gets the visible property value. A boolean value the represents the visibility of a chart title object.
            ## @return a boolean
            ## 
            def visible
                return @visible
            end
            ## 
            ## Sets the visible property value. A boolean value the represents the visibility of a chart title object.
            ## @param value Value to set for the visible property.
            ## @return a void
            ## 
            def visible=(value)
                @visible = value
            end
        end
    end
end
