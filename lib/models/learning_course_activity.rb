require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LearningCourseActivity < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date and time when the assignment was completed. Optional.
            @completed_date_time
            ## 
            # The percentage completion value of the course activity. Optional.
            @completion_percentage
            ## 
            # The externalcourseActivityId property
            @externalcourse_activity_id
            ## 
            # The user ID of the learner to whom the activity is assigned. Required.
            @learner_user_id
            ## 
            # The ID of the learning content created in Viva Learning. Required.
            @learning_content_id
            ## 
            # The registration ID of the provider. Required.
            @learning_provider_id
            ## 
            # The status of the course activity. Possible values are: notStarted, inProgress, completed. Required.
            @status
            ## 
            ## Gets the completedDateTime property value. Date and time when the assignment was completed. Optional.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. Date and time when the assignment was completed. Optional.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Gets the completionPercentage property value. The percentage completion value of the course activity. Optional.
            ## @return a integer
            ## 
            def completion_percentage
                return @completion_percentage
            end
            ## 
            ## Sets the completionPercentage property value. The percentage completion value of the course activity. Optional.
            ## @param value Value to set for the completionPercentage property.
            ## @return a void
            ## 
            def completion_percentage=(value)
                @completion_percentage = value
            end
            ## 
            ## Instantiates a new LearningCourseActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a learning_course_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.learningAssignment"
                            return LearningAssignment.new
                        when "#microsoft.graph.learningSelfInitiatedCourse"
                            return LearningSelfInitiatedCourse.new
                    end
                end
                return LearningCourseActivity.new
            end
            ## 
            ## Gets the externalcourseActivityId property value. The externalcourseActivityId property
            ## @return a string
            ## 
            def externalcourse_activity_id
                return @externalcourse_activity_id
            end
            ## 
            ## Sets the externalcourseActivityId property value. The externalcourseActivityId property
            ## @param value Value to set for the externalcourseActivityId property.
            ## @return a void
            ## 
            def externalcourse_activity_id=(value)
                @externalcourse_activity_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "completionPercentage" => lambda {|n| @completion_percentage = n.get_number_value() },
                    "externalcourseActivityId" => lambda {|n| @externalcourse_activity_id = n.get_string_value() },
                    "learnerUserId" => lambda {|n| @learner_user_id = n.get_string_value() },
                    "learningContentId" => lambda {|n| @learning_content_id = n.get_string_value() },
                    "learningProviderId" => lambda {|n| @learning_provider_id = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::CourseStatus) },
                })
            end
            ## 
            ## Gets the learnerUserId property value. The user ID of the learner to whom the activity is assigned. Required.
            ## @return a string
            ## 
            def learner_user_id
                return @learner_user_id
            end
            ## 
            ## Sets the learnerUserId property value. The user ID of the learner to whom the activity is assigned. Required.
            ## @param value Value to set for the learnerUserId property.
            ## @return a void
            ## 
            def learner_user_id=(value)
                @learner_user_id = value
            end
            ## 
            ## Gets the learningContentId property value. The ID of the learning content created in Viva Learning. Required.
            ## @return a string
            ## 
            def learning_content_id
                return @learning_content_id
            end
            ## 
            ## Sets the learningContentId property value. The ID of the learning content created in Viva Learning. Required.
            ## @param value Value to set for the learningContentId property.
            ## @return a void
            ## 
            def learning_content_id=(value)
                @learning_content_id = value
            end
            ## 
            ## Gets the learningProviderId property value. The registration ID of the provider. Required.
            ## @return a string
            ## 
            def learning_provider_id
                return @learning_provider_id
            end
            ## 
            ## Sets the learningProviderId property value. The registration ID of the provider. Required.
            ## @param value Value to set for the learningProviderId property.
            ## @return a void
            ## 
            def learning_provider_id=(value)
                @learning_provider_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_number_value("completionPercentage", @completion_percentage)
                writer.write_string_value("externalcourseActivityId", @externalcourse_activity_id)
                writer.write_string_value("learnerUserId", @learner_user_id)
                writer.write_string_value("learningContentId", @learning_content_id)
                writer.write_string_value("learningProviderId", @learning_provider_id)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the course activity. Possible values are: notStarted, inProgress, completed. Required.
            ## @return a course_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the course activity. Possible values are: notStarted, inProgress, completed. Required.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
