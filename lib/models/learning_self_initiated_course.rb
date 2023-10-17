require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LearningSelfInitiatedCourse < MicrosoftGraph::Models::LearningCourseActivity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time on which the self-initiated course was started by the learner. Optional.
            @started_date_time
            ## 
            ## Instantiates a new learningSelfInitiatedCourse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a learning_self_initiated_course
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LearningSelfInitiatedCourse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "startedDateTime" => lambda {|n| @started_date_time = n.get_date_time_value() },
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
                writer.write_date_time_value("startedDateTime", @started_date_time)
            end
            ## 
            ## Gets the startedDateTime property value. The date and time on which the self-initiated course was started by the learner. Optional.
            ## @return a date_time
            ## 
            def started_date_time
                return @started_date_time
            end
            ## 
            ## Sets the startedDateTime property value. The date and time on which the self-initiated course was started by the learner. Optional.
            ## @param value Value to set for the startedDateTime property.
            ## @return a void
            ## 
            def started_date_time=(value)
                @started_date_time = value
            end
        end
    end
end
