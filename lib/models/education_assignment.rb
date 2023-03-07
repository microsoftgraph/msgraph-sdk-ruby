require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationAssignment < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Optional field to control the assignment behavior  for adding assignments to students' and teachers' calendars when the assignment is published. The possible values are: none, studentsAndPublisher, studentsAndTeamOwners, unknownFutureValue, and studentsOnly. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: studentsOnly. The default value is none.
            @add_to_calendar_action
            ## 
            # Optional field to control the assignment behavior for students who are added after the assignment is published. If not specified, defaults to none. Supported values are: none, assignIfOpen. For example, a teacher can use assignIfOpen to indicate that an assignment should be assigned to any new student who joins the class while the assignment is still open, and none to indicate that an assignment should not be assigned to new students.
            @added_student_action
            ## 
            # Identifies whether students can submit after the due date. If this property isn't specified during create, it defaults to true.
            @allow_late_submissions
            ## 
            # Identifies whether students can add their own resources to a submission or if they can only modify resources added by the teacher.
            @allow_students_to_add_resources_to_submission
            ## 
            # The date when the assignment should become active.  If in the future, the assignment isn't shown to the student until this date.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @assign_date_time
            ## 
            # Which users, or whole class should receive a submission object once the assignment is published.
            @assign_to
            ## 
            # The moment that the assignment was published to students and the assignment shows up on the students timeline.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @assigned_date_time
            ## 
            # When set, enables users to easily find assignments of a given type.  Read-only. Nullable.
            @categories
            ## 
            # Class which this assignment belongs.
            @class_id
            ## 
            # Date when the assignment will be closed for submissions. This is an optional field that can be null if the assignment does not allowLateSubmissions or when the closeDateTime is the same as the dueDateTime. But if specified, then the closeDateTime must be greater than or equal to the dueDateTime. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @close_date_time
            ## 
            # Who created the assignment.
            @created_by
            ## 
            # Moment when the assignment was created.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # Name of the assignment.
            @display_name
            ## 
            # Date when the students assignment is due.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @due_date_time
            ## 
            # Folder URL where all the feedback file resources for this assignment are stored.
            @feedback_resources_folder_url
            ## 
            # How the assignment will be graded.
            @grading
            ## 
            # Instructions for the assignment.  This along with the display name tell the student what to do.
            @instructions
            ## 
            # Who last modified the assignment.
            @last_modified_by
            ## 
            # Moment when the assignment was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @last_modified_date_time
            ## 
            # Optional field to specify the URL of the channel to post the assignment publish notification. If not specified or null, defaults to the General channel. This field only applies to assignments where the assignTo value is educationAssignmentClassRecipient. Updating the notificationChannelUrl isn't allowed after the assignment has been published.
            @notification_channel_url
            ## 
            # Learning objects that are associated with this assignment.  Only teachers can modify this list. Nullable.
            @resources
            ## 
            # Folder URL where all the file resources for this assignment are stored.
            @resources_folder_url
            ## 
            # When set, the grading rubric attached to this assignment.
            @rubric
            ## 
            # Status of the Assignment.  You can't PATCH this value.  Possible values are: draft, scheduled, published, assigned.
            @status
            ## 
            # Once published, there is a submission object for each student representing their work and grade.  Read-only. Nullable.
            @submissions
            ## 
            # The deep link URL for the given assignment.
            @web_url
            ## 
            ## Gets the addToCalendarAction property value. Optional field to control the assignment behavior  for adding assignments to students' and teachers' calendars when the assignment is published. The possible values are: none, studentsAndPublisher, studentsAndTeamOwners, unknownFutureValue, and studentsOnly. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: studentsOnly. The default value is none.
            ## @return a education_add_to_calendar_options
            ## 
            def add_to_calendar_action
                return @add_to_calendar_action
            end
            ## 
            ## Sets the addToCalendarAction property value. Optional field to control the assignment behavior  for adding assignments to students' and teachers' calendars when the assignment is published. The possible values are: none, studentsAndPublisher, studentsAndTeamOwners, unknownFutureValue, and studentsOnly. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: studentsOnly. The default value is none.
            ## @param value Value to set for the add_to_calendar_action property.
            ## @return a void
            ## 
            def add_to_calendar_action=(value)
                @add_to_calendar_action = value
            end
            ## 
            ## Gets the addedStudentAction property value. Optional field to control the assignment behavior for students who are added after the assignment is published. If not specified, defaults to none. Supported values are: none, assignIfOpen. For example, a teacher can use assignIfOpen to indicate that an assignment should be assigned to any new student who joins the class while the assignment is still open, and none to indicate that an assignment should not be assigned to new students.
            ## @return a education_added_student_action
            ## 
            def added_student_action
                return @added_student_action
            end
            ## 
            ## Sets the addedStudentAction property value. Optional field to control the assignment behavior for students who are added after the assignment is published. If not specified, defaults to none. Supported values are: none, assignIfOpen. For example, a teacher can use assignIfOpen to indicate that an assignment should be assigned to any new student who joins the class while the assignment is still open, and none to indicate that an assignment should not be assigned to new students.
            ## @param value Value to set for the added_student_action property.
            ## @return a void
            ## 
            def added_student_action=(value)
                @added_student_action = value
            end
            ## 
            ## Gets the allowLateSubmissions property value. Identifies whether students can submit after the due date. If this property isn't specified during create, it defaults to true.
            ## @return a boolean
            ## 
            def allow_late_submissions
                return @allow_late_submissions
            end
            ## 
            ## Sets the allowLateSubmissions property value. Identifies whether students can submit after the due date. If this property isn't specified during create, it defaults to true.
            ## @param value Value to set for the allow_late_submissions property.
            ## @return a void
            ## 
            def allow_late_submissions=(value)
                @allow_late_submissions = value
            end
            ## 
            ## Gets the allowStudentsToAddResourcesToSubmission property value. Identifies whether students can add their own resources to a submission or if they can only modify resources added by the teacher.
            ## @return a boolean
            ## 
            def allow_students_to_add_resources_to_submission
                return @allow_students_to_add_resources_to_submission
            end
            ## 
            ## Sets the allowStudentsToAddResourcesToSubmission property value. Identifies whether students can add their own resources to a submission or if they can only modify resources added by the teacher.
            ## @param value Value to set for the allow_students_to_add_resources_to_submission property.
            ## @return a void
            ## 
            def allow_students_to_add_resources_to_submission=(value)
                @allow_students_to_add_resources_to_submission = value
            end
            ## 
            ## Gets the assignDateTime property value. The date when the assignment should become active.  If in the future, the assignment isn't shown to the student until this date.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def assign_date_time
                return @assign_date_time
            end
            ## 
            ## Sets the assignDateTime property value. The date when the assignment should become active.  If in the future, the assignment isn't shown to the student until this date.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the assign_date_time property.
            ## @return a void
            ## 
            def assign_date_time=(value)
                @assign_date_time = value
            end
            ## 
            ## Gets the assignTo property value. Which users, or whole class should receive a submission object once the assignment is published.
            ## @return a education_assignment_recipient
            ## 
            def assign_to
                return @assign_to
            end
            ## 
            ## Sets the assignTo property value. Which users, or whole class should receive a submission object once the assignment is published.
            ## @param value Value to set for the assign_to property.
            ## @return a void
            ## 
            def assign_to=(value)
                @assign_to = value
            end
            ## 
            ## Gets the assignedDateTime property value. The moment that the assignment was published to students and the assignment shows up on the students timeline.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def assigned_date_time
                return @assigned_date_time
            end
            ## 
            ## Sets the assignedDateTime property value. The moment that the assignment was published to students and the assignment shows up on the students timeline.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the assigned_date_time property.
            ## @return a void
            ## 
            def assigned_date_time=(value)
                @assigned_date_time = value
            end
            ## 
            ## Gets the categories property value. When set, enables users to easily find assignments of a given type.  Read-only. Nullable.
            ## @return a education_category
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. When set, enables users to easily find assignments of a given type.  Read-only. Nullable.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Gets the classId property value. Class which this assignment belongs.
            ## @return a string
            ## 
            def class_id
                return @class_id
            end
            ## 
            ## Sets the classId property value. Class which this assignment belongs.
            ## @param value Value to set for the class_id property.
            ## @return a void
            ## 
            def class_id=(value)
                @class_id = value
            end
            ## 
            ## Gets the closeDateTime property value. Date when the assignment will be closed for submissions. This is an optional field that can be null if the assignment does not allowLateSubmissions or when the closeDateTime is the same as the dueDateTime. But if specified, then the closeDateTime must be greater than or equal to the dueDateTime. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def close_date_time
                return @close_date_time
            end
            ## 
            ## Sets the closeDateTime property value. Date when the assignment will be closed for submissions. This is an optional field that can be null if the assignment does not allowLateSubmissions or when the closeDateTime is the same as the dueDateTime. But if specified, then the closeDateTime must be greater than or equal to the dueDateTime. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the close_date_time property.
            ## @return a void
            ## 
            def close_date_time=(value)
                @close_date_time = value
            end
            ## 
            ## Instantiates a new educationAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Who created the assignment.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Who created the assignment.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Moment when the assignment was created.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Moment when the assignment was created.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationAssignment.new
            end
            ## 
            ## Gets the displayName property value. Name of the assignment.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the assignment.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the dueDateTime property value. Date when the students assignment is due.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. Date when the students assignment is due.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the due_date_time property.
            ## @return a void
            ## 
            def due_date_time=(value)
                @due_date_time = value
            end
            ## 
            ## Gets the feedbackResourcesFolderUrl property value. Folder URL where all the feedback file resources for this assignment are stored.
            ## @return a string
            ## 
            def feedback_resources_folder_url
                return @feedback_resources_folder_url
            end
            ## 
            ## Sets the feedbackResourcesFolderUrl property value. Folder URL where all the feedback file resources for this assignment are stored.
            ## @param value Value to set for the feedback_resources_folder_url property.
            ## @return a void
            ## 
            def feedback_resources_folder_url=(value)
                @feedback_resources_folder_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addToCalendarAction" => lambda {|n| @add_to_calendar_action = n.get_enum_value(MicrosoftGraph::Models::EducationAddToCalendarOptions) },
                    "addedStudentAction" => lambda {|n| @added_student_action = n.get_enum_value(MicrosoftGraph::Models::EducationAddedStudentAction) },
                    "allowLateSubmissions" => lambda {|n| @allow_late_submissions = n.get_boolean_value() },
                    "allowStudentsToAddResourcesToSubmission" => lambda {|n| @allow_students_to_add_resources_to_submission = n.get_boolean_value() },
                    "assignDateTime" => lambda {|n| @assign_date_time = n.get_date_time_value() },
                    "assignTo" => lambda {|n| @assign_to = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentRecipient.create_from_discriminator_value(pn) }) },
                    "assignedDateTime" => lambda {|n| @assigned_date_time = n.get_date_time_value() },
                    "categories" => lambda {|n| @categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationCategory.create_from_discriminator_value(pn) }) },
                    "classId" => lambda {|n| @class_id = n.get_string_value() },
                    "closeDateTime" => lambda {|n| @close_date_time = n.get_date_time_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "dueDateTime" => lambda {|n| @due_date_time = n.get_date_time_value() },
                    "feedbackResourcesFolderUrl" => lambda {|n| @feedback_resources_folder_url = n.get_string_value() },
                    "grading" => lambda {|n| @grading = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentGradeType.create_from_discriminator_value(pn) }) },
                    "instructions" => lambda {|n| @instructions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationItemBody.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "notificationChannelUrl" => lambda {|n| @notification_channel_url = n.get_string_value() },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentResource.create_from_discriminator_value(pn) }) },
                    "resourcesFolderUrl" => lambda {|n| @resources_folder_url = n.get_string_value() },
                    "rubric" => lambda {|n| @rubric = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationRubric.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::EducationAssignmentStatus) },
                    "submissions" => lambda {|n| @submissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EducationSubmission.create_from_discriminator_value(pn) }) },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the grading property value. How the assignment will be graded.
            ## @return a education_assignment_grade_type
            ## 
            def grading
                return @grading
            end
            ## 
            ## Sets the grading property value. How the assignment will be graded.
            ## @param value Value to set for the grading property.
            ## @return a void
            ## 
            def grading=(value)
                @grading = value
            end
            ## 
            ## Gets the instructions property value. Instructions for the assignment.  This along with the display name tell the student what to do.
            ## @return a education_item_body
            ## 
            def instructions
                return @instructions
            end
            ## 
            ## Sets the instructions property value. Instructions for the assignment.  This along with the display name tell the student what to do.
            ## @param value Value to set for the instructions property.
            ## @return a void
            ## 
            def instructions=(value)
                @instructions = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Who last modified the assignment.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Who last modified the assignment.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Moment when the assignment was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Moment when the assignment was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the notificationChannelUrl property value. Optional field to specify the URL of the channel to post the assignment publish notification. If not specified or null, defaults to the General channel. This field only applies to assignments where the assignTo value is educationAssignmentClassRecipient. Updating the notificationChannelUrl isn't allowed after the assignment has been published.
            ## @return a string
            ## 
            def notification_channel_url
                return @notification_channel_url
            end
            ## 
            ## Sets the notificationChannelUrl property value. Optional field to specify the URL of the channel to post the assignment publish notification. If not specified or null, defaults to the General channel. This field only applies to assignments where the assignTo value is educationAssignmentClassRecipient. Updating the notificationChannelUrl isn't allowed after the assignment has been published.
            ## @param value Value to set for the notification_channel_url property.
            ## @return a void
            ## 
            def notification_channel_url=(value)
                @notification_channel_url = value
            end
            ## 
            ## Gets the resources property value. Learning objects that are associated with this assignment.  Only teachers can modify this list. Nullable.
            ## @return a education_assignment_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. Learning objects that are associated with this assignment.  Only teachers can modify this list. Nullable.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Gets the resourcesFolderUrl property value. Folder URL where all the file resources for this assignment are stored.
            ## @return a string
            ## 
            def resources_folder_url
                return @resources_folder_url
            end
            ## 
            ## Sets the resourcesFolderUrl property value. Folder URL where all the file resources for this assignment are stored.
            ## @param value Value to set for the resources_folder_url property.
            ## @return a void
            ## 
            def resources_folder_url=(value)
                @resources_folder_url = value
            end
            ## 
            ## Gets the rubric property value. When set, the grading rubric attached to this assignment.
            ## @return a education_rubric
            ## 
            def rubric
                return @rubric
            end
            ## 
            ## Sets the rubric property value. When set, the grading rubric attached to this assignment.
            ## @param value Value to set for the rubric property.
            ## @return a void
            ## 
            def rubric=(value)
                @rubric = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("addToCalendarAction", @add_to_calendar_action)
                writer.write_enum_value("addedStudentAction", @added_student_action)
                writer.write_boolean_value("allowLateSubmissions", @allow_late_submissions)
                writer.write_boolean_value("allowStudentsToAddResourcesToSubmission", @allow_students_to_add_resources_to_submission)
                writer.write_object_value("assignTo", @assign_to)
                writer.write_collection_of_object_values("categories", @categories)
                writer.write_string_value("classId", @class_id)
                writer.write_date_time_value("closeDateTime", @close_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("dueDateTime", @due_date_time)
                writer.write_object_value("grading", @grading)
                writer.write_object_value("instructions", @instructions)
                writer.write_string_value("notificationChannelUrl", @notification_channel_url)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_object_value("rubric", @rubric)
                writer.write_collection_of_object_values("submissions", @submissions)
            end
            ## 
            ## Gets the status property value. Status of the Assignment.  You can't PATCH this value.  Possible values are: draft, scheduled, published, assigned.
            ## @return a education_assignment_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the Assignment.  You can't PATCH this value.  Possible values are: draft, scheduled, published, assigned.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the submissions property value. Once published, there is a submission object for each student representing their work and grade.  Read-only. Nullable.
            ## @return a education_submission
            ## 
            def submissions
                return @submissions
            end
            ## 
            ## Sets the submissions property value. Once published, there is a submission object for each student representing their work and grade.  Read-only. Nullable.
            ## @param value Value to set for the submissions property.
            ## @return a void
            ## 
            def submissions=(value)
                @submissions = value
            end
            ## 
            ## Gets the webUrl property value. The deep link URL for the given assignment.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. The deep link URL for the given assignment.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
