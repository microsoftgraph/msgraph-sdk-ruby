require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartPoint < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Encapsulates the format properties chart point. Read-only.
            @format
            ## 
            # Returns the value of a chart point. Read-only.
            @value
            ## 
            ## Instantiates a new workbookChartPoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_point
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartPoint.new
            end
            ## 
            ## Gets the format property value. Encapsulates the format properties chart point. Read-only.
            ## @return a workbook_chart_point_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Encapsulates the format properties chart point. Read-only.
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
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartPointFormat.create_from_discriminator_value(pn) }) },
                    "value" => lambda {|n| @value = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("value", @value)
            end
            ## 
            ## Gets the value property value. Returns the value of a chart point. Read-only.
            ## @return a json
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Returns the value of a chart point. Read-only.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
