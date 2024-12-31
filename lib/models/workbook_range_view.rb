require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookRangeView < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of visible columns. Read-only.
            @column_count
            ## 
            # The index of the range.
            @index
            ## 
            # The number of visible rows. Read-only.
            @row_count
            ## 
            # The collection of range views associated with the range. Read-only.Read-only.
            @rows
            ## 
            ## Gets the columnCount property value. The number of visible columns. Read-only.
            ## @return a integer
            ## 
            def column_count
                return @column_count
            end
            ## 
            ## Sets the columnCount property value. The number of visible columns. Read-only.
            ## @param value Value to set for the columnCount property.
            ## @return a void
            ## 
            def column_count=(value)
                @column_count = value
            end
            ## 
            ## Instantiates a new WorkbookRangeView and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_range_view
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookRangeView.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "columnCount" => lambda {|n| @column_count = n.get_number_value() },
                    "index" => lambda {|n| @index = n.get_number_value() },
                    "rowCount" => lambda {|n| @row_count = n.get_number_value() },
                    "rows" => lambda {|n| @rows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookRangeView.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the index property value. The index of the range.
            ## @return a integer
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. The index of the range.
            ## @param value Value to set for the index property.
            ## @return a void
            ## 
            def index=(value)
                @index = value
            end
            ## 
            ## Gets the rowCount property value. The number of visible rows. Read-only.
            ## @return a integer
            ## 
            def row_count
                return @row_count
            end
            ## 
            ## Sets the rowCount property value. The number of visible rows. Read-only.
            ## @param value Value to set for the rowCount property.
            ## @return a void
            ## 
            def row_count=(value)
                @row_count = value
            end
            ## 
            ## Gets the rows property value. The collection of range views associated with the range. Read-only.Read-only.
            ## @return a workbook_range_view
            ## 
            def rows
                return @rows
            end
            ## 
            ## Sets the rows property value. The collection of range views associated with the range. Read-only.Read-only.
            ## @param value Value to set for the rows property.
            ## @return a void
            ## 
            def rows=(value)
                @rows = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("columnCount", @column_count)
                writer.write_number_value("index", @index)
                writer.write_number_value("rowCount", @row_count)
                writer.write_collection_of_object_values("rows", @rows)
            end
        end
    end
end
