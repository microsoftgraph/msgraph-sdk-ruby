require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeletedItemContainer < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Deleted workflows that end up in the deletedItemsContainer.
            @workflows
            ## 
            ## Instantiates a new DeletedItemContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a deleted_item_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeletedItemContainer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "workflows" => lambda {|n| @workflows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceWorkflow.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("workflows", @workflows)
            end
            ## 
            ## Gets the workflows property value. Deleted workflows that end up in the deletedItemsContainer.
            ## @return a identity_governance_workflow
            ## 
            def workflows
                return @workflows
            end
            ## 
            ## Sets the workflows property value. Deleted workflows that end up in the deletedItemsContainer.
            ## @param value Value to set for the workflows property.
            ## @return a void
            ## 
            def workflows=(value)
                @workflows = value
            end
        end
    end
end
