require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProcessContentResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A collection of policy actions (like DLP actions) triggered by the processed content. NOTE: Currently, the only policy action supported in for this resource type is restrictAccess.
            @policy_actions
            ## 
            # A collection of errors encountered during the content processing.
            @processing_errors
            ## 
            # The protectionScopeState property
            @protection_scope_state
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
            ## Instantiates a new ProcessContentResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a process_content_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProcessContentResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyActions" => lambda {|n| @policy_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DlpActionInfo.create_from_discriminator_value(pn) }) },
                    "processingErrors" => lambda {|n| @processing_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProcessingError.create_from_discriminator_value(pn) }) },
                    "protectionScopeState" => lambda {|n| @protection_scope_state = n.get_enum_value(MicrosoftGraph::Models::ProtectionScopeState) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the policyActions property value. A collection of policy actions (like DLP actions) triggered by the processed content. NOTE: Currently, the only policy action supported in for this resource type is restrictAccess.
            ## @return a dlp_action_info
            ## 
            def policy_actions
                return @policy_actions
            end
            ## 
            ## Sets the policyActions property value. A collection of policy actions (like DLP actions) triggered by the processed content. NOTE: Currently, the only policy action supported in for this resource type is restrictAccess.
            ## @param value Value to set for the policyActions property.
            ## @return a void
            ## 
            def policy_actions=(value)
                @policy_actions = value
            end
            ## 
            ## Gets the processingErrors property value. A collection of errors encountered during the content processing.
            ## @return a processing_error
            ## 
            def processing_errors
                return @processing_errors
            end
            ## 
            ## Sets the processingErrors property value. A collection of errors encountered during the content processing.
            ## @param value Value to set for the processingErrors property.
            ## @return a void
            ## 
            def processing_errors=(value)
                @processing_errors = value
            end
            ## 
            ## Gets the protectionScopeState property value. The protectionScopeState property
            ## @return a protection_scope_state
            ## 
            def protection_scope_state
                return @protection_scope_state
            end
            ## 
            ## Sets the protectionScopeState property value. The protectionScopeState property
            ## @param value Value to set for the protectionScopeState property.
            ## @return a void
            ## 
            def protection_scope_state=(value)
                @protection_scope_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("policyActions", @policy_actions)
                writer.write_collection_of_object_values("processingErrors", @processing_errors)
                writer.write_enum_value("protectionScopeState", @protection_scope_state)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
