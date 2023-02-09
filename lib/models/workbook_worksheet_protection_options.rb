require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookWorksheetProtectionOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents the worksheet protection option of allowing using auto filter feature.
            @allow_auto_filter
            ## 
            # Represents the worksheet protection option of allowing deleting columns.
            @allow_delete_columns
            ## 
            # Represents the worksheet protection option of allowing deleting rows.
            @allow_delete_rows
            ## 
            # Represents the worksheet protection option of allowing formatting cells.
            @allow_format_cells
            ## 
            # Represents the worksheet protection option of allowing formatting columns.
            @allow_format_columns
            ## 
            # Represents the worksheet protection option of allowing formatting rows.
            @allow_format_rows
            ## 
            # Represents the worksheet protection option of allowing inserting columns.
            @allow_insert_columns
            ## 
            # Represents the worksheet protection option of allowing inserting hyperlinks.
            @allow_insert_hyperlinks
            ## 
            # Represents the worksheet protection option of allowing inserting rows.
            @allow_insert_rows
            ## 
            # Represents the worksheet protection option of allowing using pivot table feature.
            @allow_pivot_tables
            ## 
            # Represents the worksheet protection option of allowing using sort feature.
            @allow_sort
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowAutoFilter property value. Represents the worksheet protection option of allowing using auto filter feature.
            ## @return a boolean
            ## 
            def allow_auto_filter
                return @allow_auto_filter
            end
            ## 
            ## Sets the allowAutoFilter property value. Represents the worksheet protection option of allowing using auto filter feature.
            ## @param value Value to set for the allow_auto_filter property.
            ## @return a void
            ## 
            def allow_auto_filter=(value)
                @allow_auto_filter = value
            end
            ## 
            ## Gets the allowDeleteColumns property value. Represents the worksheet protection option of allowing deleting columns.
            ## @return a boolean
            ## 
            def allow_delete_columns
                return @allow_delete_columns
            end
            ## 
            ## Sets the allowDeleteColumns property value. Represents the worksheet protection option of allowing deleting columns.
            ## @param value Value to set for the allow_delete_columns property.
            ## @return a void
            ## 
            def allow_delete_columns=(value)
                @allow_delete_columns = value
            end
            ## 
            ## Gets the allowDeleteRows property value. Represents the worksheet protection option of allowing deleting rows.
            ## @return a boolean
            ## 
            def allow_delete_rows
                return @allow_delete_rows
            end
            ## 
            ## Sets the allowDeleteRows property value. Represents the worksheet protection option of allowing deleting rows.
            ## @param value Value to set for the allow_delete_rows property.
            ## @return a void
            ## 
            def allow_delete_rows=(value)
                @allow_delete_rows = value
            end
            ## 
            ## Gets the allowFormatCells property value. Represents the worksheet protection option of allowing formatting cells.
            ## @return a boolean
            ## 
            def allow_format_cells
                return @allow_format_cells
            end
            ## 
            ## Sets the allowFormatCells property value. Represents the worksheet protection option of allowing formatting cells.
            ## @param value Value to set for the allow_format_cells property.
            ## @return a void
            ## 
            def allow_format_cells=(value)
                @allow_format_cells = value
            end
            ## 
            ## Gets the allowFormatColumns property value. Represents the worksheet protection option of allowing formatting columns.
            ## @return a boolean
            ## 
            def allow_format_columns
                return @allow_format_columns
            end
            ## 
            ## Sets the allowFormatColumns property value. Represents the worksheet protection option of allowing formatting columns.
            ## @param value Value to set for the allow_format_columns property.
            ## @return a void
            ## 
            def allow_format_columns=(value)
                @allow_format_columns = value
            end
            ## 
            ## Gets the allowFormatRows property value. Represents the worksheet protection option of allowing formatting rows.
            ## @return a boolean
            ## 
            def allow_format_rows
                return @allow_format_rows
            end
            ## 
            ## Sets the allowFormatRows property value. Represents the worksheet protection option of allowing formatting rows.
            ## @param value Value to set for the allow_format_rows property.
            ## @return a void
            ## 
            def allow_format_rows=(value)
                @allow_format_rows = value
            end
            ## 
            ## Gets the allowInsertColumns property value. Represents the worksheet protection option of allowing inserting columns.
            ## @return a boolean
            ## 
            def allow_insert_columns
                return @allow_insert_columns
            end
            ## 
            ## Sets the allowInsertColumns property value. Represents the worksheet protection option of allowing inserting columns.
            ## @param value Value to set for the allow_insert_columns property.
            ## @return a void
            ## 
            def allow_insert_columns=(value)
                @allow_insert_columns = value
            end
            ## 
            ## Gets the allowInsertHyperlinks property value. Represents the worksheet protection option of allowing inserting hyperlinks.
            ## @return a boolean
            ## 
            def allow_insert_hyperlinks
                return @allow_insert_hyperlinks
            end
            ## 
            ## Sets the allowInsertHyperlinks property value. Represents the worksheet protection option of allowing inserting hyperlinks.
            ## @param value Value to set for the allow_insert_hyperlinks property.
            ## @return a void
            ## 
            def allow_insert_hyperlinks=(value)
                @allow_insert_hyperlinks = value
            end
            ## 
            ## Gets the allowInsertRows property value. Represents the worksheet protection option of allowing inserting rows.
            ## @return a boolean
            ## 
            def allow_insert_rows
                return @allow_insert_rows
            end
            ## 
            ## Sets the allowInsertRows property value. Represents the worksheet protection option of allowing inserting rows.
            ## @param value Value to set for the allow_insert_rows property.
            ## @return a void
            ## 
            def allow_insert_rows=(value)
                @allow_insert_rows = value
            end
            ## 
            ## Gets the allowPivotTables property value. Represents the worksheet protection option of allowing using pivot table feature.
            ## @return a boolean
            ## 
            def allow_pivot_tables
                return @allow_pivot_tables
            end
            ## 
            ## Sets the allowPivotTables property value. Represents the worksheet protection option of allowing using pivot table feature.
            ## @param value Value to set for the allow_pivot_tables property.
            ## @return a void
            ## 
            def allow_pivot_tables=(value)
                @allow_pivot_tables = value
            end
            ## 
            ## Gets the allowSort property value. Represents the worksheet protection option of allowing using sort feature.
            ## @return a boolean
            ## 
            def allow_sort
                return @allow_sort
            end
            ## 
            ## Sets the allowSort property value. Represents the worksheet protection option of allowing using sort feature.
            ## @param value Value to set for the allow_sort property.
            ## @return a void
            ## 
            def allow_sort=(value)
                @allow_sort = value
            end
            ## 
            ## Instantiates a new workbookWorksheetProtectionOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_worksheet_protection_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookWorksheetProtectionOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowAutoFilter" => lambda {|n| @allow_auto_filter = n.get_boolean_value() },
                    "allowDeleteColumns" => lambda {|n| @allow_delete_columns = n.get_boolean_value() },
                    "allowDeleteRows" => lambda {|n| @allow_delete_rows = n.get_boolean_value() },
                    "allowFormatCells" => lambda {|n| @allow_format_cells = n.get_boolean_value() },
                    "allowFormatColumns" => lambda {|n| @allow_format_columns = n.get_boolean_value() },
                    "allowFormatRows" => lambda {|n| @allow_format_rows = n.get_boolean_value() },
                    "allowInsertColumns" => lambda {|n| @allow_insert_columns = n.get_boolean_value() },
                    "allowInsertHyperlinks" => lambda {|n| @allow_insert_hyperlinks = n.get_boolean_value() },
                    "allowInsertRows" => lambda {|n| @allow_insert_rows = n.get_boolean_value() },
                    "allowPivotTables" => lambda {|n| @allow_pivot_tables = n.get_boolean_value() },
                    "allowSort" => lambda {|n| @allow_sort = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowAutoFilter", @allow_auto_filter)
                writer.write_boolean_value("allowDeleteColumns", @allow_delete_columns)
                writer.write_boolean_value("allowDeleteRows", @allow_delete_rows)
                writer.write_boolean_value("allowFormatCells", @allow_format_cells)
                writer.write_boolean_value("allowFormatColumns", @allow_format_columns)
                writer.write_boolean_value("allowFormatRows", @allow_format_rows)
                writer.write_boolean_value("allowInsertColumns", @allow_insert_columns)
                writer.write_boolean_value("allowInsertHyperlinks", @allow_insert_hyperlinks)
                writer.write_boolean_value("allowInsertRows", @allow_insert_rows)
                writer.write_boolean_value("allowPivotTables", @allow_pivot_tables)
                writer.write_boolean_value("allowSort", @allow_sort)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
