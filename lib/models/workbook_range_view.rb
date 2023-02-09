require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookRangeView < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the cell addresses
            @cell_addresses
            ## 
            # Returns the number of visible columns. Read-only.
            @column_count
            ## 
            # Represents the formula in A1-style notation.
            @formulas
            ## 
            # Represents the formula in A1-style notation, in the user's language and number-formatting locale. For example, the English '=SUM(A1, 1.5)' formula would become '=SUMME(A1; 1,5)' in German.
            @formulas_local
            ## 
            # Represents the formula in R1C1-style notation.
            @formulas_r1_c1
            ## 
            # Index of the range.
            @index
            ## 
            # Represents Excel's number format code for the given cell. Read-only.
            @number_format
            ## 
            # Returns the number of visible rows. Read-only.
            @row_count
            ## 
            # Represents a collection of range views associated with the range. Read-only. Read-only.
            @rows
            ## 
            # Text values of the specified range. The Text value will not depend on the cell width. The # sign substitution that happens in Excel UI will not affect the text value returned by the API. Read-only.
            @text
            ## 
            # Represents the type of data of each cell. Read-only. The possible values are: Unknown, Empty, String, Integer, Double, Boolean, Error.
            @value_types
            ## 
            # Represents the raw values of the specified range view. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            @values
            ## 
            ## Gets the cellAddresses property value. Represents the cell addresses
            ## @return a json
            ## 
            def cell_addresses
                return @cell_addresses
            end
            ## 
            ## Sets the cellAddresses property value. Represents the cell addresses
            ## @param value Value to set for the cell_addresses property.
            ## @return a void
            ## 
            def cell_addresses=(value)
                @cell_addresses = value
            end
            ## 
            ## Gets the columnCount property value. Returns the number of visible columns. Read-only.
            ## @return a integer
            ## 
            def column_count
                return @column_count
            end
            ## 
            ## Sets the columnCount property value. Returns the number of visible columns. Read-only.
            ## @param value Value to set for the column_count property.
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
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_range_view
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookRangeView.new
            end
            ## 
            ## Gets the formulas property value. Represents the formula in A1-style notation.
            ## @return a json
            ## 
            def formulas
                return @formulas
            end
            ## 
            ## Sets the formulas property value. Represents the formula in A1-style notation.
            ## @param value Value to set for the formulas property.
            ## @return a void
            ## 
            def formulas=(value)
                @formulas = value
            end
            ## 
            ## Gets the formulasLocal property value. Represents the formula in A1-style notation, in the user's language and number-formatting locale. For example, the English '=SUM(A1, 1.5)' formula would become '=SUMME(A1; 1,5)' in German.
            ## @return a json
            ## 
            def formulas_local
                return @formulas_local
            end
            ## 
            ## Sets the formulasLocal property value. Represents the formula in A1-style notation, in the user's language and number-formatting locale. For example, the English '=SUM(A1, 1.5)' formula would become '=SUMME(A1; 1,5)' in German.
            ## @param value Value to set for the formulas_local property.
            ## @return a void
            ## 
            def formulas_local=(value)
                @formulas_local = value
            end
            ## 
            ## Gets the formulasR1C1 property value. Represents the formula in R1C1-style notation.
            ## @return a json
            ## 
            def formulas_r1_c1
                return @formulas_r1_c1
            end
            ## 
            ## Sets the formulasR1C1 property value. Represents the formula in R1C1-style notation.
            ## @param value Value to set for the formulas_r1_c1 property.
            ## @return a void
            ## 
            def formulas_r1_c1=(value)
                @formulas_r1_c1 = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cellAddresses" => lambda {|n| @cell_addresses = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "columnCount" => lambda {|n| @column_count = n.get_number_value() },
                    "formulas" => lambda {|n| @formulas = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "formulasLocal" => lambda {|n| @formulas_local = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "formulasR1C1" => lambda {|n| @formulas_r1_c1 = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "index" => lambda {|n| @index = n.get_number_value() },
                    "numberFormat" => lambda {|n| @number_format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "rowCount" => lambda {|n| @row_count = n.get_number_value() },
                    "rows" => lambda {|n| @rows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookRangeView.create_from_discriminator_value(pn) }) },
                    "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "valueTypes" => lambda {|n| @value_types = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the index property value. Index of the range.
            ## @return a integer
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. Index of the range.
            ## @param value Value to set for the index property.
            ## @return a void
            ## 
            def index=(value)
                @index = value
            end
            ## 
            ## Gets the numberFormat property value. Represents Excel's number format code for the given cell. Read-only.
            ## @return a json
            ## 
            def number_format
                return @number_format
            end
            ## 
            ## Sets the numberFormat property value. Represents Excel's number format code for the given cell. Read-only.
            ## @param value Value to set for the number_format property.
            ## @return a void
            ## 
            def number_format=(value)
                @number_format = value
            end
            ## 
            ## Gets the rowCount property value. Returns the number of visible rows. Read-only.
            ## @return a integer
            ## 
            def row_count
                return @row_count
            end
            ## 
            ## Sets the rowCount property value. Returns the number of visible rows. Read-only.
            ## @param value Value to set for the row_count property.
            ## @return a void
            ## 
            def row_count=(value)
                @row_count = value
            end
            ## 
            ## Gets the rows property value. Represents a collection of range views associated with the range. Read-only. Read-only.
            ## @return a workbook_range_view
            ## 
            def rows
                return @rows
            end
            ## 
            ## Sets the rows property value. Represents a collection of range views associated with the range. Read-only. Read-only.
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
                writer.write_object_value("cellAddresses", @cell_addresses)
                writer.write_number_value("columnCount", @column_count)
                writer.write_object_value("formulas", @formulas)
                writer.write_object_value("formulasLocal", @formulas_local)
                writer.write_object_value("formulasR1C1", @formulas_r1_c1)
                writer.write_number_value("index", @index)
                writer.write_object_value("numberFormat", @number_format)
                writer.write_number_value("rowCount", @row_count)
                writer.write_collection_of_object_values("rows", @rows)
                writer.write_object_value("text", @text)
                writer.write_object_value("valueTypes", @value_types)
                writer.write_object_value("values", @values)
            end
            ## 
            ## Gets the text property value. Text values of the specified range. The Text value will not depend on the cell width. The # sign substitution that happens in Excel UI will not affect the text value returned by the API. Read-only.
            ## @return a json
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. Text values of the specified range. The Text value will not depend on the cell width. The # sign substitution that happens in Excel UI will not affect the text value returned by the API. Read-only.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
            ## 
            ## Gets the valueTypes property value. Represents the type of data of each cell. Read-only. The possible values are: Unknown, Empty, String, Integer, Double, Boolean, Error.
            ## @return a json
            ## 
            def value_types
                return @value_types
            end
            ## 
            ## Sets the valueTypes property value. Represents the type of data of each cell. Read-only. The possible values are: Unknown, Empty, String, Integer, Double, Boolean, Error.
            ## @param value Value to set for the value_types property.
            ## @return a void
            ## 
            def value_types=(value)
                @value_types = value
            end
            ## 
            ## Gets the values property value. Represents the raw values of the specified range view. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            ## @return a json
            ## 
            def values
                return @values
            end
            ## 
            ## Sets the values property value. Represents the raw values of the specified range view. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            ## @param value Value to set for the values property.
            ## @return a void
            ## 
            def values=(value)
                @values = value
            end
        end
    end
end
