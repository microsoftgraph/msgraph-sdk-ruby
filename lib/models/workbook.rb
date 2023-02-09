require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Workbook < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The application property
            @application
            ## 
            # The comments property
            @comments
            ## 
            # The functions property
            @functions
            ## 
            # Represents a collection of workbooks scoped named items (named ranges and constants). Read-only.
            @names
            ## 
            # The status of workbook operations. Getting an operation collection is not supported, but you can get the status of a long-running operation if the Location header is returned in the response. Read-only.
            @operations
            ## 
            # Represents a collection of tables associated with the workbook. Read-only.
            @tables
            ## 
            # Represents a collection of worksheets associated with the workbook. Read-only.
            @worksheets
            ## 
            ## Gets the application property value. The application property
            ## @return a workbook_application
            ## 
            def application
                return @application
            end
            ## 
            ## Sets the application property value. The application property
            ## @param value Value to set for the application property.
            ## @return a void
            ## 
            def application=(value)
                @application = value
            end
            ## 
            ## Gets the comments property value. The comments property
            ## @return a workbook_comment
            ## 
            def comments
                return @comments
            end
            ## 
            ## Sets the comments property value. The comments property
            ## @param value Value to set for the comments property.
            ## @return a void
            ## 
            def comments=(value)
                @comments = value
            end
            ## 
            ## Instantiates a new workbook and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Workbook.new
            end
            ## 
            ## Gets the functions property value. The functions property
            ## @return a workbook_functions
            ## 
            def functions
                return @functions
            end
            ## 
            ## Sets the functions property value. The functions property
            ## @param value Value to set for the functions property.
            ## @return a void
            ## 
            def functions=(value)
                @functions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "application" => lambda {|n| @application = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookApplication.create_from_discriminator_value(pn) }) },
                    "comments" => lambda {|n| @comments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookComment.create_from_discriminator_value(pn) }) },
                    "functions" => lambda {|n| @functions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookFunctions.create_from_discriminator_value(pn) }) },
                    "names" => lambda {|n| @names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookNamedItem.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookOperation.create_from_discriminator_value(pn) }) },
                    "tables" => lambda {|n| @tables = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookTable.create_from_discriminator_value(pn) }) },
                    "worksheets" => lambda {|n| @worksheets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the names property value. Represents a collection of workbooks scoped named items (named ranges and constants). Read-only.
            ## @return a workbook_named_item
            ## 
            def names
                return @names
            end
            ## 
            ## Sets the names property value. Represents a collection of workbooks scoped named items (named ranges and constants). Read-only.
            ## @param value Value to set for the names property.
            ## @return a void
            ## 
            def names=(value)
                @names = value
            end
            ## 
            ## Gets the operations property value. The status of workbook operations. Getting an operation collection is not supported, but you can get the status of a long-running operation if the Location header is returned in the response. Read-only.
            ## @return a workbook_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The status of workbook operations. Getting an operation collection is not supported, but you can get the status of a long-running operation if the Location header is returned in the response. Read-only.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("application", @application)
                writer.write_collection_of_object_values("comments", @comments)
                writer.write_object_value("functions", @functions)
                writer.write_collection_of_object_values("names", @names)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("tables", @tables)
                writer.write_collection_of_object_values("worksheets", @worksheets)
            end
            ## 
            ## Gets the tables property value. Represents a collection of tables associated with the workbook. Read-only.
            ## @return a workbook_table
            ## 
            def tables
                return @tables
            end
            ## 
            ## Sets the tables property value. Represents a collection of tables associated with the workbook. Read-only.
            ## @param value Value to set for the tables property.
            ## @return a void
            ## 
            def tables=(value)
                @tables = value
            end
            ## 
            ## Gets the worksheets property value. Represents a collection of worksheets associated with the workbook. Read-only.
            ## @return a workbook_worksheet
            ## 
            def worksheets
                return @worksheets
            end
            ## 
            ## Sets the worksheets property value. Represents a collection of worksheets associated with the workbook. Read-only.
            ## @param value Value to set for the worksheets property.
            ## @return a void
            ## 
            def worksheets=(value)
                @worksheets = value
            end
        end
    end
end
