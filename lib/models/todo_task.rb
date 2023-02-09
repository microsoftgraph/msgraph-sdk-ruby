require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TodoTask < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The attachmentSessions property
            @attachment_sessions
            ## 
            # A collection of file attachments for the task.
            @attachments
            ## 
            # The task body that typically contains information about the task.
            @body
            ## 
            # The date and time when the task body was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            @body_last_modified_date_time
            ## 
            # The categories associated with the task. Each category corresponds to the displayName property of an outlookCategory that the user has defined.
            @categories
            ## 
            # A collection of checklistItems linked to a task.
            @checklist_items
            ## 
            # The date and time in the specified time zone that the task was finished.
            @completed_date_time
            ## 
            # The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            @created_date_time
            ## 
            # The date and time in the specified time zone that the task is to be finished.
            @due_date_time
            ## 
            # The collection of open extensions defined for the task. Nullable.
            @extensions
            ## 
            # Indicates whether the task has attachments.
            @has_attachments
            ## 
            # The importance property
            @importance
            ## 
            # Set to true if an alert is set to remind the user of the task.
            @is_reminder_on
            ## 
            # The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            @last_modified_date_time
            ## 
            # A collection of resources linked to the task.
            @linked_resources
            ## 
            # The recurrence pattern for the task.
            @recurrence
            ## 
            # The date and time in the specified time zone for a reminder alert of the task to occur.
            @reminder_date_time
            ## 
            # The date and time in the specified time zone at which the task is scheduled to start.
            @start_date_time
            ## 
            # The status property
            @status
            ## 
            # A brief description of the task.
            @title
            ## 
            ## Gets the attachmentSessions property value. The attachmentSessions property
            ## @return a attachment_session
            ## 
            def attachment_sessions
                return @attachment_sessions
            end
            ## 
            ## Sets the attachmentSessions property value. The attachmentSessions property
            ## @param value Value to set for the attachment_sessions property.
            ## @return a void
            ## 
            def attachment_sessions=(value)
                @attachment_sessions = value
            end
            ## 
            ## Gets the attachments property value. A collection of file attachments for the task.
            ## @return a attachment_base
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. A collection of file attachments for the task.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the body property value. The task body that typically contains information about the task.
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The task body that typically contains information about the task.
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Gets the bodyLastModifiedDateTime property value. The date and time when the task body was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            ## @return a date_time
            ## 
            def body_last_modified_date_time
                return @body_last_modified_date_time
            end
            ## 
            ## Sets the bodyLastModifiedDateTime property value. The date and time when the task body was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            ## @param value Value to set for the body_last_modified_date_time property.
            ## @return a void
            ## 
            def body_last_modified_date_time=(value)
                @body_last_modified_date_time = value
            end
            ## 
            ## Gets the categories property value. The categories associated with the task. Each category corresponds to the displayName property of an outlookCategory that the user has defined.
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. The categories associated with the task. Each category corresponds to the displayName property of an outlookCategory that the user has defined.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Gets the checklistItems property value. A collection of checklistItems linked to a task.
            ## @return a checklist_item
            ## 
            def checklist_items
                return @checklist_items
            end
            ## 
            ## Sets the checklistItems property value. A collection of checklistItems linked to a task.
            ## @param value Value to set for the checklist_items property.
            ## @return a void
            ## 
            def checklist_items=(value)
                @checklist_items = value
            end
            ## 
            ## Gets the completedDateTime property value. The date and time in the specified time zone that the task was finished.
            ## @return a date_time_time_zone
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. The date and time in the specified time zone that the task was finished.
            ## @param value Value to set for the completed_date_time property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new todoTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a todo_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TodoTask.new
            end
            ## 
            ## Gets the dueDateTime property value. The date and time in the specified time zone that the task is to be finished.
            ## @return a date_time_time_zone
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. The date and time in the specified time zone that the task is to be finished.
            ## @param value Value to set for the due_date_time property.
            ## @return a void
            ## 
            def due_date_time=(value)
                @due_date_time = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the task. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the task. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attachmentSessions" => lambda {|n| @attachment_sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttachmentSession.create_from_discriminator_value(pn) }) },
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttachmentBase.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "bodyLastModifiedDateTime" => lambda {|n| @body_last_modified_date_time = n.get_date_time_value() },
                    "categories" => lambda {|n| @categories = n.get_collection_of_primitive_values(String) },
                    "checklistItems" => lambda {|n| @checklist_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChecklistItem.create_from_discriminator_value(pn) }) },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "dueDateTime" => lambda {|n| @due_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "importance" => lambda {|n| @importance = n.get_enum_value(MicrosoftGraph::Models::Importance) },
                    "isReminderOn" => lambda {|n| @is_reminder_on = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "linkedResources" => lambda {|n| @linked_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LinkedResource.create_from_discriminator_value(pn) }) },
                    "recurrence" => lambda {|n| @recurrence = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PatternedRecurrence.create_from_discriminator_value(pn) }) },
                    "reminderDateTime" => lambda {|n| @reminder_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::TaskStatus) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Indicates whether the task has attachments.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Indicates whether the task has attachments.
            ## @param value Value to set for the has_attachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the importance property value. The importance property
            ## @return a importance
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance property
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
            end
            ## 
            ## Gets the isReminderOn property value. Set to true if an alert is set to remind the user of the task.
            ## @return a boolean
            ## 
            def is_reminder_on
                return @is_reminder_on
            end
            ## 
            ## Sets the isReminderOn property value. Set to true if an alert is set to remind the user of the task.
            ## @param value Value to set for the is_reminder_on property.
            ## @return a void
            ## 
            def is_reminder_on=(value)
                @is_reminder_on = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the linkedResources property value. A collection of resources linked to the task.
            ## @return a linked_resource
            ## 
            def linked_resources
                return @linked_resources
            end
            ## 
            ## Sets the linkedResources property value. A collection of resources linked to the task.
            ## @param value Value to set for the linked_resources property.
            ## @return a void
            ## 
            def linked_resources=(value)
                @linked_resources = value
            end
            ## 
            ## Gets the recurrence property value. The recurrence pattern for the task.
            ## @return a patterned_recurrence
            ## 
            def recurrence
                return @recurrence
            end
            ## 
            ## Sets the recurrence property value. The recurrence pattern for the task.
            ## @param value Value to set for the recurrence property.
            ## @return a void
            ## 
            def recurrence=(value)
                @recurrence = value
            end
            ## 
            ## Gets the reminderDateTime property value. The date and time in the specified time zone for a reminder alert of the task to occur.
            ## @return a date_time_time_zone
            ## 
            def reminder_date_time
                return @reminder_date_time
            end
            ## 
            ## Sets the reminderDateTime property value. The date and time in the specified time zone for a reminder alert of the task to occur.
            ## @param value Value to set for the reminder_date_time property.
            ## @return a void
            ## 
            def reminder_date_time=(value)
                @reminder_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("attachmentSessions", @attachment_sessions)
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_object_value("body", @body)
                writer.write_date_time_value("bodyLastModifiedDateTime", @body_last_modified_date_time)
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_collection_of_object_values("checklistItems", @checklist_items)
                writer.write_object_value("completedDateTime", @completed_date_time)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("dueDateTime", @due_date_time)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_enum_value("importance", @importance)
                writer.write_boolean_value("isReminderOn", @is_reminder_on)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("linkedResources", @linked_resources)
                writer.write_object_value("recurrence", @recurrence)
                writer.write_object_value("reminderDateTime", @reminder_date_time)
                writer.write_object_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the startDateTime property value. The date and time in the specified time zone at which the task is scheduled to start.
            ## @return a date_time_time_zone
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The date and time in the specified time zone at which the task is scheduled to start.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a task_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the title property value. A brief description of the task.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. A brief description of the task.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
