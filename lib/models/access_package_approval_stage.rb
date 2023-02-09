require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageApprovalStage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of days that a request can be pending a response before it is automatically denied.
            @duration_before_automatic_denial
            ## 
            # If escalation is required, the time a request can be pending a response from a primary approver.
            @duration_before_escalation
            ## 
            # If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests.
            @escalation_approvers
            ## 
            # The subjects, typically users, who are the fallback escalation approvers.
            @fallback_escalation_approvers
            ## 
            # The subjects, typically users, who are the fallback primary approvers.
            @fallback_primary_approvers
            ## 
            # Indicates whether the approver is required to provide a justification for approving a request.
            @is_approver_justification_required
            ## 
            # If true, then one or more escalationApprovers are configured in this approval stage.
            @is_escalation_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The subjects, typically users, who will be asked to approve requests. A collection of singleUser, groupMembers, requestorManager, internalSponsors or externalSponsors.
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
            ## Instantiates a new accessPackageApprovalStage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_approval_stage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageApprovalStage.new
            end
            ## 
            ## Gets the durationBeforeAutomaticDenial property value. The number of days that a request can be pending a response before it is automatically denied.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration_before_automatic_denial
                return @duration_before_automatic_denial
            end
            ## 
            ## Sets the durationBeforeAutomaticDenial property value. The number of days that a request can be pending a response before it is automatically denied.
            ## @param value Value to set for the duration_before_automatic_denial property.
            ## @return a void
            ## 
            def duration_before_automatic_denial=(value)
                @duration_before_automatic_denial = value
            end
            ## 
            ## Gets the durationBeforeEscalation property value. If escalation is required, the time a request can be pending a response from a primary approver.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration_before_escalation
                return @duration_before_escalation
            end
            ## 
            ## Sets the durationBeforeEscalation property value. If escalation is required, the time a request can be pending a response from a primary approver.
            ## @param value Value to set for the duration_before_escalation property.
            ## @return a void
            ## 
            def duration_before_escalation=(value)
                @duration_before_escalation = value
            end
            ## 
            ## Gets the escalationApprovers property value. If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests.
            ## @return a subject_set
            ## 
            def escalation_approvers
                return @escalation_approvers
            end
            ## 
            ## Sets the escalationApprovers property value. If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests.
            ## @param value Value to set for the escalation_approvers property.
            ## @return a void
            ## 
            def escalation_approvers=(value)
                @escalation_approvers = value
            end
            ## 
            ## Gets the fallbackEscalationApprovers property value. The subjects, typically users, who are the fallback escalation approvers.
            ## @return a subject_set
            ## 
            def fallback_escalation_approvers
                return @fallback_escalation_approvers
            end
            ## 
            ## Sets the fallbackEscalationApprovers property value. The subjects, typically users, who are the fallback escalation approvers.
            ## @param value Value to set for the fallback_escalation_approvers property.
            ## @return a void
            ## 
            def fallback_escalation_approvers=(value)
                @fallback_escalation_approvers = value
            end
            ## 
            ## Gets the fallbackPrimaryApprovers property value. The subjects, typically users, who are the fallback primary approvers.
            ## @return a subject_set
            ## 
            def fallback_primary_approvers
                return @fallback_primary_approvers
            end
            ## 
            ## Sets the fallbackPrimaryApprovers property value. The subjects, typically users, who are the fallback primary approvers.
            ## @param value Value to set for the fallback_primary_approvers property.
            ## @return a void
            ## 
            def fallback_primary_approvers=(value)
                @fallback_primary_approvers = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "durationBeforeAutomaticDenial" => lambda {|n| @duration_before_automatic_denial = n.get_duration_value() },
                    "durationBeforeEscalation" => lambda {|n| @duration_before_escalation = n.get_duration_value() },
                    "escalationApprovers" => lambda {|n| @escalation_approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                    "fallbackEscalationApprovers" => lambda {|n| @fallback_escalation_approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                    "fallbackPrimaryApprovers" => lambda {|n| @fallback_primary_approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                    "isApproverJustificationRequired" => lambda {|n| @is_approver_justification_required = n.get_boolean_value() },
                    "isEscalationEnabled" => lambda {|n| @is_escalation_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "primaryApprovers" => lambda {|n| @primary_approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isApproverJustificationRequired property value. Indicates whether the approver is required to provide a justification for approving a request.
            ## @return a boolean
            ## 
            def is_approver_justification_required
                return @is_approver_justification_required
            end
            ## 
            ## Sets the isApproverJustificationRequired property value. Indicates whether the approver is required to provide a justification for approving a request.
            ## @param value Value to set for the is_approver_justification_required property.
            ## @return a void
            ## 
            def is_approver_justification_required=(value)
                @is_approver_justification_required = value
            end
            ## 
            ## Gets the isEscalationEnabled property value. If true, then one or more escalationApprovers are configured in this approval stage.
            ## @return a boolean
            ## 
            def is_escalation_enabled
                return @is_escalation_enabled
            end
            ## 
            ## Sets the isEscalationEnabled property value. If true, then one or more escalationApprovers are configured in this approval stage.
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
            ## Gets the primaryApprovers property value. The subjects, typically users, who will be asked to approve requests. A collection of singleUser, groupMembers, requestorManager, internalSponsors or externalSponsors.
            ## @return a subject_set
            ## 
            def primary_approvers
                return @primary_approvers
            end
            ## 
            ## Sets the primaryApprovers property value. The subjects, typically users, who will be asked to approve requests. A collection of singleUser, groupMembers, requestorManager, internalSponsors or externalSponsors.
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
                writer.write_duration_value("durationBeforeAutomaticDenial", @duration_before_automatic_denial)
                writer.write_duration_value("durationBeforeEscalation", @duration_before_escalation)
                writer.write_collection_of_object_values("escalationApprovers", @escalation_approvers)
                writer.write_collection_of_object_values("fallbackEscalationApprovers", @fallback_escalation_approvers)
                writer.write_collection_of_object_values("fallbackPrimaryApprovers", @fallback_primary_approvers)
                writer.write_boolean_value("isApproverJustificationRequired", @is_approver_justification_required)
                writer.write_boolean_value("isEscalationEnabled", @is_escalation_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("primaryApprovers", @primary_approvers)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
