require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartSeries < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the formatting of a chart series, which includes fill and line formatting. Read-only.
            @format
            ## 
            # Represents the name of a series in a chart.
            @name
            ## 
            # Represents a collection of all points in the series. Read-only.
            @points
            ## 
            ## Instantiates a new workbookChartSeries and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_series
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartSeries.new
            end
            ## 
            ## Gets the format property value. Represents the formatting of a chart series, which includes fill and line formatting. Read-only.
            ## @return a workbook_chart_series_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Represents the formatting of a chart series, which includes fill and line formatting. Read-only.
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
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartSeriesFormat.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "points" => lambda {|n| @points = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookChartPoint.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. Represents the name of a series in a chart.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Represents the name of a series in a chart.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the points property value. Represents a collection of all points in the series. Read-only.
            ## @return a workbook_chart_point
            ## 
            def points
                return @points
            end
            ## 
            ## Sets the points property value. Represents a collection of all points in the series. Read-only.
            ## @param value Value to set for the points property.
            ## @return a void
            ## 
            def points=(value)
                @points = value
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
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("points", @points)
            end
        end
    end
end
