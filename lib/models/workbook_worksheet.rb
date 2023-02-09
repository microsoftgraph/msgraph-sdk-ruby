require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookWorksheet < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Returns collection of charts that are part of the worksheet. Read-only.
            @charts
            ## 
            # The display name of the worksheet.
            @name
            ## 
            # Returns collection of names that are associated with the worksheet. Read-only.
            @names
            ## 
            # Collection of PivotTables that are part of the worksheet.
            @pivot_tables
            ## 
            # The zero-based position of the worksheet within the workbook.
            @position
            ## 
            # Returns sheet protection object for a worksheet. Read-only.
            @protection
            ## 
            # Collection of tables that are part of the worksheet. Read-only.
            @tables
            ## 
            # The Visibility of the worksheet. The possible values are: Visible, Hidden, VeryHidden.
            @visibility
            ## 
            ## Gets the charts property value. Returns collection of charts that are part of the worksheet. Read-only.
            ## @return a workbook_chart
            ## 
            def charts
                return @charts
            end
            ## 
            ## Sets the charts property value. Returns collection of charts that are part of the worksheet. Read-only.
            ## @param value Value to set for the charts property.
            ## @return a void
            ## 
            def charts=(value)
                @charts = value
            end
            ## 
            ## Instantiates a new workbookWorksheet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_worksheet
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookWorksheet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "charts" => lambda {|n| @charts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookChart.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "names" => lambda {|n| @names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookNamedItem.create_from_discriminator_value(pn) }) },
                    "pivotTables" => lambda {|n| @pivot_tables = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookPivotTable.create_from_discriminator_value(pn) }) },
                    "position" => lambda {|n| @position = n.get_number_value() },
                    "protection" => lambda {|n| @protection = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheetProtection.create_from_discriminator_value(pn) }) },
                    "tables" => lambda {|n| @tables = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookTable.create_from_discriminator_value(pn) }) },
                    "visibility" => lambda {|n| @visibility = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The display name of the worksheet.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The display name of the worksheet.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the names property value. Returns collection of names that are associated with the worksheet. Read-only.
            ## @return a workbook_named_item
            ## 
            def names
                return @names
            end
            ## 
            ## Sets the names property value. Returns collection of names that are associated with the worksheet. Read-only.
            ## @param value Value to set for the names property.
            ## @return a void
            ## 
            def names=(value)
                @names = value
            end
            ## 
            ## Gets the pivotTables property value. Collection of PivotTables that are part of the worksheet.
            ## @return a workbook_pivot_table
            ## 
            def pivot_tables
                return @pivot_tables
            end
            ## 
            ## Sets the pivotTables property value. Collection of PivotTables that are part of the worksheet.
            ## @param value Value to set for the pivot_tables property.
            ## @return a void
            ## 
            def pivot_tables=(value)
                @pivot_tables = value
            end
            ## 
            ## Gets the position property value. The zero-based position of the worksheet within the workbook.
            ## @return a integer
            ## 
            def position
                return @position
            end
            ## 
            ## Sets the position property value. The zero-based position of the worksheet within the workbook.
            ## @param value Value to set for the position property.
            ## @return a void
            ## 
            def position=(value)
                @position = value
            end
            ## 
            ## Gets the protection property value. Returns sheet protection object for a worksheet. Read-only.
            ## @return a workbook_worksheet_protection
            ## 
            def protection
                return @protection
            end
            ## 
            ## Sets the protection property value. Returns sheet protection object for a worksheet. Read-only.
            ## @param value Value to set for the protection property.
            ## @return a void
            ## 
            def protection=(value)
                @protection = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("charts", @charts)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("names", @names)
                writer.write_collection_of_object_values("pivotTables", @pivot_tables)
                writer.write_number_value("position", @position)
                writer.write_object_value("protection", @protection)
                writer.write_collection_of_object_values("tables", @tables)
                writer.write_string_value("visibility", @visibility)
            end
            ## 
            ## Gets the tables property value. Collection of tables that are part of the worksheet. Read-only.
            ## @return a workbook_table
            ## 
            def tables
                return @tables
            end
            ## 
            ## Sets the tables property value. Collection of tables that are part of the worksheet. Read-only.
            ## @param value Value to set for the tables property.
            ## @return a void
            ## 
            def tables=(value)
                @tables = value
            end
            ## 
            ## Gets the visibility property value. The Visibility of the worksheet. The possible values are: Visible, Hidden, VeryHidden.
            ## @return a string
            ## 
            def visibility
                return @visibility
            end
            ## 
            ## Sets the visibility property value. The Visibility of the worksheet. The possible values are: Visible, Hidden, VeryHidden.
            ## @param value Value to set for the visibility property.
            ## @return a void
            ## 
            def visibility=(value)
                @visibility = value
            end
        end
    end
end
