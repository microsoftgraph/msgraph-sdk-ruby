require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookRange < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the range reference in A1-style. Address value will contain the Sheet reference (e.g. Sheet1!A1:B4). Read-only.
            @address
            ## 
            # Represents range reference for the specified range in the language of the user. Read-only.
            @address_local
            ## 
            # Number of cells in the range. Read-only.
            @cell_count
            ## 
            # Represents the total number of columns in the range. Read-only.
            @column_count
            ## 
            # Represents if all columns of the current range are hidden.
            @column_hidden
            ## 
            # Represents the column number of the first cell in the range. Zero-indexed. Read-only.
            @column_index
            ## 
            # Returns a format object, encapsulating the range's font, fill, borders, alignment, and other properties. Read-only.
            @format
            ## 
            # Represents the formula in A1-style notation.
            @formulas
            ## 
            # Represents the formula in A1-style notation, in the user's language and number-formatting locale.  For example, the English '=SUM(A1, 1.5)' formula would become '=SUMME(A1; 1,5)' in German.
            @formulas_local
            ## 
            # Represents the formula in R1C1-style notation.
            @formulas_r1_c1
            ## 
            # Represents if all cells of the current range are hidden. Read-only.
            @hidden
            ## 
            # Represents Excel's number format code for the given cell.
            @number_format
            ## 
            # Returns the total number of rows in the range. Read-only.
            @row_count
            ## 
            # Represents if all rows of the current range are hidden.
            @row_hidden
            ## 
            # Returns the row number of the first cell in the range. Zero-indexed. Read-only.
            @row_index
            ## 
            # The worksheet containing the current range. Read-only.
            @sort
            ## 
            # Text values of the specified range. The Text value will not depend on the cell width. The # sign substitution that happens in Excel UI will not affect the text value returned by the API. Read-only.
            @text
            ## 
            # Represents the type of data of each cell. The possible values are: Unknown, Empty, String, Integer, Double, Boolean, Error. Read-only.
            @value_types
            ## 
            # Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
            @values
            ## 
            # The worksheet containing the current range. Read-only.
            @worksheet
            ## 
            ## Gets the address property value. Represents the range reference in A1-style. Address value will contain the Sheet reference (e.g. Sheet1!A1:B4). Read-only.
            ## @return a string
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. Represents the range reference in A1-style. Address value will contain the Sheet reference (e.g. Sheet1!A1:B4). Read-only.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the addressLocal property value. Represents range reference for the specified range in the language of the user. Read-only.
            ## @return a string
            ## 
            def address_local
                return @address_local
            end
            ## 
            ## Sets the addressLocal property value. Represents range reference for the specified range in the language of the user. Read-only.
            ## @param value Value to set for the address_local property.
            ## @return a void
            ## 
            def address_local=(value)
                @address_local = value
            end
            ## 
            ## Gets the cellCount property value. Number of cells in the range. Read-only.
            ## @return a integer
            ## 
            def cell_count
                return @cell_count
            end
            ## 
            ## Sets the cellCount property value. Number of cells in the range. Read-only.
            ## @param value Value to set for the cell_count property.
            ## @return a void
            ## 
            def cell_count=(value)
                @cell_count = value
            end
            ## 
            ## Gets the columnCount property value. Represents the total number of columns in the range. Read-only.
            ## @return a integer
            ## 
            def column_count
                return @column_count
            end
            ## 
            ## Sets the columnCount property value. Represents the total number of columns in the range. Read-only.
            ## @param value Value to set for the column_count property.
            ## @return a void
            ## 
            def column_count=(value)
                @column_count = value
            end
            ## 
            ## Gets the columnHidden property value. Represents if all columns of the current range are hidden.
            ## @return a boolean
            ## 
            def column_hidden
                return @column_hidden
            end
            ## 
            ## Sets the columnHidden property value. Represents if all columns of the current range are hidden.
            ## @param value Value to set for the column_hidden property.
            ## @return a void
            ## 
            def column_hidden=(value)
                @column_hidden = value
            end
            ## 
            ## Gets the columnIndex property value. Represents the column number of the first cell in the range. Zero-indexed. Read-only.
            ## @return a integer
            ## 
            def column_index
                return @column_index
            end
            ## 
            ## Sets the columnIndex property value. Represents the column number of the first cell in the range. Zero-indexed. Read-only.
            ## @param value Value to set for the column_index property.
            ## @return a void
            ## 
            def column_index=(value)
                @column_index = value
            end
            ## 
            ## Instantiates a new WorkbookRange and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_range
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookRange.new
            end
            ## 
            ## Gets the format property value. Returns a format object, encapsulating the range's font, fill, borders, alignment, and other properties. Read-only.
            ## @return a workbook_range_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Returns a format object, encapsulating the range's font, fill, borders, alignment, and other properties. Read-only.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
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
            ## Gets the formulasLocal property value. Represents the formula in A1-style notation, in the user's language and number-formatting locale.  For example, the English '=SUM(A1, 1.5)' formula would become '=SUMME(A1; 1,5)' in German.
            ## @return a json
            ## 
            def formulas_local
                return @formulas_local
            end
            ## 
            ## Sets the formulasLocal property value. Represents the formula in A1-style notation, in the user's language and number-formatting locale.  For example, the English '=SUM(A1, 1.5)' formula would become '=SUMME(A1; 1,5)' in German.
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
                    "address" => lambda {|n| @address = n.get_string_value() },
                    "addressLocal" => lambda {|n| @address_local = n.get_string_value() },
                    "cellCount" => lambda {|n| @cell_count = n.get_number_value() },
                    "columnCount" => lambda {|n| @column_count = n.get_number_value() },
                    "columnHidden" => lambda {|n| @column_hidden = n.get_boolean_value() },
                    "columnIndex" => lambda {|n| @column_index = n.get_number_value() },
                    "format" => lambda {|n| @format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookRangeFormat.create_from_discriminator_value(pn) }) },
                    "formulas" => lambda {|n| @formulas = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "formulasLocal" => lambda {|n| @formulas_local = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "formulasR1C1" => lambda {|n| @formulas_r1_c1 = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "hidden" => lambda {|n| @hidden = n.get_boolean_value() },
                    "numberFormat" => lambda {|n| @number_format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "rowCount" => lambda {|n| @row_count = n.get_number_value() },
                    "rowHidden" => lambda {|n| @row_hidden = n.get_boolean_value() },
                    "rowIndex" => lambda {|n| @row_index = n.get_number_value() },
                    "sort" => lambda {|n| @sort = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookRangeSort.create_from_discriminator_value(pn) }) },
                    "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "valueTypes" => lambda {|n| @value_types = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                    "worksheet" => lambda {|n| @worksheet = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hidden property value. Represents if all cells of the current range are hidden. Read-only.
            ## @return a boolean
            ## 
            def hidden
                return @hidden
            end
            ## 
            ## Sets the hidden property value. Represents if all cells of the current range are hidden. Read-only.
            ## @param value Value to set for the hidden property.
            ## @return a void
            ## 
            def hidden=(value)
                @hidden = value
            end
            ## 
            ## Gets the numberFormat property value. Represents Excel's number format code for the given cell.
            ## @return a json
            ## 
            def number_format
                return @number_format
            end
            ## 
            ## Sets the numberFormat property value. Represents Excel's number format code for the given cell.
            ## @param value Value to set for the number_format property.
            ## @return a void
            ## 
            def number_format=(value)
                @number_format = value
            end
            ## 
            ## Gets the rowCount property value. Returns the total number of rows in the range. Read-only.
            ## @return a integer
            ## 
            def row_count
                return @row_count
            end
            ## 
            ## Sets the rowCount property value. Returns the total number of rows in the range. Read-only.
            ## @param value Value to set for the row_count property.
            ## @return a void
            ## 
            def row_count=(value)
                @row_count = value
            end
            ## 
            ## Gets the rowHidden property value. Represents if all rows of the current range are hidden.
            ## @return a boolean
            ## 
            def row_hidden
                return @row_hidden
            end
            ## 
            ## Sets the rowHidden property value. Represents if all rows of the current range are hidden.
            ## @param value Value to set for the row_hidden property.
            ## @return a void
            ## 
            def row_hidden=(value)
                @row_hidden = value
            end
            ## 
            ## Gets the rowIndex property value. Returns the row number of the first cell in the range. Zero-indexed. Read-only.
            ## @return a integer
            ## 
            def row_index
                return @row_index
            end
            ## 
            ## Sets the rowIndex property value. Returns the row number of the first cell in the range. Zero-indexed. Read-only.
            ## @param value Value to set for the row_index property.
            ## @return a void
            ## 
            def row_index=(value)
                @row_index = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("address", @address)
                writer.write_string_value("addressLocal", @address_local)
                writer.write_number_value("cellCount", @cell_count)
                writer.write_number_value("columnCount", @column_count)
                writer.write_boolean_value("columnHidden", @column_hidden)
                writer.write_number_value("columnIndex", @column_index)
                writer.write_object_value("format", @format)
                writer.write_object_value("formulas", @formulas)
                writer.write_object_value("formulasLocal", @formulas_local)
                writer.write_object_value("formulasR1C1", @formulas_r1_c1)
                writer.write_boolean_value("hidden", @hidden)
                writer.write_object_value("numberFormat", @number_format)
                writer.write_number_value("rowCount", @row_count)
                writer.write_boolean_value("rowHidden", @row_hidden)
                writer.write_number_value("rowIndex", @row_index)
                writer.write_object_value("sort", @sort)
                writer.write_object_value("text", @text)
                writer.write_object_value("valueTypes", @value_types)
                writer.write_object_value("values", @values)
                writer.write_object_value("worksheet", @worksheet)
            end
            ## 
            ## Gets the sort property value. The worksheet containing the current range. Read-only.
            ## @return a workbook_range_sort
            ## 
            def sort
                return @sort
            end
            ## 
            ## Sets the sort property value. The worksheet containing the current range. Read-only.
            ## @param value Value to set for the sort property.
            ## @return a void
            ## 
            def sort=(value)
                @sort = value
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
            ## Gets the valueTypes property value. Represents the type of data of each cell. The possible values are: Unknown, Empty, String, Integer, Double, Boolean, Error. Read-only.
            ## @return a json
            ## 
            def value_types
                return @value_types
            end
            ## 
            ## Sets the valueTypes property value. Represents the type of data of each cell. The possible values are: Unknown, Empty, String, Integer, Double, Boolean, Error. Read-only.
            ## @param value Value to set for the value_types property.
            ## @return a void
            ## 
            def value_types=(value)
                @value_types = value
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
            ## 
            ## Gets the worksheet property value. The worksheet containing the current range. Read-only.
            ## @return a workbook_worksheet
            ## 
            def worksheet
                return @worksheet
            end
            ## 
            ## Sets the worksheet property value. The worksheet containing the current range. Read-only.
            ## @param value Value to set for the worksheet property.
            ## @return a void
            ## 
            def worksheet=(value)
                @worksheet = value
            end
        end
    end
end
