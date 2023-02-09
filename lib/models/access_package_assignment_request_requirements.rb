require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentRequestRequirements
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the requestor is allowed to set a custom schedule.
            @allow_custom_assignment_schedule
            ## 
            # Indicates whether a request to add must be approved by an approver.
            @is_approval_required_for_add
            ## 
            # Indicates whether a request to update must be approved by an approver.
            @is_approval_required_for_update
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The description of the policy that the user is trying to request access using.
            @policy_description
            ## 
            # The display name of the policy that the user is trying to request access using.
            @policy_display_name
            ## 
            # The identifier of the policy that these requirements are associated with. This identifier can be used when creating a new assignment request.
            @policy_id
            ## 
            # The questions property
            @questions
            ## 
            # Schedule restrictions enforced, if any.
            @schedule
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
            ## Gets the allowCustomAssignmentSchedule property value. Indicates whether the requestor is allowed to set a custom schedule.
            ## @return a boolean
            ## 
            def allow_custom_assignment_schedule
                return @allow_custom_assignment_schedule
            end
            ## 
            ## Sets the allowCustomAssignmentSchedule property value. Indicates whether the requestor is allowed to set a custom schedule.
            ## @param value Value to set for the allow_custom_assignment_schedule property.
            ## @return a void
            ## 
            def allow_custom_assignment_schedule=(value)
                @allow_custom_assignment_schedule = value
            end
            ## 
            ## Instantiates a new accessPackageAssignmentRequestRequirements and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_request_requirements
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentRequestRequirements.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowCustomAssignmentSchedule" => lambda {|n| @allow_custom_assignment_schedule = n.get_boolean_value() },
                    "isApprovalRequiredForAdd" => lambda {|n| @is_approval_required_for_add = n.get_boolean_value() },
                    "isApprovalRequiredForUpdate" => lambda {|n| @is_approval_required_for_update = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyDescription" => lambda {|n| @policy_description = n.get_string_value() },
                    "policyDisplayName" => lambda {|n| @policy_display_name = n.get_string_value() },
                    "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                    "questions" => lambda {|n| @questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageQuestion.create_from_discriminator_value(pn) }) },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EntitlementManagementSchedule.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isApprovalRequiredForAdd property value. Indicates whether a request to add must be approved by an approver.
            ## @return a boolean
            ## 
            def is_approval_required_for_add
                return @is_approval_required_for_add
            end
            ## 
            ## Sets the isApprovalRequiredForAdd property value. Indicates whether a request to add must be approved by an approver.
            ## @param value Value to set for the is_approval_required_for_add property.
            ## @return a void
            ## 
            def is_approval_required_for_add=(value)
                @is_approval_required_for_add = value
            end
            ## 
            ## Gets the isApprovalRequiredForUpdate property value. Indicates whether a request to update must be approved by an approver.
            ## @return a boolean
            ## 
            def is_approval_required_for_update
                return @is_approval_required_for_update
            end
            ## 
            ## Sets the isApprovalRequiredForUpdate property value. Indicates whether a request to update must be approved by an approver.
            ## @param value Value to set for the is_approval_required_for_update property.
            ## @return a void
            ## 
            def is_approval_required_for_update=(value)
                @is_approval_required_for_update = value
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
            ## Gets the policyDescription property value. The description of the policy that the user is trying to request access using.
            ## @return a string
            ## 
            def policy_description
                return @policy_description
            end
            ## 
            ## Sets the policyDescription property value. The description of the policy that the user is trying to request access using.
            ## @param value Value to set for the policy_description property.
            ## @return a void
            ## 
            def policy_description=(value)
                @policy_description = value
            end
            ## 
            ## Gets the policyDisplayName property value. The display name of the policy that the user is trying to request access using.
            ## @return a string
            ## 
            def policy_display_name
                return @policy_display_name
            end
            ## 
            ## Sets the policyDisplayName property value. The display name of the policy that the user is trying to request access using.
            ## @param value Value to set for the policy_display_name property.
            ## @return a void
            ## 
            def policy_display_name=(value)
                @policy_display_name = value
            end
            ## 
            ## Gets the policyId property value. The identifier of the policy that these requirements are associated with. This identifier can be used when creating a new assignment request.
            ## @return a string
            ## 
            def policy_id
                return @policy_id
            end
            ## 
            ## Sets the policyId property value. The identifier of the policy that these requirements are associated with. This identifier can be used when creating a new assignment request.
            ## @param value Value to set for the policy_id property.
            ## @return a void
            ## 
            def policy_id=(value)
                @policy_id = value
            end
            ## 
            ## Gets the questions property value. The questions property
            ## @return a access_package_question
            ## 
            def questions
                return @questions
            end
            ## 
            ## Sets the questions property value. The questions property
            ## @param value Value to set for the questions property.
            ## @return a void
            ## 
            def questions=(value)
                @questions = value
            end
            ## 
            ## Gets the schedule property value. Schedule restrictions enforced, if any.
            ## @return a entitlement_management_schedule
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. Schedule restrictions enforced, if any.
            ## @param value Value to set for the schedule property.
            ## @return a void
            ## 
            def schedule=(value)
                @schedule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowCustomAssignmentSchedule", @allow_custom_assignment_schedule)
                writer.write_boolean_value("isApprovalRequiredForAdd", @is_approval_required_for_add)
                writer.write_boolean_value("isApprovalRequiredForUpdate", @is_approval_required_for_update)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("policyDescription", @policy_description)
                writer.write_string_value("policyDisplayName", @policy_display_name)
                writer.write_string_value("policyId", @policy_id)
                writer.write_collection_of_object_values("questions", @questions)
                writer.write_object_value("schedule", @schedule)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
