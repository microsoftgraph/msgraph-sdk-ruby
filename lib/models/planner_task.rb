require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PlannerTask < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of checklist items with value set to false, representing incomplete items.
            @active_checklist_item_count
            ## 
            # The categories to which the task has been applied. See applied Categories for possible values.
            @applied_categories
            ## 
            # Read-only. Nullable. Used to render the task correctly in the task board view when grouped by assignedTo.
            @assigned_to_task_board_format
            ## 
            # Hint used to order items of this type in a list view. The format is defined as outlined here.
            @assignee_priority
            ## 
            # The set of assignees the task is assigned to.
            @assignments
            ## 
            # Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
            @bucket_id
            ## 
            # Read-only. Nullable. Used to render the task correctly in the task board view when grouped by bucket.
            @bucket_task_board_format
            ## 
            # Number of checklist items that are present on the task.
            @checklist_item_count
            ## 
            # Identity of the user that completed the task.
            @completed_by
            ## 
            # Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @completed_date_time
            ## 
            # Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
            @conversation_thread_id
            ## 
            # Identity of the user that created the task.
            @created_by
            ## 
            # Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # Read-only. Nullable. Additional details about the task.
            @details
            ## 
            # Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @due_date_time
            ## 
            # Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
            @has_description
            ## 
            # Hint used to order items of this type in a list view. The format is defined as outlined here.
            @order_hint
            ## 
            # Percentage of task completion. When set to 100, the task is considered completed.
            @percent_complete
            ## 
            # Plan ID to which the task belongs.
            @plan_id
            ## 
            # This sets the type of preview that shows up on the task. The possible values are: automatic, noPreview, checklist, description, reference.
            @preview_type
            ## 
            # Priority of the task. The valid range of values is between 0 and 10, with the increasing value being lower priority (0 has the highest priority and 10 has the lowest priority).  Currently, Planner interprets values 0 and 1 as 'urgent', 2, 3 and 4 as 'important', 5, 6, and 7 as 'medium', and 8, 9, and 10 as 'low'.  Additionally, Planner sets the value 1 for 'urgent', 3 for 'important', 5 for 'medium', and 9 for 'low'.
            @priority
            ## 
            # Read-only. Nullable. Used to render the task correctly in the task board view when grouped by progress.
            @progress_task_board_format
            ## 
            # Number of external references that exist on the task.
            @reference_count
            ## 
            # Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @start_date_time
            ## 
            # Title of the task.
            @title
            ## 
            ## Gets the activeChecklistItemCount property value. Number of checklist items with value set to false, representing incomplete items.
            ## @return a integer
            ## 
            def active_checklist_item_count
                return @active_checklist_item_count
            end
            ## 
            ## Sets the activeChecklistItemCount property value. Number of checklist items with value set to false, representing incomplete items.
            ## @param value Value to set for the active_checklist_item_count property.
            ## @return a void
            ## 
            def active_checklist_item_count=(value)
                @active_checklist_item_count = value
            end
            ## 
            ## Gets the appliedCategories property value. The categories to which the task has been applied. See applied Categories for possible values.
            ## @return a planner_applied_categories
            ## 
            def applied_categories
                return @applied_categories
            end
            ## 
            ## Sets the appliedCategories property value. The categories to which the task has been applied. See applied Categories for possible values.
            ## @param value Value to set for the applied_categories property.
            ## @return a void
            ## 
            def applied_categories=(value)
                @applied_categories = value
            end
            ## 
            ## Gets the assignedToTaskBoardFormat property value. Read-only. Nullable. Used to render the task correctly in the task board view when grouped by assignedTo.
            ## @return a planner_assigned_to_task_board_task_format
            ## 
            def assigned_to_task_board_format
                return @assigned_to_task_board_format
            end
            ## 
            ## Sets the assignedToTaskBoardFormat property value. Read-only. Nullable. Used to render the task correctly in the task board view when grouped by assignedTo.
            ## @param value Value to set for the assigned_to_task_board_format property.
            ## @return a void
            ## 
            def assigned_to_task_board_format=(value)
                @assigned_to_task_board_format = value
            end
            ## 
            ## Gets the assigneePriority property value. Hint used to order items of this type in a list view. The format is defined as outlined here.
            ## @return a string
            ## 
            def assignee_priority
                return @assignee_priority
            end
            ## 
            ## Sets the assigneePriority property value. Hint used to order items of this type in a list view. The format is defined as outlined here.
            ## @param value Value to set for the assignee_priority property.
            ## @return a void
            ## 
            def assignee_priority=(value)
                @assignee_priority = value
            end
            ## 
            ## Gets the assignments property value. The set of assignees the task is assigned to.
            ## @return a planner_assignments
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The set of assignees the task is assigned to.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the bucketId property value. Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
            ## @return a string
            ## 
            def bucket_id
                return @bucket_id
            end
            ## 
            ## Sets the bucketId property value. Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It is 28 characters long and case-sensitive. Format validation is done on the service.
            ## @param value Value to set for the bucket_id property.
            ## @return a void
            ## 
            def bucket_id=(value)
                @bucket_id = value
            end
            ## 
            ## Gets the bucketTaskBoardFormat property value. Read-only. Nullable. Used to render the task correctly in the task board view when grouped by bucket.
            ## @return a planner_bucket_task_board_task_format
            ## 
            def bucket_task_board_format
                return @bucket_task_board_format
            end
            ## 
            ## Sets the bucketTaskBoardFormat property value. Read-only. Nullable. Used to render the task correctly in the task board view when grouped by bucket.
            ## @param value Value to set for the bucket_task_board_format property.
            ## @return a void
            ## 
            def bucket_task_board_format=(value)
                @bucket_task_board_format = value
            end
            ## 
            ## Gets the checklistItemCount property value. Number of checklist items that are present on the task.
            ## @return a integer
            ## 
            def checklist_item_count
                return @checklist_item_count
            end
            ## 
            ## Sets the checklistItemCount property value. Number of checklist items that are present on the task.
            ## @param value Value to set for the checklist_item_count property.
            ## @return a void
            ## 
            def checklist_item_count=(value)
                @checklist_item_count = value
            end
            ## 
            ## Gets the completedBy property value. Identity of the user that completed the task.
            ## @return a identity_set
            ## 
            def completed_by
                return @completed_by
            end
            ## 
            ## Sets the completedBy property value. Identity of the user that completed the task.
            ## @param value Value to set for the completed_by property.
            ## @return a void
            ## 
            def completed_by=(value)
                @completed_by = value
            end
            ## 
            ## Gets the completedDateTime property value. Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. Read-only. Date and time at which the 'percentComplete' of the task is set to '100'. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the completed_date_time property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new plannerTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the conversationThreadId property value. Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
            ## @return a string
            ## 
            def conversation_thread_id
                return @conversation_thread_id
            end
            ## 
            ## Sets the conversationThreadId property value. Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.
            ## @param value Value to set for the conversation_thread_id property.
            ## @return a void
            ## 
            def conversation_thread_id=(value)
                @conversation_thread_id = value
            end
            ## 
            ## Gets the createdBy property value. Identity of the user that created the task.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user that created the task.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerTask.new
            end
            ## 
            ## Gets the details property value. Read-only. Nullable. Additional details about the task.
            ## @return a planner_task_details
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. Read-only. Nullable. Additional details about the task.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## Gets the dueDateTime property value. Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the due_date_time property.
            ## @return a void
            ## 
            def due_date_time=(value)
                @due_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeChecklistItemCount" => lambda {|n| @active_checklist_item_count = n.get_number_value() },
                    "appliedCategories" => lambda {|n| @applied_categories = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerAppliedCategories.create_from_discriminator_value(pn) }) },
                    "assignedToTaskBoardFormat" => lambda {|n| @assigned_to_task_board_format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerAssignedToTaskBoardTaskFormat.create_from_discriminator_value(pn) }) },
                    "assigneePriority" => lambda {|n| @assignee_priority = n.get_string_value() },
                    "assignments" => lambda {|n| @assignments = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerAssignments.create_from_discriminator_value(pn) }) },
                    "bucketId" => lambda {|n| @bucket_id = n.get_string_value() },
                    "bucketTaskBoardFormat" => lambda {|n| @bucket_task_board_format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerBucketTaskBoardTaskFormat.create_from_discriminator_value(pn) }) },
                    "checklistItemCount" => lambda {|n| @checklist_item_count = n.get_number_value() },
                    "completedBy" => lambda {|n| @completed_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "conversationThreadId" => lambda {|n| @conversation_thread_id = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "details" => lambda {|n| @details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerTaskDetails.create_from_discriminator_value(pn) }) },
                    "dueDateTime" => lambda {|n| @due_date_time = n.get_date_time_value() },
                    "hasDescription" => lambda {|n| @has_description = n.get_boolean_value() },
                    "orderHint" => lambda {|n| @order_hint = n.get_string_value() },
                    "percentComplete" => lambda {|n| @percent_complete = n.get_number_value() },
                    "planId" => lambda {|n| @plan_id = n.get_string_value() },
                    "previewType" => lambda {|n| @preview_type = n.get_enum_value(MicrosoftGraph::Models::PlannerPreviewType) },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "progressTaskBoardFormat" => lambda {|n| @progress_task_board_format = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerProgressTaskBoardTaskFormat.create_from_discriminator_value(pn) }) },
                    "referenceCount" => lambda {|n| @reference_count = n.get_number_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hasDescription property value. Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
            ## @return a boolean
            ## 
            def has_description
                return @has_description
            end
            ## 
            ## Sets the hasDescription property value. Read-only. Value is true if the details object of the task has a non-empty description and false otherwise.
            ## @param value Value to set for the has_description property.
            ## @return a void
            ## 
            def has_description=(value)
                @has_description = value
            end
            ## 
            ## Gets the orderHint property value. Hint used to order items of this type in a list view. The format is defined as outlined here.
            ## @return a string
            ## 
            def order_hint
                return @order_hint
            end
            ## 
            ## Sets the orderHint property value. Hint used to order items of this type in a list view. The format is defined as outlined here.
            ## @param value Value to set for the order_hint property.
            ## @return a void
            ## 
            def order_hint=(value)
                @order_hint = value
            end
            ## 
            ## Gets the percentComplete property value. Percentage of task completion. When set to 100, the task is considered completed.
            ## @return a integer
            ## 
            def percent_complete
                return @percent_complete
            end
            ## 
            ## Sets the percentComplete property value. Percentage of task completion. When set to 100, the task is considered completed.
            ## @param value Value to set for the percent_complete property.
            ## @return a void
            ## 
            def percent_complete=(value)
                @percent_complete = value
            end
            ## 
            ## Gets the planId property value. Plan ID to which the task belongs.
            ## @return a string
            ## 
            def plan_id
                return @plan_id
            end
            ## 
            ## Sets the planId property value. Plan ID to which the task belongs.
            ## @param value Value to set for the plan_id property.
            ## @return a void
            ## 
            def plan_id=(value)
                @plan_id = value
            end
            ## 
            ## Gets the previewType property value. This sets the type of preview that shows up on the task. The possible values are: automatic, noPreview, checklist, description, reference.
            ## @return a planner_preview_type
            ## 
            def preview_type
                return @preview_type
            end
            ## 
            ## Sets the previewType property value. This sets the type of preview that shows up on the task. The possible values are: automatic, noPreview, checklist, description, reference.
            ## @param value Value to set for the preview_type property.
            ## @return a void
            ## 
            def preview_type=(value)
                @preview_type = value
            end
            ## 
            ## Gets the priority property value. Priority of the task. The valid range of values is between 0 and 10, with the increasing value being lower priority (0 has the highest priority and 10 has the lowest priority).  Currently, Planner interprets values 0 and 1 as 'urgent', 2, 3 and 4 as 'important', 5, 6, and 7 as 'medium', and 8, 9, and 10 as 'low'.  Additionally, Planner sets the value 1 for 'urgent', 3 for 'important', 5 for 'medium', and 9 for 'low'.
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Priority of the task. The valid range of values is between 0 and 10, with the increasing value being lower priority (0 has the highest priority and 10 has the lowest priority).  Currently, Planner interprets values 0 and 1 as 'urgent', 2, 3 and 4 as 'important', 5, 6, and 7 as 'medium', and 8, 9, and 10 as 'low'.  Additionally, Planner sets the value 1 for 'urgent', 3 for 'important', 5 for 'medium', and 9 for 'low'.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Gets the progressTaskBoardFormat property value. Read-only. Nullable. Used to render the task correctly in the task board view when grouped by progress.
            ## @return a planner_progress_task_board_task_format
            ## 
            def progress_task_board_format
                return @progress_task_board_format
            end
            ## 
            ## Sets the progressTaskBoardFormat property value. Read-only. Nullable. Used to render the task correctly in the task board view when grouped by progress.
            ## @param value Value to set for the progress_task_board_format property.
            ## @return a void
            ## 
            def progress_task_board_format=(value)
                @progress_task_board_format = value
            end
            ## 
            ## Gets the referenceCount property value. Number of external references that exist on the task.
            ## @return a integer
            ## 
            def reference_count
                return @reference_count
            end
            ## 
            ## Sets the referenceCount property value. Number of external references that exist on the task.
            ## @param value Value to set for the reference_count property.
            ## @return a void
            ## 
            def reference_count=(value)
                @reference_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activeChecklistItemCount", @active_checklist_item_count)
                writer.write_object_value("appliedCategories", @applied_categories)
                writer.write_object_value("assignedToTaskBoardFormat", @assigned_to_task_board_format)
                writer.write_string_value("assigneePriority", @assignee_priority)
                writer.write_object_value("assignments", @assignments)
                writer.write_string_value("bucketId", @bucket_id)
                writer.write_object_value("bucketTaskBoardFormat", @bucket_task_board_format)
                writer.write_number_value("checklistItemCount", @checklist_item_count)
                writer.write_object_value("completedBy", @completed_by)
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_string_value("conversationThreadId", @conversation_thread_id)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("details", @details)
                writer.write_date_time_value("dueDateTime", @due_date_time)
                writer.write_boolean_value("hasDescription", @has_description)
                writer.write_string_value("orderHint", @order_hint)
                writer.write_number_value("percentComplete", @percent_complete)
                writer.write_string_value("planId", @plan_id)
                writer.write_enum_value("previewType", @preview_type)
                writer.write_number_value("priority", @priority)
                writer.write_object_value("progressTaskBoardFormat", @progress_task_board_format)
                writer.write_number_value("referenceCount", @reference_count)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the startDateTime property value. Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the title property value. Title of the task.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Title of the task.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
