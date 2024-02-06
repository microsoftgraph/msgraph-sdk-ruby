require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EmployeeExperienceUser < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The learningCourseActivities property
            @learning_course_activities
            ## 
            ## Instantiates a new employeeExperienceUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a employee_experience_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmployeeExperienceUser.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "learningCourseActivities" => lambda {|n| @learning_course_activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LearningCourseActivity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the learningCourseActivities property value. The learningCourseActivities property
            ## @return a learning_course_activity
            ## 
            def learning_course_activities
                return @learning_course_activities
            end
            ## 
            ## Sets the learningCourseActivities property value. The learningCourseActivities property
            ## @param value Value to set for the learningCourseActivities property.
            ## @return a void
            ## 
            def learning_course_activities=(value)
                @learning_course_activities = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("learningCourseActivities", @learning_course_activities) unless @learning_course_activities.nil?
            end
        end
    end
end
