require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UnifiedApprovalStage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of days that a request can be pending a response before it is automatically denied.
            @approval_stage_time_out_in_days
            ## 
            # The escalation approvers for this stage when the primary approvers don't respond.
            @escalation_approvers
            ## 
            # The time a request can be pending a response from a primary approver before it can be escalated to the escalation approvers.
            @escalation_time_in_minutes
            ## 
            # Indicates whether the approver must provide justification for their reponse.
            @is_approver_justification_required
            ## 
            # Indicates whether escalation if enabled.
            @is_escalation_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The primary approvers of this stage.
            @primary_approvers
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
            ## Gets the approvalStageTimeOutInDays property value. The number of days that a request can be pending a response before it is automatically denied.
            ## @return a integer
            ## 
            def approval_stage_time_out_in_days
                return @approval_stage_time_out_in_days
            end
            ## 
            ## Sets the approvalStageTimeOutInDays property value. The number of days that a request can be pending a response before it is automatically denied.
            ## @param value Value to set for the approval_stage_time_out_in_days property.
            ## @return a void
            ## 
            def approval_stage_time_out_in_days=(value)
                @approval_stage_time_out_in_days = value
            end
            ## 
            ## Instantiates a new unifiedApprovalStage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_approval_stage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedApprovalStage.new
            end
            ## 
            ## Gets the escalationApprovers property value. The escalation approvers for this stage when the primary approvers don't respond.
            ## @return a subject_set
            ## 
            def escalation_approvers
                return @escalation_approvers
            end
            ## 
            ## Sets the escalationApprovers property value. The escalation approvers for this stage when the primary approvers don't respond.
            ## @param value Value to set for the escalation_approvers property.
            ## @return a void
            ## 
            def escalation_approvers=(value)
                @escalation_approvers = value
            end
            ## 
            ## Gets the escalationTimeInMinutes property value. The time a request can be pending a response from a primary approver before it can be escalated to the escalation approvers.
            ## @return a integer
            ## 
            def escalation_time_in_minutes
                return @escalation_time_in_minutes
            end
            ## 
            ## Sets the escalationTimeInMinutes property value. The time a request can be pending a response from a primary approver before it can be escalated to the escalation approvers.
            ## @param value Value to set for the escalation_time_in_minutes property.
            ## @return a void
            ## 
            def escalation_time_in_minutes=(value)
                @escalation_time_in_minutes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "approvalStageTimeOutInDays" => lambda {|n| @approval_stage_time_out_in_days = n.get_number_value() },
                    "escalationApprovers" => lambda {|n| @escalation_approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                    "escalationTimeInMinutes" => lambda {|n| @escalation_time_in_minutes = n.get_number_value() },
                    "isApproverJustificationRequired" => lambda {|n| @is_approver_justification_required = n.get_boolean_value() },
                    "isEscalationEnabled" => lambda {|n| @is_escalation_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "primaryApprovers" => lambda {|n| @primary_approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isApproverJustificationRequired property value. Indicates whether the approver must provide justification for their reponse.
            ## @return a boolean
            ## 
            def is_approver_justification_required
                return @is_approver_justification_required
            end
            ## 
            ## Sets the isApproverJustificationRequired property value. Indicates whether the approver must provide justification for their reponse.
            ## @param value Value to set for the is_approver_justification_required property.
            ## @return a void
            ## 
            def is_approver_justification_required=(value)
                @is_approver_justification_required = value
            end
            ## 
            ## Gets the isEscalationEnabled property value. Indicates whether escalation if enabled.
            ## @return a boolean
            ## 
            def is_escalation_enabled
                return @is_escalation_enabled
            end
            ## 
            ## Sets the isEscalationEnabled property value. Indicates whether escalation if enabled.
            ## @param value Value to set for the is_escalation_enabled property.
            ## @return a void
            ## 
            def is_escalation_enabled=(value)
                @is_escalation_enabled = value
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
            ## Gets the primaryApprovers property value. The primary approvers of this stage.
            ## @return a subject_set
            ## 
            def primary_approvers
                return @primary_approvers
            end
            ## 
            ## Sets the primaryApprovers property value. The primary approvers of this stage.
            ## @param value Value to set for the primary_approvers property.
            ## @return a void
            ## 
            def primary_approvers=(value)
                @primary_approvers = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("approvalStageTimeOutInDays", @approval_stage_time_out_in_days)
                writer.write_collection_of_object_values("escalationApprovers", @escalation_approvers)
                writer.write_number_value("escalationTimeInMinutes", @escalation_time_in_minutes)
                writer.write_boolean_value("isApproverJustificationRequired", @is_approver_justification_required)
                writer.write_boolean_value("isEscalationEnabled", @is_escalation_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("primaryApprovers", @primary_approvers)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
