require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkbookFilter < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The currently applied filter on the given column. Read-only.
            @criteria
            ## 
            ## Instantiates a new workbookFilter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workbook_filter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookFilter.new
            end
            ## 
            ## Gets the criteria property value. The currently applied filter on the given column. Read-only.
            ## @return a workbook_filter_criteria
            ## 
            def criteria
                return @criteria
            end
            ## 
            ## Sets the criteria property value. The currently applied filter on the given column. Read-only.
            ## @param value Value to set for the criteria property.
            ## @return a void
            ## 
            def criteria=(value)
                @criteria = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "criteria" => lambda {|n| @criteria = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookFilterCriteria.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("criteria", @criteria)
            end
        end
    end
end
