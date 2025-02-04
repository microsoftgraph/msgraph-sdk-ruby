require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookChartGridlinesFormat < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents chart line formatting. Read-only.
            @line
            ## 
            ## Instantiates a new WorkbookChartGridlinesFormat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_chart_gridlines_format
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookChartGridlinesFormat.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "line" => lambda {|n| @line = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookChartLineFormat.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the line property value. Represents chart line formatting. Read-only.
            ## @return a workbook_chart_line_format
            ## 
            def line
                return @line
            end
            ## 
            ## Sets the line property value. Represents chart line formatting. Read-only.
            ## @param value Value to set for the line property.
            ## @return a void
            ## 
            def line=(value)
                @line = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("line", @line)
            end
        end
    end
end
