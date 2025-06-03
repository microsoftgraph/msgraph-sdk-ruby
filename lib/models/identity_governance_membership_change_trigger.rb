require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceMembershipChangeTrigger < MicrosoftGraph::Models::IdentityGovernanceWorkflowExecutionTrigger
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The changeType property
            @change_type
            ## 
            ## Gets the changeType property value. The changeType property
            ## @return a identity_governance_membership_change_type
            ## 
            def change_type
                return @change_type
            end
            ## 
            ## Sets the changeType property value. The changeType property
            ## @param value Value to set for the changeType property.
            ## @return a void
            ## 
            def change_type=(value)
                @change_type = value
            end
            ## 
            ## Instantiates a new IdentityGovernanceMembershipChangeTrigger and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identityGovernance.membershipChangeTrigger"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_membership_change_trigger
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceMembershipChangeTrigger.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "changeType" => lambda {|n| @change_type = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernanceMembershipChangeType) },
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
                writer.write_enum_value("changeType", @change_type)
            end
        end
    end
end
