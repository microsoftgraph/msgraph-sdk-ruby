require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChart < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents chart axes. Read-only.
            @axes
            ## 
            # Represents the datalabels on the chart. Read-only.
            @data_labels
            ## 
            # Encapsulates the format properties for the chart area. Read-only.
            @format
            ## 
            # Represents the height, in points, of the chart object.
            @height
            ## 
            # The distance, in points, from the left side of the chart to the worksheet origin.
            @left
            ## 
            # Represents the legend for the chart. Read-only.
            @legend
            ## 
            # Represents the name of a chart object.
            @name
            ## 
            # Represents either a single series or collection of series in the chart. Read-only.
            @series
            ## 
            # Represents the title of the specified chart, including the text, visibility, position and formating of the title. Read-only.
            @title
            ## 
            # Represents the distance, in points, from the top edge of the object to the top of row 1 (on a worksheet) or the top of the chart area (on a chart).
            @top
            ## 
            # Represents the width, in points, of the chart object.
            @width
            ## 
            # The worksheet containing the current chart. Read-only.
            @worksheet
            ## 
            ## Gets the axes property value. Represents chart axes. Read-only.
            ## @return a workbook_chart_axes
            ## 
            def axes
                return @axes
            end
            ## 
            ## Sets the axes property value. Represents chart axes. Read-only.
            ## @param value Value to set for the axes property.
            ## @return a void
            ## 
            def axes=(value)
                @axes = value
            end
            ## 
            ## Instantiates a new workbookChart and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChart.new
            end
            ## 
            ## Gets the dataLabels property value. Represents the datalabels on the chart. Read-only.
            ## @return a workbook_chart_data_labels
            ## 
            def data_labels
                return @data_labels
            end
            ## 
            ## Sets the dataLabels property value. Represents the datalabels on the chart. Read-only.
            ## @param value Value to set for the data_labels property.
            ## @return a void
            ## 
            def data_labels=(value)
                @data_labels = value
            end
            ## 
            ## Gets the format property value. Encapsulates the format properties for the chart area. Read-only.
            ## @return a workbook_chart_area_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Encapsulates the format properties for the chart area. Read-only.
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
                    "axes" => lambda {|n| @axes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAxes.create_from_discriminator_value(pn) }) },
                    "dataLabels" => lambda {|n| @data_labels = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartDataLabels.create_from_discriminator_value(pn) }) },
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAreaFormat.create_from_discriminator_value(pn) }) },
                    "height" => lambda {|n| @height = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "left" => lambda {|n| @left = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "legend" => lambda {|n| @legend = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartLegend.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "series" => lambda {|n| @series = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookChartSeries.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartTitle.create_from_discriminator_value(pn) }) },
                    "top" => lambda {|n| @top = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "width" => lambda {|n| @width = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "worksheet" => lambda {|n| @worksheet = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the height property value. Represents the height, in points, of the chart object.
            ## @return a double
            ## 
            def height
                return @height
            end
            ## 
            ## Sets the height property value. Represents the height, in points, of the chart object.
            ## @param value Value to set for the height property.
            ## @return a void
            ## 
            def height=(value)
                @height = value
            end
            ## 
            ## Gets the left property value. The distance, in points, from the left side of the chart to the worksheet origin.
            ## @return a double
            ## 
            def left
                return @left
            end
            ## 
            ## Sets the left property value. The distance, in points, from the left side of the chart to the worksheet origin.
            ## @param value Value to set for the left property.
            ## @return a void
            ## 
            def left=(value)
                @left = value
            end
            ## 
            ## Gets the legend property value. Represents the legend for the chart. Read-only.
            ## @return a workbook_chart_legend
            ## 
            def legend
                return @legend
            end
            ## 
            ## Sets the legend property value. Represents the legend for the chart. Read-only.
            ## @param value Value to set for the legend property.
            ## @return a void
            ## 
            def legend=(value)
                @legend = value
            end
            ## 
            ## Gets the name property value. Represents the name of a chart object.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Represents the name of a chart object.
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
                writer.write_object_value("axes", @axes)
                writer.write_object_value("dataLabels", @data_labels)
                writer.write_object_value("format", @format)
                writer.write_object_value("height", @height)
                writer.write_object_value("left", @left)
                writer.write_object_value("legend", @legend)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("series", @series)
                writer.write_object_value("title", @title)
                writer.write_object_value("top", @top)
                writer.write_object_value("width", @width)
                writer.write_object_value("worksheet", @worksheet)
            end
            ## 
            ## Gets the series property value. Represents either a single series or collection of series in the chart. Read-only.
            ## @return a workbook_chart_series
            ## 
            def series
                return @series
            end
            ## 
            ## Sets the series property value. Represents either a single series or collection of series in the chart. Read-only.
            ## @param value Value to set for the series property.
            ## @return a void
            ## 
            def series=(value)
                @series = value
            end
            ## 
            ## Gets the title property value. Represents the title of the specified chart, including the text, visibility, position and formating of the title. Read-only.
            ## @return a workbook_chart_title
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Represents the title of the specified chart, including the text, visibility, position and formating of the title. Read-only.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the top property value. Represents the distance, in points, from the top edge of the object to the top of row 1 (on a worksheet) or the top of the chart area (on a chart).
            ## @return a double
            ## 
            def top
                return @top
            end
            ## 
            ## Sets the top property value. Represents the distance, in points, from the top edge of the object to the top of row 1 (on a worksheet) or the top of the chart area (on a chart).
            ## @param value Value to set for the top property.
            ## @return a void
            ## 
            def top=(value)
                @top = value
            end
            ## 
            ## Gets the width property value. Represents the width, in points, of the chart object.
            ## @return a double
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. Represents the width, in points, of the chart object.
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
            ## 
            ## Gets the worksheet property value. The worksheet containing the current chart. Read-only.
            ## @return a workbook_worksheet
            ## 
            def worksheet
                return @worksheet
            end
            ## 
            ## Sets the worksheet property value. The worksheet containing the current chart. Read-only.
            ## @param value Value to set for the worksheet property.
            ## @return a void
            ## 
            def worksheet=(value)
                @worksheet = value
            end
        end
    end
end
