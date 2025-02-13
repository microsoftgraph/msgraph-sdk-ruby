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
            # Indicates whether the worksheet protection option to allow the use of the autofilter feature is enabled.
            @allow_auto_filter
            ## 
            # Indicates whether the worksheet protection option to allow deleting columns is enabled.
            @allow_delete_columns
            ## 
            # Indicates whether the worksheet protection option to allow deleting rows is enabled.
            @allow_delete_rows
            ## 
            # Indicates whether the worksheet protection option to allow formatting cells is enabled.
            @allow_format_cells
            ## 
            # Indicates whether the worksheet protection option to allow formatting columns is enabled.
            @allow_format_columns
            ## 
            # Indicates whether the worksheet protection option to allow formatting rows is enabled.
            @allow_format_rows
            ## 
            # Indicates whether the worksheet protection option to allow inserting columns is enabled.
            @allow_insert_columns
            ## 
            # Indicates whether the worksheet protection option to allow inserting hyperlinks is enabled.
            @allow_insert_hyperlinks
            ## 
            # Indicates whether the worksheet protection option to allow inserting rows is enabled.
            @allow_insert_rows
            ## 
            # Indicates whether the worksheet protection option to allow the use of the pivot table feature is enabled.
            @allow_pivot_tables
            ## 
            # Indicates whether the worksheet protection option to allow the use of the sort feature is enabled.
            @allow_sort
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowAutoFilter property value. Indicates whether the worksheet protection option to allow the use of the autofilter feature is enabled.
            ## @return a boolean
            ## 
            def allow_auto_filter
                return @allow_auto_filter
            end
            ## 
            ## Sets the allowAutoFilter property value. Indicates whether the worksheet protection option to allow the use of the autofilter feature is enabled.
            ## @param value Value to set for the allowAutoFilter property.
            ## @return a void
            ## 
            def allow_auto_filter=(value)
                @allow_auto_filter = value
            end
            ## 
            ## Gets the allowDeleteColumns property value. Indicates whether the worksheet protection option to allow deleting columns is enabled.
            ## @return a boolean
            ## 
            def allow_delete_columns
                return @allow_delete_columns
            end
            ## 
            ## Sets the allowDeleteColumns property value. Indicates whether the worksheet protection option to allow deleting columns is enabled.
            ## @param value Value to set for the allowDeleteColumns property.
            ## @return a void
            ## 
            def allow_delete_columns=(value)
                @allow_delete_columns = value
            end
            ## 
            ## Gets the allowDeleteRows property value. Indicates whether the worksheet protection option to allow deleting rows is enabled.
            ## @return a boolean
            ## 
            def allow_delete_rows
                return @allow_delete_rows
            end
            ## 
            ## Sets the allowDeleteRows property value. Indicates whether the worksheet protection option to allow deleting rows is enabled.
            ## @param value Value to set for the allowDeleteRows property.
            ## @return a void
            ## 
            def allow_delete_rows=(value)
                @allow_delete_rows = value
            end
            ## 
            ## Gets the allowFormatCells property value. Indicates whether the worksheet protection option to allow formatting cells is enabled.
            ## @return a boolean
            ## 
            def allow_format_cells
                return @allow_format_cells
            end
            ## 
            ## Sets the allowFormatCells property value. Indicates whether the worksheet protection option to allow formatting cells is enabled.
            ## @param value Value to set for the allowFormatCells property.
            ## @return a void
            ## 
            def allow_format_cells=(value)
                @allow_format_cells = value
            end
            ## 
            ## Gets the allowFormatColumns property value. Indicates whether the worksheet protection option to allow formatting columns is enabled.
            ## @return a boolean
            ## 
            def allow_format_columns
                return @allow_format_columns
            end
            ## 
            ## Sets the allowFormatColumns property value. Indicates whether the worksheet protection option to allow formatting columns is enabled.
            ## @param value Value to set for the allowFormatColumns property.
            ## @return a void
            ## 
            def allow_format_columns=(value)
                @allow_format_columns = value
            end
            ## 
            ## Gets the allowFormatRows property value. Indicates whether the worksheet protection option to allow formatting rows is enabled.
            ## @return a boolean
            ## 
            def allow_format_rows
                return @allow_format_rows
            end
            ## 
            ## Sets the allowFormatRows property value. Indicates whether the worksheet protection option to allow formatting rows is enabled.
            ## @param value Value to set for the allowFormatRows property.
            ## @return a void
            ## 
            def allow_format_rows=(value)
                @allow_format_rows = value
            end
            ## 
            ## Gets the allowInsertColumns property value. Indicates whether the worksheet protection option to allow inserting columns is enabled.
            ## @return a boolean
            ## 
            def allow_insert_columns
                return @allow_insert_columns
            end
            ## 
            ## Sets the allowInsertColumns property value. Indicates whether the worksheet protection option to allow inserting columns is enabled.
            ## @param value Value to set for the allowInsertColumns property.
            ## @return a void
            ## 
            def allow_insert_columns=(value)
                @allow_insert_columns = value
            end
            ## 
            ## Gets the allowInsertHyperlinks property value. Indicates whether the worksheet protection option to allow inserting hyperlinks is enabled.
            ## @return a boolean
            ## 
            def allow_insert_hyperlinks
                return @allow_insert_hyperlinks
            end
            ## 
            ## Sets the allowInsertHyperlinks property value. Indicates whether the worksheet protection option to allow inserting hyperlinks is enabled.
            ## @param value Value to set for the allowInsertHyperlinks property.
            ## @return a void
            ## 
            def allow_insert_hyperlinks=(value)
                @allow_insert_hyperlinks = value
            end
            ## 
            ## Gets the allowInsertRows property value. Indicates whether the worksheet protection option to allow inserting rows is enabled.
            ## @return a boolean
            ## 
            def allow_insert_rows
                return @allow_insert_rows
            end
            ## 
            ## Sets the allowInsertRows property value. Indicates whether the worksheet protection option to allow inserting rows is enabled.
            ## @param value Value to set for the allowInsertRows property.
            ## @return a void
            ## 
            def allow_insert_rows=(value)
                @allow_insert_rows = value
            end
            ## 
            ## Gets the allowPivotTables property value. Indicates whether the worksheet protection option to allow the use of the pivot table feature is enabled.
            ## @return a boolean
            ## 
            def allow_pivot_tables
                return @allow_pivot_tables
            end
            ## 
            ## Sets the allowPivotTables property value. Indicates whether the worksheet protection option to allow the use of the pivot table feature is enabled.
            ## @param value Value to set for the allowPivotTables property.
            ## @return a void
            ## 
            def allow_pivot_tables=(value)
                @allow_pivot_tables = value
            end
            ## 
            ## Gets the allowSort property value. Indicates whether the worksheet protection option to allow the use of the sort feature is enabled.
            ## @return a boolean
            ## 
            def allow_sort
                return @allow_sort
            end
            ## 
            ## Sets the allowSort property value. Indicates whether the worksheet protection option to allow the use of the sort feature is enabled.
            ## @param value Value to set for the allowSort property.
            ## @return a void
            ## 
            def allow_sort=(value)
                @allow_sort = value
            end
            ## 
            ## Instantiates a new WorkbookWorksheetProtectionOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
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
            ## @param value Value to set for the @odata.type property.
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
