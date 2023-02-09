require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookTable < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents a collection of all the columns in the table. Read-only.
            @columns
            ## 
            # Indicates whether the first column contains special formatting.
            @highlight_first_column
            ## 
            # Indicates whether the last column contains special formatting.
            @highlight_last_column
            ## 
            # Legacy Id used in older Excle clients. The value of the identifier remains the same even when the table is renamed. This property should be interpreted as an opaque string value and should not be parsed to any other type. Read-only.
            @legacy_id
            ## 
            # Name of the table.
            @name
            ## 
            # Represents a collection of all the rows in the table. Read-only.
            @rows
            ## 
            # Indicates whether the columns show banded formatting in which odd columns are highlighted differently from even ones to make reading the table easier.
            @show_banded_columns
            ## 
            # Indicates whether the rows show banded formatting in which odd rows are highlighted differently from even ones to make reading the table easier.
            @show_banded_rows
            ## 
            # Indicates whether the filter buttons are visible at the top of each column header. Setting this is only allowed if the table contains a header row.
            @show_filter_button
            ## 
            # Indicates whether the header row is visible or not. This value can be set to show or remove the header row.
            @show_headers
            ## 
            # Indicates whether the total row is visible or not. This value can be set to show or remove the total row.
            @show_totals
            ## 
            # Represents the sorting for the table. Read-only.
            @sort
            ## 
            # Constant value that represents the Table style. The possible values are: TableStyleLight1 thru TableStyleLight21, TableStyleMedium1 thru TableStyleMedium28, TableStyleStyleDark1 thru TableStyleStyleDark11. A custom user-defined style present in the workbook can also be specified.
            @style
            ## 
            # The worksheet containing the current table. Read-only.
            @worksheet
            ## 
            ## Gets the columns property value. Represents a collection of all the columns in the table. Read-only.
            ## @return a workbook_table_column
            ## 
            def columns
                return @columns
            end
            ## 
            ## Sets the columns property value. Represents a collection of all the columns in the table. Read-only.
            ## @param value Value to set for the columns property.
            ## @return a void
            ## 
            def columns=(value)
                @columns = value
            end
            ## 
            ## Instantiates a new workbookTable and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_table
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookTable.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "columns" => lambda {|n| @columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookTableColumn.create_from_discriminator_value(pn) }) },
                    "highlightFirstColumn" => lambda {|n| @highlight_first_column = n.get_boolean_value() },
                    "highlightLastColumn" => lambda {|n| @highlight_last_column = n.get_boolean_value() },
                    "legacyId" => lambda {|n| @legacy_id = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "rows" => lambda {|n| @rows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookTableRow.create_from_discriminator_value(pn) }) },
                    "showBandedColumns" => lambda {|n| @show_banded_columns = n.get_boolean_value() },
                    "showBandedRows" => lambda {|n| @show_banded_rows = n.get_boolean_value() },
                    "showFilterButton" => lambda {|n| @show_filter_button = n.get_boolean_value() },
                    "showHeaders" => lambda {|n| @show_headers = n.get_boolean_value() },
                    "showTotals" => lambda {|n| @show_totals = n.get_boolean_value() },
                    "sort" => lambda {|n| @sort = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookTableSort.create_from_discriminator_value(pn) }) },
                    "style" => lambda {|n| @style = n.get_string_value() },
                    "worksheet" => lambda {|n| @worksheet = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the highlightFirstColumn property value. Indicates whether the first column contains special formatting.
            ## @return a boolean
            ## 
            def highlight_first_column
                return @highlight_first_column
            end
            ## 
            ## Sets the highlightFirstColumn property value. Indicates whether the first column contains special formatting.
            ## @param value Value to set for the highlight_first_column property.
            ## @return a void
            ## 
            def highlight_first_column=(value)
                @highlight_first_column = value
            end
            ## 
            ## Gets the highlightLastColumn property value. Indicates whether the last column contains special formatting.
            ## @return a boolean
            ## 
            def highlight_last_column
                return @highlight_last_column
            end
            ## 
            ## Sets the highlightLastColumn property value. Indicates whether the last column contains special formatting.
            ## @param value Value to set for the highlight_last_column property.
            ## @return a void
            ## 
            def highlight_last_column=(value)
                @highlight_last_column = value
            end
            ## 
            ## Gets the legacyId property value. Legacy Id used in older Excle clients. The value of the identifier remains the same even when the table is renamed. This property should be interpreted as an opaque string value and should not be parsed to any other type. Read-only.
            ## @return a string
            ## 
            def legacy_id
                return @legacy_id
            end
            ## 
            ## Sets the legacyId property value. Legacy Id used in older Excle clients. The value of the identifier remains the same even when the table is renamed. This property should be interpreted as an opaque string value and should not be parsed to any other type. Read-only.
            ## @param value Value to set for the legacy_id property.
            ## @return a void
            ## 
            def legacy_id=(value)
                @legacy_id = value
            end
            ## 
            ## Gets the name property value. Name of the table.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the table.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the rows property value. Represents a collection of all the rows in the table. Read-only.
            ## @return a workbook_table_row
            ## 
            def rows
                return @rows
            end
            ## 
            ## Sets the rows property value. Represents a collection of all the rows in the table. Read-only.
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
                writer.write_collection_of_object_values("columns", @columns)
                writer.write_boolean_value("highlightFirstColumn", @highlight_first_column)
                writer.write_boolean_value("highlightLastColumn", @highlight_last_column)
                writer.write_string_value("legacyId", @legacy_id)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("rows", @rows)
                writer.write_boolean_value("showBandedColumns", @show_banded_columns)
                writer.write_boolean_value("showBandedRows", @show_banded_rows)
                writer.write_boolean_value("showFilterButton", @show_filter_button)
                writer.write_boolean_value("showHeaders", @show_headers)
                writer.write_boolean_value("showTotals", @show_totals)
                writer.write_object_value("sort", @sort)
                writer.write_string_value("style", @style)
                writer.write_object_value("worksheet", @worksheet)
            end
            ## 
            ## Gets the showBandedColumns property value. Indicates whether the columns show banded formatting in which odd columns are highlighted differently from even ones to make reading the table easier.
            ## @return a boolean
            ## 
            def show_banded_columns
                return @show_banded_columns
            end
            ## 
            ## Sets the showBandedColumns property value. Indicates whether the columns show banded formatting in which odd columns are highlighted differently from even ones to make reading the table easier.
            ## @param value Value to set for the show_banded_columns property.
            ## @return a void
            ## 
            def show_banded_columns=(value)
                @show_banded_columns = value
            end
            ## 
            ## Gets the showBandedRows property value. Indicates whether the rows show banded formatting in which odd rows are highlighted differently from even ones to make reading the table easier.
            ## @return a boolean
            ## 
            def show_banded_rows
                return @show_banded_rows
            end
            ## 
            ## Sets the showBandedRows property value. Indicates whether the rows show banded formatting in which odd rows are highlighted differently from even ones to make reading the table easier.
            ## @param value Value to set for the show_banded_rows property.
            ## @return a void
            ## 
            def show_banded_rows=(value)
                @show_banded_rows = value
            end
            ## 
            ## Gets the showFilterButton property value. Indicates whether the filter buttons are visible at the top of each column header. Setting this is only allowed if the table contains a header row.
            ## @return a boolean
            ## 
            def show_filter_button
                return @show_filter_button
            end
            ## 
            ## Sets the showFilterButton property value. Indicates whether the filter buttons are visible at the top of each column header. Setting this is only allowed if the table contains a header row.
            ## @param value Value to set for the show_filter_button property.
            ## @return a void
            ## 
            def show_filter_button=(value)
                @show_filter_button = value
            end
            ## 
            ## Gets the showHeaders property value. Indicates whether the header row is visible or not. This value can be set to show or remove the header row.
            ## @return a boolean
            ## 
            def show_headers
                return @show_headers
            end
            ## 
            ## Sets the showHeaders property value. Indicates whether the header row is visible or not. This value can be set to show or remove the header row.
            ## @param value Value to set for the show_headers property.
            ## @return a void
            ## 
            def show_headers=(value)
                @show_headers = value
            end
            ## 
            ## Gets the showTotals property value. Indicates whether the total row is visible or not. This value can be set to show or remove the total row.
            ## @return a boolean
            ## 
            def show_totals
                return @show_totals
            end
            ## 
            ## Sets the showTotals property value. Indicates whether the total row is visible or not. This value can be set to show or remove the total row.
            ## @param value Value to set for the show_totals property.
            ## @return a void
            ## 
            def show_totals=(value)
                @show_totals = value
            end
            ## 
            ## Gets the sort property value. Represents the sorting for the table. Read-only.
            ## @return a workbook_table_sort
            ## 
            def sort
                return @sort
            end
            ## 
            ## Sets the sort property value. Represents the sorting for the table. Read-only.
            ## @param value Value to set for the sort property.
            ## @return a void
            ## 
            def sort=(value)
                @sort = value
            end
            ## 
            ## Gets the style property value. Constant value that represents the Table style. The possible values are: TableStyleLight1 thru TableStyleLight21, TableStyleMedium1 thru TableStyleMedium28, TableStyleStyleDark1 thru TableStyleStyleDark11. A custom user-defined style present in the workbook can also be specified.
            ## @return a string
            ## 
            def style
                return @style
            end
            ## 
            ## Sets the style property value. Constant value that represents the Table style. The possible values are: TableStyleLight1 thru TableStyleLight21, TableStyleMedium1 thru TableStyleMedium28, TableStyleStyleDark1 thru TableStyleStyleDark11. A custom user-defined style present in the workbook can also be specified.
            ## @param value Value to set for the style property.
            ## @return a void
            ## 
            def style=(value)
                @style = value
            end
            ## 
            ## Gets the worksheet property value. The worksheet containing the current table. Read-only.
            ## @return a workbook_worksheet
            ## 
            def worksheet
                return @worksheet
            end
            ## 
            ## Sets the worksheet property value. The worksheet containing the current table. Read-only.
            ## @param value Value to set for the worksheet property.
            ## @return a void
            ## 
            def worksheet=(value)
                @worksheet = value
            end
        end
    end
end
