require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/identity_governance_custom_task_extension_callback_data'
require_relative '../../../../../../../../identity_governance'
require_relative '../../../../../../../lifecycle_workflows'
require_relative '../../../../../../workflows'
require_relative '../../../../../item'
require_relative '../../../../tasks'
require_relative '../../../item'
require_relative '../../task_processing_results'
require_relative '../item'
require_relative './microsoft_graph_identity_governance_resume'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Workflows
                module Item
                    module Tasks
                        module Item
                            module TaskProcessingResults
                                module Item
                                    module MicrosoftGraphIdentityGovernanceResume
                                        class ResumePostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The data property
                                            @data
                                            ## 
                                            # The source property
                                            @source
                                            ## 
                                            # The type property
                                            @type
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
                                            ## Instantiates a new resumePostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                                            ## @return a resume_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return ResumePostRequestBody.new
                                            end
                                            ## 
                                            ## Gets the data property value. The data property
                                            ## @return a identity_governance_custom_task_extension_callback_data
                                            ## 
                                            def data
                                                return @data
                                            end
                                            ## 
                                            ## Sets the data property value. The data property
                                            ## @param value Value to set for the data property.
                                            ## @return a void
                                            ## 
                                            def data=(value)
                                                @data = value
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "data" => lambda {|n| @data = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceCustomTaskExtensionCallbackData.create_from_discriminator_value(pn) }) },
                                                    "source" => lambda {|n| @source = n.get_string_value() },
                                                    "type" => lambda {|n| @type = n.get_string_value() },
                                                }
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_object_value("data", @data)
                                                writer.write_string_value("source", @source)
                                                writer.write_string_value("type", @type)
                                                writer.write_additional_data(@additional_data)
                                            end
                                            ## 
                                            ## Gets the source property value. The source property
                                            ## @return a string
                                            ## 
                                            def source
                                                return @source
                                            end
                                            ## 
                                            ## Sets the source property value. The source property
                                            ## @param value Value to set for the source property.
                                            ## @return a void
                                            ## 
                                            def source=(value)
                                                @source = value
                                            end
                                            ## 
                                            ## Gets the type property value. The type property
                                            ## @return a string
                                            ## 
                                            def type
                                                return @type
                                            end
                                            ## 
                                            ## Sets the type property value. The type property
                                            ## @param value Value to set for the type property.
                                            ## @return a void
                                            ## 
                                            def type=(value)
                                                @type = value
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
