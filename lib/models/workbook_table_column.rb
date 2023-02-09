require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookTableColumn < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Retrieve the filter applied to the column. Read-only.
            @filter
            ## 
            # Returns the index number of the column within the columns collection of the table. Zero-indexed. Read-only.
            @index
            ## 
            # Returns the name of the table column.
            @name
            ## 
            # Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            @values
            ## 
            ## Instantiates a new workbookTableColumn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_table_column
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookTableColumn.new
            end
            ## 
            ## Gets the filter property value. Retrieve the filter applied to the column. Read-only.
            ## @return a workbook_filter
            ## 
            def filter
                return @filter
            end
            ## 
            ## Sets the filter property value. Retrieve the filter applied to the column. Read-only.
            ## @param value Value to set for the filter property.
            ## @return a void
            ## 
            def filter=(value)
                @filter = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "filter" => lambda {|n| @filter = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookFilter.create_from_discriminator_value(pn) }) },
                    "index" => lambda {|n| @index = n.get_number_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the index property value. Returns the index number of the column within the columns collection of the table. Zero-indexed. Read-only.
            ## @return a integer
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. Returns the index number of the column within the columns collection of the table. Zero-indexed. Read-only.
            ## @param value Value to set for the index property.
            ## @return a void
            ## 
            def index=(value)
                @index = value
            end
            ## 
            ## Gets the name property value. Returns the name of the table column.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Returns the name of the table column.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("filter", @filter)
                writer.write_number_value("index", @index)
                writer.write_string_value("name", @name)
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
