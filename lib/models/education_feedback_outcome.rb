require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationFeedbackOutcome < MicrosoftGraph::Models::EducationOutcome
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Teacher's written feedback to the student.
            @feedback
            ## 
            # A copy of the feedback property that is made when the grade is released to the student.
            @published_feedback
            ## 
            ## Instantiates a new EducationFeedbackOutcome and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationFeedbackOutcome"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_feedback_outcome
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationFeedbackOutcome.new
            end
            ## 
            ## Gets the feedback property value. Teacher's written feedback to the student.
            ## @return a education_feedback
            ## 
            def feedback
                return @feedback
            end
            ## 
            ## Sets the feedback property value. Teacher's written feedback to the student.
            ## @param value Value to set for the feedback property.
            ## @return a void
            ## 
            def feedback=(value)
                @feedback = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "feedback" => lambda {|n| @feedback = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationFeedback.create_from_discriminator_value(pn) }) },
                    "publishedFeedback" => lambda {|n| @published_feedback = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationFeedback.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the publishedFeedback property value. A copy of the feedback property that is made when the grade is released to the student.
            ## @return a education_feedback
            ## 
            def published_feedback
                return @published_feedback
            end
            ## 
            ## Sets the publishedFeedback property value. A copy of the feedback property that is made when the grade is released to the student.
            ## @param value Value to set for the published_feedback property.
            ## @return a void
            ## 
            def published_feedback=(value)
                @published_feedback = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("feedback", @feedback)
                writer.write_object_value("publishedFeedback", @published_feedback)
            end
        end
    end
end
