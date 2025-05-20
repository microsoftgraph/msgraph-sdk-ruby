require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceAttributeChangeTrigger < MicrosoftGraph::Models::IdentityGovernanceWorkflowExecutionTrigger
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The trigger attribute being changed that triggers the workflowexecutiontrigger of a workflow.)
            @trigger_attributes
            ## 
            ## Instantiates a new IdentityGovernanceAttributeChangeTrigger and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identityGovernance.attributeChangeTrigger"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_attribute_change_trigger
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceAttributeChangeTrigger.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "triggerAttributes" => lambda {|n| @trigger_attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceTriggerAttribute.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("triggerAttributes", @trigger_attributes)
            end
            ## 
            ## Gets the triggerAttributes property value. The trigger attribute being changed that triggers the workflowexecutiontrigger of a workflow.)
            ## @return a identity_governance_trigger_attribute
            ## 
            def trigger_attributes
                return @trigger_attributes
            end
            ## 
            ## Sets the triggerAttributes property value. The trigger attribute being changed that triggers the workflowexecutiontrigger of a workflow.)
            ## @param value Value to set for the triggerAttributes property.
            ## @return a void
            ## 
            def trigger_attributes=(value)
                @trigger_attributes = value
            end
        end
    end
end
