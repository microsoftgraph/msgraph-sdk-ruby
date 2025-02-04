require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookTableRow < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The index of the row within the rows collection of the table. Zero-based. Read-only.
            @index
            ## 
            ## Instantiates a new WorkbookTableRow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_table_row
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookTableRow.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "index" => lambda {|n| @index = n.get_number_value() },
                })
            end
            ## 
            ## Gets the index property value. The index of the row within the rows collection of the table. Zero-based. Read-only.
            ## @return a integer
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. The index of the row within the rows collection of the table. Zero-based. Read-only.
            ## @param value Value to set for the index property.
            ## @return a void
            ## 
            def index=(value)
                @index = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("index", @index)
            end
        end
    end
end
