require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ApprovalSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # One of SingleStage, Serial, Parallel, NoApproval (default). NoApproval is used when isApprovalRequired is false.
            @approval_mode
            ## 
            # If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.
            @approval_stages
            ## 
            # Indicates whether approval is required for requests in this policy.
            @is_approval_required
            ## 
            # Indicates whether approval is required for a user to extend their assignment.
            @is_approval_required_for_extension
            ## 
            # Indicates whether the requestor is required to supply a justification in their request.
            @is_requestor_justification_required
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the approvalMode property value. One of SingleStage, Serial, Parallel, NoApproval (default). NoApproval is used when isApprovalRequired is false.
            ## @return a string
            ## 
            def approval_mode
                return @approval_mode
            end
            ## 
            ## Sets the approvalMode property value. One of SingleStage, Serial, Parallel, NoApproval (default). NoApproval is used when isApprovalRequired is false.
            ## @param value Value to set for the approval_mode property.
            ## @return a void
            ## 
            def approval_mode=(value)
                @approval_mode = value
            end
            ## 
            ## Gets the approvalStages property value. If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.
            ## @return a unified_approval_stage
            ## 
            def approval_stages
                return @approval_stages
            end
            ## 
            ## Sets the approvalStages property value. If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.
            ## @param value Value to set for the approval_stages property.
            ## @return a void
            ## 
            def approval_stages=(value)
                @approval_stages = value
            end
            ## 
            ## Instantiates a new approvalSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a approval_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "approvalMode" => lambda {|n| @approval_mode = n.get_string_value() },
                    "approvalStages" => lambda {|n| @approval_stages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UnifiedApprovalStage.create_from_discriminator_value(pn) }) },
                    "isApprovalRequired" => lambda {|n| @is_approval_required = n.get_boolean_value() },
                    "isApprovalRequiredForExtension" => lambda {|n| @is_approval_required_for_extension = n.get_boolean_value() },
                    "isRequestorJustificationRequired" => lambda {|n| @is_requestor_justification_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isApprovalRequired property value. Indicates whether approval is required for requests in this policy.
            ## @return a boolean
            ## 
            def is_approval_required
                return @is_approval_required
            end
            ## 
            ## Sets the isApprovalRequired property value. Indicates whether approval is required for requests in this policy.
            ## @param value Value to set for the is_approval_required property.
            ## @return a void
            ## 
            def is_approval_required=(value)
                @is_approval_required = value
            end
            ## 
            ## Gets the isApprovalRequiredForExtension property value. Indicates whether approval is required for a user to extend their assignment.
            ## @return a boolean
            ## 
            def is_approval_required_for_extension
                return @is_approval_required_for_extension
            end
            ## 
            ## Sets the isApprovalRequiredForExtension property value. Indicates whether approval is required for a user to extend their assignment.
            ## @param value Value to set for the is_approval_required_for_extension property.
            ## @return a void
            ## 
            def is_approval_required_for_extension=(value)
                @is_approval_required_for_extension = value
            end
            ## 
            ## Gets the isRequestorJustificationRequired property value. Indicates whether the requestor is required to supply a justification in their request.
            ## @return a boolean
            ## 
            def is_requestor_justification_required
                return @is_requestor_justification_required
            end
            ## 
            ## Sets the isRequestorJustificationRequired property value. Indicates whether the requestor is required to supply a justification in their request.
            ## @param value Value to set for the is_requestor_justification_required property.
            ## @return a void
            ## 
            def is_requestor_justification_required=(value)
                @is_requestor_justification_required = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("approvalMode", @approval_mode)
                writer.write_collection_of_object_values("approvalStages", @approval_stages)
                writer.write_boolean_value("isApprovalRequired", @is_approval_required)
                writer.write_boolean_value("isApprovalRequiredForExtension", @is_approval_required_for_extension)
                writer.write_boolean_value("isRequestorJustificationRequired", @is_requestor_justification_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
