require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartPointFormat < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the fill format of a chart, which includes background formating information. Read-only.
            @fill
            ## 
            ## Instantiates a new workbookChartPointFormat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_point_format
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartPointFormat.new
            end
            ## 
            ## Gets the fill property value. Represents the fill format of a chart, which includes background formating information. Read-only.
            ## @return a workbook_chart_fill
            ## 
            def fill
                return @fill
            end
            ## 
            ## Sets the fill property value. Represents the fill format of a chart, which includes background formating information. Read-only.
            ## @param value Value to set for the fill property.
            ## @return a void
            ## 
            def fill=(value)
                @fill = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fill" => lambda {|n| @fill = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartFill.create_from_discriminator_value(pn) }) },
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
            end
        end
    end
end
