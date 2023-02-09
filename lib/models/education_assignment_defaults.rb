require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationAssignmentDefaults < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Optional field to control adding assignments to students' and teachers' calendars when the assignment is published. The possible values are: none, studentsAndPublisher, studentsAndTeamOwners, unknownFutureValue, and studentsOnly. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: studentsOnly. The default value is none.
            @add_to_calendar_action
            ## 
            # Class-level default behavior for handling students who are added after the assignment is published. Possible values are: none, assignIfOpen.
            @added_student_action
            ## 
            # Class-level default value for due time field. Default value is 23:59:00.
            @due_time
            ## 
            # Default Teams channel to which notifications will be sent. Default value is null.
            @notification_channel_url
            ## 
            ## Gets the addToCalendarAction property value. Optional field to control adding assignments to students' and teachers' calendars when the assignment is published. The possible values are: none, studentsAndPublisher, studentsAndTeamOwners, unknownFutureValue, and studentsOnly. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: studentsOnly. The default value is none.
            ## @return a education_add_to_calendar_options
            ## 
            def add_to_calendar_action
                return @add_to_calendar_action
            end
            ## 
            ## Sets the addToCalendarAction property value. Optional field to control adding assignments to students' and teachers' calendars when the assignment is published. The possible values are: none, studentsAndPublisher, studentsAndTeamOwners, unknownFutureValue, and studentsOnly. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: studentsOnly. The default value is none.
            ## @param value Value to set for the add_to_calendar_action property.
            ## @return a void
            ## 
            def add_to_calendar_action=(value)
                @add_to_calendar_action = value
            end
            ## 
            ## Gets the addedStudentAction property value. Class-level default behavior for handling students who are added after the assignment is published. Possible values are: none, assignIfOpen.
            ## @return a education_added_student_action
            ## 
            def added_student_action
                return @added_student_action
            end
            ## 
            ## Sets the addedStudentAction property value. Class-level default behavior for handling students who are added after the assignment is published. Possible values are: none, assignIfOpen.
            ## @param value Value to set for the added_student_action property.
            ## @return a void
            ## 
            def added_student_action=(value)
                @added_student_action = value
            end
            ## 
            ## Instantiates a new educationAssignmentDefaults and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_assignment_defaults
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationAssignmentDefaults.new
            end
            ## 
            ## Gets the dueTime property value. Class-level default value for due time field. Default value is 23:59:00.
            ## @return a time
            ## 
            def due_time
                return @due_time
            end
            ## 
            ## Sets the dueTime property value. Class-level default value for due time field. Default value is 23:59:00.
            ## @param value Value to set for the due_time property.
            ## @return a void
            ## 
            def due_time=(value)
                @due_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addToCalendarAction" => lambda {|n| @add_to_calendar_action = n.get_enum_value(MicrosoftGraph::Models::EducationAddToCalendarOptions) },
                    "addedStudentAction" => lambda {|n| @added_student_action = n.get_enum_value(MicrosoftGraph::Models::EducationAddedStudentAction) },
                    "dueTime" => lambda {|n| @due_time = n.get_time_value() },
                    "notificationChannelUrl" => lambda {|n| @notification_channel_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the notificationChannelUrl property value. Default Teams channel to which notifications will be sent. Default value is null.
            ## @return a string
            ## 
            def notification_channel_url
                return @notification_channel_url
            end
            ## 
            ## Sets the notificationChannelUrl property value. Default Teams channel to which notifications will be sent. Default value is null.
            ## @param value Value to set for the notification_channel_url property.
            ## @return a void
            ## 
            def notification_channel_url=(value)
                @notification_channel_url = value
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
                writer.write_time_value("dueTime", @due_time)
                writer.write_string_value("notificationChannelUrl", @notification_channel_url)
            end
        end
    end
end
