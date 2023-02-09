require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartAxisTitle < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the formatting of chart axis title. Read-only.
            @format
            ## 
            # Represents the axis title.
            @text
            ## 
            # A boolean that specifies the visibility of an axis title.
            @visible
            ## 
            ## Instantiates a new workbookChartAxisTitle and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_axis_title
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartAxisTitle.new
            end
            ## 
            ## Gets the format property value. Represents the formatting of chart axis title. Read-only.
            ## @return a workbook_chart_axis_title_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Represents the formatting of chart axis title. Read-only.
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
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartAxisTitleFormat.create_from_discriminator_value(pn) }) },
                    "text" => lambda {|n| @text = n.get_string_value() },
                    "visible" => lambda {|n| @visible = n.get_boolean_value() },
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
                writer.write_object_value("format", @format)
                writer.write_string_value("text", @text)
                writer.write_boolean_value("visible", @visible)
            end
            ## 
            ## Gets the text property value. Represents the axis title.
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. Represents the axis title.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
            ## 
            ## Gets the visible property value. A boolean that specifies the visibility of an axis title.
            ## @return a boolean
            ## 
            def visible
                return @visible
            end
            ## 
            ## Sets the visible property value. A boolean that specifies the visibility of an axis title.
            ## @param value Value to set for the visible property.
            ## @return a void
            ## 
            def visible=(value)
                @visible = value
            end
        end
    end
end
