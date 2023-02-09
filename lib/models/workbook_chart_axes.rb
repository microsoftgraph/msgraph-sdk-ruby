require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartAxes < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the category axis in a chart. Read-only.
            @category_axis
            ## 
            # Represents the series axis of a 3-dimensional chart. Read-only.
            @series_axis
            ## 
            # Represents the value axis in an axis. Read-only.
            @value_axis
            ## 
            ## Gets the categoryAxis property value. Represents the category axis in a chart. Read-only.
            ## @return a workbook_chart_axis
            ## 
            def category_axis
                return @category_axis
            end
            ## 
            ## Sets the categoryAxis property value. Represents the category axis in a chart. Read-only.
            ## @param value Value to set for the category_axis property.
            ## @return a void
            ## 
            def category_axis=(value)
                @category_axis = value
            end
            ## 
            ## Instantiates a new workbookChartAxes and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_axes
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartAxes.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "categoryAxis" => lambda {|n| @category_axis = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAxis.create_from_discriminator_value(pn) }) },
                    "seriesAxis" => lambda {|n| @series_axis = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAxis.create_from_discriminator_value(pn) }) },
                    "valueAxis" => lambda {|n| @value_axis = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAxis.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("categoryAxis", @category_axis)
                writer.write_object_value("seriesAxis", @series_axis)
                writer.write_object_value("valueAxis", @value_axis)
            end
            ## 
            ## Gets the seriesAxis property value. Represents the series axis of a 3-dimensional chart. Read-only.
            ## @return a workbook_chart_axis
            ## 
            def series_axis
                return @series_axis
            end
            ## 
            ## Sets the seriesAxis property value. Represents the series axis of a 3-dimensional chart. Read-only.
            ## @param value Value to set for the series_axis property.
            ## @return a void
            ## 
            def series_axis=(value)
                @series_axis = value
            end
            ## 
            ## Gets the valueAxis property value. Represents the value axis in an axis. Read-only.
            ## @return a workbook_chart_axis
            ## 
            def value_axis
                return @value_axis
            end
            ## 
            ## Sets the valueAxis property value. Represents the value axis in an axis. Read-only.
            ## @param value Value to set for the value_axis property.
            ## @return a void
            ## 
            def value_axis=(value)
                @value_axis = value
            end
        end
    end
end
