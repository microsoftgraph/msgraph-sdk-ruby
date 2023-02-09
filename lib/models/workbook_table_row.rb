require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookTableRow < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.
            @index
            ## 
            # Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            @values
            ## 
            ## Instantiates a new workbookTableRow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
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
                    "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the index property value. Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.
            ## @return a integer
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.
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
                writer.write_object_value("values", @values)
            end
            ## 
            ## Gets the values property value. Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            ## @return a json
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
