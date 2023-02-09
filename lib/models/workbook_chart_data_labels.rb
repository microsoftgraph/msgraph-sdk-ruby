require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartDataLabels < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the format of chart data labels, which includes fill and font formatting. Read-only.
            @format
            ## 
            # DataLabelPosition value that represents the position of the data label. The possible values are: None, Center, InsideEnd, InsideBase, OutsideEnd, Left, Right, Top, Bottom, BestFit, Callout.
            @position
            ## 
            # String representing the separator used for the data labels on a chart.
            @separator
            ## 
            # Boolean value representing if the data label bubble size is visible or not.
            @show_bubble_size
            ## 
            # Boolean value representing if the data label category name is visible or not.
            @show_category_name
            ## 
            # Boolean value representing if the data label legend key is visible or not.
            @show_legend_key
            ## 
            # Boolean value representing if the data label percentage is visible or not.
            @show_percentage
            ## 
            # Boolean value representing if the data label series name is visible or not.
            @show_series_name
            ## 
            # Boolean value representing if the data label value is visible or not.
            @show_value
            ## 
            ## Instantiates a new workbookChartDataLabels and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_data_labels
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartDataLabels.new
            end
            ## 
            ## Gets the format property value. Represents the format of chart data labels, which includes fill and font formatting. Read-only.
            ## @return a workbook_chart_data_label_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Represents the format of chart data labels, which includes fill and font formatting. Read-only.
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
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartDataLabelFormat.create_from_discriminator_value(pn) }) },
                    "position" => lambda {|n| @position = n.get_string_value() },
                    "separator" => lambda {|n| @separator = n.get_string_value() },
                    "showBubbleSize" => lambda {|n| @show_bubble_size = n.get_boolean_value() },
                    "showCategoryName" => lambda {|n| @show_category_name = n.get_boolean_value() },
                    "showLegendKey" => lambda {|n| @show_legend_key = n.get_boolean_value() },
                    "showPercentage" => lambda {|n| @show_percentage = n.get_boolean_value() },
                    "showSeriesName" => lambda {|n| @show_series_name = n.get_boolean_value() },
                    "showValue" => lambda {|n| @show_value = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the position property value. DataLabelPosition value that represents the position of the data label. The possible values are: None, Center, InsideEnd, InsideBase, OutsideEnd, Left, Right, Top, Bottom, BestFit, Callout.
            ## @return a string
            ## 
            def position
                return @position
            end
            ## 
            ## Sets the position property value. DataLabelPosition value that represents the position of the data label. The possible values are: None, Center, InsideEnd, InsideBase, OutsideEnd, Left, Right, Top, Bottom, BestFit, Callout.
            ## @param value Value to set for the position property.
            ## @return a void
            ## 
            def position=(value)
                @position = value
            end
            ## 
            ## Gets the separator property value. String representing the separator used for the data labels on a chart.
            ## @return a string
            ## 
            def separator
                return @separator
            end
            ## 
            ## Sets the separator property value. String representing the separator used for the data labels on a chart.
            ## @param value Value to set for the separator property.
            ## @return a void
            ## 
            def separator=(value)
                @separator = value
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
                writer.write_string_value("position", @position)
                writer.write_string_value("separator", @separator)
                writer.write_boolean_value("showBubbleSize", @show_bubble_size)
                writer.write_boolean_value("showCategoryName", @show_category_name)
                writer.write_boolean_value("showLegendKey", @show_legend_key)
                writer.write_boolean_value("showPercentage", @show_percentage)
                writer.write_boolean_value("showSeriesName", @show_series_name)
                writer.write_boolean_value("showValue", @show_value)
            end
            ## 
            ## Gets the showBubbleSize property value. Boolean value representing if the data label bubble size is visible or not.
            ## @return a boolean
            ## 
            def show_bubble_size
                return @show_bubble_size
            end
            ## 
            ## Sets the showBubbleSize property value. Boolean value representing if the data label bubble size is visible or not.
            ## @param value Value to set for the show_bubble_size property.
            ## @return a void
            ## 
            def show_bubble_size=(value)
                @show_bubble_size = value
            end
            ## 
            ## Gets the showCategoryName property value. Boolean value representing if the data label category name is visible or not.
            ## @return a boolean
            ## 
            def show_category_name
                return @show_category_name
            end
            ## 
            ## Sets the showCategoryName property value. Boolean value representing if the data label category name is visible or not.
            ## @param value Value to set for the show_category_name property.
            ## @return a void
            ## 
            def show_category_name=(value)
                @show_category_name = value
            end
            ## 
            ## Gets the showLegendKey property value. Boolean value representing if the data label legend key is visible or not.
            ## @return a boolean
            ## 
            def show_legend_key
                return @show_legend_key
            end
            ## 
            ## Sets the showLegendKey property value. Boolean value representing if the data label legend key is visible or not.
            ## @param value Value to set for the show_legend_key property.
            ## @return a void
            ## 
            def show_legend_key=(value)
                @show_legend_key = value
            end
            ## 
            ## Gets the showPercentage property value. Boolean value representing if the data label percentage is visible or not.
            ## @return a boolean
            ## 
            def show_percentage
                return @show_percentage
            end
            ## 
            ## Sets the showPercentage property value. Boolean value representing if the data label percentage is visible or not.
            ## @param value Value to set for the show_percentage property.
            ## @return a void
            ## 
            def show_percentage=(value)
                @show_percentage = value
            end
            ## 
            ## Gets the showSeriesName property value. Boolean value representing if the data label series name is visible or not.
            ## @return a boolean
            ## 
            def show_series_name
                return @show_series_name
            end
            ## 
            ## Sets the showSeriesName property value. Boolean value representing if the data label series name is visible or not.
            ## @param value Value to set for the show_series_name property.
            ## @return a void
            ## 
            def show_series_name=(value)
                @show_series_name = value
            end
            ## 
            ## Gets the showValue property value. Boolean value representing if the data label value is visible or not.
            ## @return a boolean
            ## 
            def show_value
                return @show_value
            end
            ## 
            ## Sets the showValue property value. Boolean value representing if the data label value is visible or not.
            ## @param value Value to set for the show_value property.
            ## @return a void
            ## 
            def show_value=(value)
                @show_value = value
            end
        end
    end
end
