require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartAxis < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the formatting of a chart object, which includes line and font formatting. Read-only.
            @format
            ## 
            # Returns a gridlines object that represents the major gridlines for the specified axis. Read-only.
            @major_gridlines
            ## 
            # Represents the interval between two major tick marks. Can be set to a numeric value or an empty string.  The returned value is always a number.
            @major_unit
            ## 
            # Represents the maximum value on the value axis.  Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.
            @maximum
            ## 
            # Represents the minimum value on the value axis. Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.
            @minimum
            ## 
            # Returns a Gridlines object that represents the minor gridlines for the specified axis. Read-only.
            @minor_gridlines
            ## 
            # Represents the interval between two minor tick marks. 'Can be set to a numeric value or an empty string (for automatic axis values). The returned value is always a number.
            @minor_unit
            ## 
            # Represents the axis title. Read-only.
            @title
            ## 
            ## Instantiates a new workbookChartAxis and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_axis
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartAxis.new
            end
            ## 
            ## Gets the format property value. Represents the formatting of a chart object, which includes line and font formatting. Read-only.
            ## @return a workbook_chart_axis_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Represents the formatting of a chart object, which includes line and font formatting. Read-only.
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
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAxisFormat.create_from_discriminator_value(pn) }) },
                    "majorGridlines" => lambda {|n| @major_gridlines = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartGridlines.create_from_discriminator_value(pn) }) },
                    "majorUnit" => lambda {|n| @major_unit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "maximum" => lambda {|n| @maximum = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "minimum" => lambda {|n| @minimum = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "minorGridlines" => lambda {|n| @minor_gridlines = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartGridlines.create_from_discriminator_value(pn) }) },
                    "minorUnit" => lambda {|n| @minor_unit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAxisTitle.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the majorGridlines property value. Returns a gridlines object that represents the major gridlines for the specified axis. Read-only.
            ## @return a workbook_chart_gridlines
            ## 
            def major_gridlines
                return @major_gridlines
            end
            ## 
            ## Sets the majorGridlines property value. Returns a gridlines object that represents the major gridlines for the specified axis. Read-only.
            ## @param value Value to set for the major_gridlines property.
            ## @return a void
            ## 
            def major_gridlines=(value)
                @major_gridlines = value
            end
            ## 
            ## Gets the majorUnit property value. Represents the interval between two major tick marks. Can be set to a numeric value or an empty string.  The returned value is always a number.
            ## @return a json
            ## 
            def major_unit
                return @major_unit
            end
            ## 
            ## Sets the majorUnit property value. Represents the interval between two major tick marks. Can be set to a numeric value or an empty string.  The returned value is always a number.
            ## @param value Value to set for the major_unit property.
            ## @return a void
            ## 
            def major_unit=(value)
                @major_unit = value
            end
            ## 
            ## Gets the maximum property value. Represents the maximum value on the value axis.  Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.
            ## @return a json
            ## 
            def maximum
                return @maximum
            end
            ## 
            ## Sets the maximum property value. Represents the maximum value on the value axis.  Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.
            ## @param value Value to set for the maximum property.
            ## @return a void
            ## 
            def maximum=(value)
                @maximum = value
            end
            ## 
            ## Gets the minimum property value. Represents the minimum value on the value axis. Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.
            ## @return a json
            ## 
            def minimum
                return @minimum
            end
            ## 
            ## Sets the minimum property value. Represents the minimum value on the value axis. Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.
            ## @param value Value to set for the minimum property.
            ## @return a void
            ## 
            def minimum=(value)
                @minimum = value
            end
            ## 
            ## Gets the minorGridlines property value. Returns a Gridlines object that represents the minor gridlines for the specified axis. Read-only.
            ## @return a workbook_chart_gridlines
            ## 
            def minor_gridlines
                return @minor_gridlines
            end
            ## 
            ## Sets the minorGridlines property value. Returns a Gridlines object that represents the minor gridlines for the specified axis. Read-only.
            ## @param value Value to set for the minor_gridlines property.
            ## @return a void
            ## 
            def minor_gridlines=(value)
                @minor_gridlines = value
            end
            ## 
            ## Gets the minorUnit property value. Represents the interval between two minor tick marks. 'Can be set to a numeric value or an empty string (for automatic axis values). The returned value is always a number.
            ## @return a json
            ## 
            def minor_unit
                return @minor_unit
            end
            ## 
            ## Sets the minorUnit property value. Represents the interval between two minor tick marks. 'Can be set to a numeric value or an empty string (for automatic axis values). The returned value is always a number.
            ## @param value Value to set for the minor_unit property.
            ## @return a void
            ## 
            def minor_unit=(value)
                @minor_unit = value
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
                writer.write_object_value("majorGridlines", @major_gridlines)
                writer.write_object_value("majorUnit", @major_unit)
                writer.write_object_value("maximum", @maximum)
                writer.write_object_value("minimum", @minimum)
                writer.write_object_value("minorGridlines", @minor_gridlines)
                writer.write_object_value("minorUnit", @minor_unit)
                writer.write_object_value("title", @title)
            end
            ## 
            ## Gets the title property value. Represents the axis title. Read-only.
            ## @return a workbook_chart_axis_title
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Represents the axis title. Read-only.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
