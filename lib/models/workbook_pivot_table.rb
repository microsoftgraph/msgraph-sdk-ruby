require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookPivotTable < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Name of the PivotTable.
            @name
            ## 
            # The worksheet containing the current PivotTable. Read-only.
            @worksheet
            ## 
            ## Instantiates a new workbookPivotTable and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_pivot_table
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookPivotTable.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "worksheet" => lambda {|n| @worksheet = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. Name of the PivotTable.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the PivotTable.
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
                writer.write_string_value("name", @name)
                writer.write_object_value("worksheet", @worksheet)
            end
            ## 
            ## Gets the worksheet property value. The worksheet containing the current PivotTable. Read-only.
            ## @return a workbook_worksheet
            ## 
            def worksheet
                return @worksheet
            end
            ## 
            ## Sets the worksheet property value. The worksheet containing the current PivotTable. Read-only.
            ## @param value Value to set for the worksheet property.
            ## @return a void
            ## 
            def worksheet=(value)
                @worksheet = value
            end
        end
    end
end
