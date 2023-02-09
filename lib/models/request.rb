require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Request < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the approval of the request.
            @approval_id
            ## 
            # The request completion date time.
            @completed_date_time
            ## 
            # The principal that created the request.
            @created_by
            ## 
            # The request creation date time.
            @created_date_time
            ## 
            # Free text field to define any custom data for the request. Not used.
            @custom_data
            ## 
            # The status of the request. Not nullable. The possible values are: Canceled, Denied, Failed, Granted, PendingAdminDecision, PendingApproval, PendingProvisioning, PendingScheduleCreation, Provisioned, Revoked, and ScheduleCreated. Not nullable.
            @status
            ## 
            ## Gets the approvalId property value. The identifier of the approval of the request.
            ## @return a string
            ## 
            def approval_id
                return @approval_id
            end
            ## 
            ## Sets the approvalId property value. The identifier of the approval of the request.
            ## @param value Value to set for the approval_id property.
            ## @return a void
            ## 
            def approval_id=(value)
                @approval_id = value
            end
            ## 
            ## Gets the completedDateTime property value. The request completion date time.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. The request completion date time.
            ## @param value Value to set for the completed_date_time property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new request and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The principal that created the request.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The principal that created the request.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The request creation date time.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The request creation date time.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.unifiedRoleAssignmentScheduleRequest"
                            return UnifiedRoleAssignmentScheduleRequest.new
                        when "#microsoft.graph.unifiedRoleEligibilityScheduleRequest"
                            return UnifiedRoleEligibilityScheduleRequest.new
                        when "#microsoft.graph.userConsentRequest"
                            return UserConsentRequest.new
                    end
                end
                return Request.new
            end
            ## 
            ## Gets the customData property value. Free text field to define any custom data for the request. Not used.
            ## @return a string
            ## 
            def custom_data
                return @custom_data
            end
            ## 
            ## Sets the customData property value. Free text field to define any custom data for the request. Not used.
            ## @param value Value to set for the custom_data property.
            ## @return a void
            ## 
            def custom_data=(value)
                @custom_data = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approvalId" => lambda {|n| @approval_id = n.get_string_value() },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customData" => lambda {|n| @custom_data = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
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
                writer.write_string_value("approvalId", @approval_id)
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("customData", @custom_data)
                writer.write_string_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the request. Not nullable. The possible values are: Canceled, Denied, Failed, Granted, PendingAdminDecision, PendingApproval, PendingProvisioning, PendingScheduleCreation, Provisioned, Revoked, and ScheduleCreated. Not nullable.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the request. Not nullable. The possible values are: Canceled, Denied, Failed, Granted, PendingAdminDecision, PendingApproval, PendingProvisioning, PendingScheduleCreation, Provisioned, Revoked, and ScheduleCreated. Not nullable.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
