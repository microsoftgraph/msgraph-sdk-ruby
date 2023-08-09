require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceWorkflowVersion < MicrosoftGraph::Models::IdentityGovernanceWorkflowBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The version of the workflow.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @version_number
            ## 
            ## Instantiates a new identityGovernanceWorkflowVersion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identityGovernance.workflowVersion"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_workflow_version
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceWorkflowVersion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "versionNumber" => lambda {|n| @version_number = n.get_number_value() },
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
                writer.write_number_value("versionNumber", @version_number)
            end
            ## 
            ## Gets the versionNumber property value. The version of the workflow.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a integer
            ## 
            def version_number
                return @version_number
            end
            ## 
            ## Sets the versionNumber property value. The version of the workflow.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @param value Value to set for the versionNumber property.
            ## @return a void
            ## 
            def version_number=(value)
                @version_number = value
            end
        end
    end
end
