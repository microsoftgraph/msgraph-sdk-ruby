require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartLegend < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the formatting of a chart legend, which includes fill and font formatting. Read-only.
            @format
            ## 
            # Boolean value for whether the chart legend should overlap with the main body of the chart.
            @overlay
            ## 
            # Represents the position of the legend on the chart. The possible values are: Top, Bottom, Left, Right, Corner, Custom.
            @position
            ## 
            # A boolean value the represents the visibility of a ChartLegend object.
            @visible
            ## 
            ## Instantiates a new workbookChartLegend and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_legend
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartLegend.new
            end
            ## 
            ## Gets the format property value. Represents the formatting of a chart legend, which includes fill and font formatting. Read-only.
            ## @return a workbook_chart_legend_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Represents the formatting of a chart legend, which includes fill and font formatting. Read-only.
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
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartLegendFormat.create_from_discriminator_value(pn) }) },
                    "overlay" => lambda {|n| @overlay = n.get_boolean_value() },
                    "position" => lambda {|n| @position = n.get_string_value() },
                    "visible" => lambda {|n| @visible = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the overlay property value. Boolean value for whether the chart legend should overlap with the main body of the chart.
            ## @return a boolean
            ## 
            def overlay
                return @overlay
            end
            ## 
            ## Sets the overlay property value. Boolean value for whether the chart legend should overlap with the main body of the chart.
            ## @param value Value to set for the overlay property.
            ## @return a void
            ## 
            def overlay=(value)
                @overlay = value
            end
            ## 
            ## Gets the position property value. Represents the position of the legend on the chart. The possible values are: Top, Bottom, Left, Right, Corner, Custom.
            ## @return a string
            ## 
            def position
                return @position
            end
            ## 
            ## Sets the position property value. Represents the position of the legend on the chart. The possible values are: Top, Bottom, Left, Right, Corner, Custom.
            ## @param value Value to set for the position property.
            ## @return a void
            ## 
            def position=(value)
                @position = value
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
                writer.write_string_value("position", @position)
                writer.write_boolean_value("visible", @visible)
            end
            ## 
            ## Gets the visible property value. A boolean value the represents the visibility of a ChartLegend object.
            ## @return a boolean
            ## 
            def visible
                return @visible
            end
            ## 
            ## Sets the visible property value. A boolean value the represents the visibility of a ChartLegend object.
            ## @param value Value to set for the visible property.
            ## @return a void
            ## 
            def visible=(value)
                @visible = value
            end
        end
    end
end
