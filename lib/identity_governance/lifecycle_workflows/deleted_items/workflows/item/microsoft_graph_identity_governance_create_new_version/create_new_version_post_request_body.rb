require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/identity_governance_workflow'
require_relative '../../../../../identity_governance'
require_relative '../../../../lifecycle_workflows'
require_relative '../../../deleted_items'
require_relative '../../workflows'
require_relative '../item'
require_relative './microsoft_graph_identity_governance_create_new_version'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module DeletedItems
                module Workflows
                    module Item
                        module MicrosoftGraphIdentityGovernanceCreateNewVersion
                            class CreateNewVersionPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The workflow property
                                @workflow
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
                                ## Instantiates a new createNewVersionPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a create_new_version_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return CreateNewVersionPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "workflow" => lambda {|n| @workflow = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceWorkflow.create_from_discriminator_value(pn) }) },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_object_value("workflow", @workflow)
                                    writer.write_additional_data(@additional_data)
                                end
                                ## 
                                ## Gets the workflow property value. The workflow property
                                ## @return a identity_governance_workflow
                                ## 
                                def workflow
                                    return @workflow
                                end
                                ## 
                                ## Sets the workflow property value. The workflow property
                                ## @param value Value to set for the workflow property.
                                ## @return a void
                                ## 
                                def workflow=(value)
                                    @workflow = value
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
