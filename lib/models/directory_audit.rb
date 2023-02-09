require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DirectoryAudit < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the date and time the activity was performed. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @activity_date_time
            ## 
            # Indicates the activity name or the operation name (examples: 'Create User' and 'Add member to group'). For full list, see Azure AD activity list.
            @activity_display_name
            ## 
            # Indicates additional details on the activity.
            @additional_details
            ## 
            # Indicates which resource category that's targeted by the activity. For example: UserManagement, GroupManagement, ApplicationManagement, RoleManagement.
            @category
            ## 
            # Indicates a unique ID that helps correlate activities that span across various services. Can be used to trace logs across services.
            @correlation_id
            ## 
            # The initiatedBy property
            @initiated_by
            ## 
            # Indicates information on which service initiated the activity (For example: Self-service Password Management, Core Directory, B2C, Invited Users, Microsoft Identity Manager, Privileged Identity Management.
            @logged_by_service
            ## 
            # Indicates the type of operation that was performed. The possible values include but are not limited to the following: Add, Assign, Update, Unassign, and Delete.
            @operation_type
            ## 
            # Indicates the result of the activity. Possible values are: success, failure, timeout, unknownFutureValue.
            @result
            ## 
            # Indicates the reason for failure if the result is failure or timeout.
            @result_reason
            ## 
            # Indicates information on which resource was changed due to the activity. Target Resource Type can be User, Device, Directory, App, Role, Group, Policy or Other.
            @target_resources
            ## 
            ## Gets the activityDateTime property value. Indicates the date and time the activity was performed. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def activity_date_time
                return @activity_date_time
            end
            ## 
            ## Sets the activityDateTime property value. Indicates the date and time the activity was performed. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the activity_date_time property.
            ## @return a void
            ## 
            def activity_date_time=(value)
                @activity_date_time = value
            end
            ## 
            ## Gets the activityDisplayName property value. Indicates the activity name or the operation name (examples: 'Create User' and 'Add member to group'). For full list, see Azure AD activity list.
            ## @return a string
            ## 
            def activity_display_name
                return @activity_display_name
            end
            ## 
            ## Sets the activityDisplayName property value. Indicates the activity name or the operation name (examples: 'Create User' and 'Add member to group'). For full list, see Azure AD activity list.
            ## @param value Value to set for the activity_display_name property.
            ## @return a void
            ## 
            def activity_display_name=(value)
                @activity_display_name = value
            end
            ## 
            ## Gets the additionalDetails property value. Indicates additional details on the activity.
            ## @return a key_value
            ## 
            def additional_details
                return @additional_details
            end
            ## 
            ## Sets the additionalDetails property value. Indicates additional details on the activity.
            ## @param value Value to set for the additional_details property.
            ## @return a void
            ## 
            def additional_details=(value)
                @additional_details = value
            end
            ## 
            ## Gets the category property value. Indicates which resource category that's targeted by the activity. For example: UserManagement, GroupManagement, ApplicationManagement, RoleManagement.
            ## @return a string
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. Indicates which resource category that's targeted by the activity. For example: UserManagement, GroupManagement, ApplicationManagement, RoleManagement.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new directoryAudit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. Indicates a unique ID that helps correlate activities that span across various services. Can be used to trace logs across services.
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. Indicates a unique ID that helps correlate activities that span across various services. Can be used to trace logs across services.
            ## @param value Value to set for the correlation_id property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a directory_audit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DirectoryAudit.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activityDateTime" => lambda {|n| @activity_date_time = n.get_date_time_value() },
                    "activityDisplayName" => lambda {|n| @activity_display_name = n.get_string_value() },
                    "additionalDetails" => lambda {|n| @additional_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_string_value() },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "initiatedBy" => lambda {|n| @initiated_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AuditActivityInitiator.create_from_discriminator_value(pn) }) },
                    "loggedByService" => lambda {|n| @logged_by_service = n.get_string_value() },
                    "operationType" => lambda {|n| @operation_type = n.get_string_value() },
                    "result" => lambda {|n| @result = n.get_enum_value(MicrosoftGraph::Models::OperationResult) },
                    "resultReason" => lambda {|n| @result_reason = n.get_string_value() },
                    "targetResources" => lambda {|n| @target_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TargetResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the initiatedBy property value. The initiatedBy property
            ## @return a audit_activity_initiator
            ## 
            def initiated_by
                return @initiated_by
            end
            ## 
            ## Sets the initiatedBy property value. The initiatedBy property
            ## @param value Value to set for the initiated_by property.
            ## @return a void
            ## 
            def initiated_by=(value)
                @initiated_by = value
            end
            ## 
            ## Gets the loggedByService property value. Indicates information on which service initiated the activity (For example: Self-service Password Management, Core Directory, B2C, Invited Users, Microsoft Identity Manager, Privileged Identity Management.
            ## @return a string
            ## 
            def logged_by_service
                return @logged_by_service
            end
            ## 
            ## Sets the loggedByService property value. Indicates information on which service initiated the activity (For example: Self-service Password Management, Core Directory, B2C, Invited Users, Microsoft Identity Manager, Privileged Identity Management.
            ## @param value Value to set for the logged_by_service property.
            ## @return a void
            ## 
            def logged_by_service=(value)
                @logged_by_service = value
            end
            ## 
            ## Gets the operationType property value. Indicates the type of operation that was performed. The possible values include but are not limited to the following: Add, Assign, Update, Unassign, and Delete.
            ## @return a string
            ## 
            def operation_type
                return @operation_type
            end
            ## 
            ## Sets the operationType property value. Indicates the type of operation that was performed. The possible values include but are not limited to the following: Add, Assign, Update, Unassign, and Delete.
            ## @param value Value to set for the operation_type property.
            ## @return a void
            ## 
            def operation_type=(value)
                @operation_type = value
            end
            ## 
            ## Gets the result property value. Indicates the result of the activity. Possible values are: success, failure, timeout, unknownFutureValue.
            ## @return a operation_result
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. Indicates the result of the activity. Possible values are: success, failure, timeout, unknownFutureValue.
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Gets the resultReason property value. Indicates the reason for failure if the result is failure or timeout.
            ## @return a string
            ## 
            def result_reason
                return @result_reason
            end
            ## 
            ## Sets the resultReason property value. Indicates the reason for failure if the result is failure or timeout.
            ## @param value Value to set for the result_reason property.
            ## @return a void
            ## 
            def result_reason=(value)
                @result_reason = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("activityDateTime", @activity_date_time)
                writer.write_string_value("activityDisplayName", @activity_display_name)
                writer.write_collection_of_object_values("additionalDetails", @additional_details)
                writer.write_string_value("category", @category)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_object_value("initiatedBy", @initiated_by)
                writer.write_string_value("loggedByService", @logged_by_service)
                writer.write_string_value("operationType", @operation_type)
                writer.write_enum_value("result", @result)
                writer.write_string_value("resultReason", @result_reason)
                writer.write_collection_of_object_values("targetResources", @target_resources)
            end
            ## 
            ## Gets the targetResources property value. Indicates information on which resource was changed due to the activity. Target Resource Type can be User, Device, Directory, App, Role, Group, Policy or Other.
            ## @return a target_resource
            ## 
            def target_resources
                return @target_resources
            end
            ## 
            ## Sets the targetResources property value. Indicates information on which resource was changed due to the activity. Target Resource Type can be User, Device, Directory, App, Role, Group, Policy or Other.
            ## @param value Value to set for the target_resources property.
            ## @return a void
            ## 
            def target_resources=(value)
                @target_resources = value
            end
        end
    end
end
