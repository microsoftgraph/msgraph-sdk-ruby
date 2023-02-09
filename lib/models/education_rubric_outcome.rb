require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationRubricOutcome < MicrosoftGraph::Models::EducationOutcome
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A copy of the rubricQualityFeedback property that is made when the grade is released to the student.
            @published_rubric_quality_feedback
            ## 
            # A copy of the rubricQualitySelectedLevels property that is made when the grade is released to the student.
            @published_rubric_quality_selected_levels
            ## 
            # A collection of specific feedback for each quality of this rubric.
            @rubric_quality_feedback
            ## 
            # The level that the teacher has selected for each quality while grading this assignment.
            @rubric_quality_selected_levels
            ## 
            ## Instantiates a new EducationRubricOutcome and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationRubricOutcome"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_rubric_outcome
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationRubricOutcome.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "publishedRubricQualityFeedback" => lambda {|n| @published_rubric_quality_feedback = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RubricQualityFeedbackModel.create_from_discriminator_value(pn) }) },
                    "publishedRubricQualitySelectedLevels" => lambda {|n| @published_rubric_quality_selected_levels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RubricQualitySelectedColumnModel.create_from_discriminator_value(pn) }) },
                    "rubricQualityFeedback" => lambda {|n| @rubric_quality_feedback = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RubricQualityFeedbackModel.create_from_discriminator_value(pn) }) },
                    "rubricQualitySelectedLevels" => lambda {|n| @rubric_quality_selected_levels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RubricQualitySelectedColumnModel.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the publishedRubricQualityFeedback property value. A copy of the rubricQualityFeedback property that is made when the grade is released to the student.
            ## @return a rubric_quality_feedback_model
            ## 
            def published_rubric_quality_feedback
                return @published_rubric_quality_feedback
            end
            ## 
            ## Sets the publishedRubricQualityFeedback property value. A copy of the rubricQualityFeedback property that is made when the grade is released to the student.
            ## @param value Value to set for the published_rubric_quality_feedback property.
            ## @return a void
            ## 
            def published_rubric_quality_feedback=(value)
                @published_rubric_quality_feedback = value
            end
            ## 
            ## Gets the publishedRubricQualitySelectedLevels property value. A copy of the rubricQualitySelectedLevels property that is made when the grade is released to the student.
            ## @return a rubric_quality_selected_column_model
            ## 
            def published_rubric_quality_selected_levels
                return @published_rubric_quality_selected_levels
            end
            ## 
            ## Sets the publishedRubricQualitySelectedLevels property value. A copy of the rubricQualitySelectedLevels property that is made when the grade is released to the student.
            ## @param value Value to set for the published_rubric_quality_selected_levels property.
            ## @return a void
            ## 
            def published_rubric_quality_selected_levels=(value)
                @published_rubric_quality_selected_levels = value
            end
            ## 
            ## Gets the rubricQualityFeedback property value. A collection of specific feedback for each quality of this rubric.
            ## @return a rubric_quality_feedback_model
            ## 
            def rubric_quality_feedback
                return @rubric_quality_feedback
            end
            ## 
            ## Sets the rubricQualityFeedback property value. A collection of specific feedback for each quality of this rubric.
            ## @param value Value to set for the rubric_quality_feedback property.
            ## @return a void
            ## 
            def rubric_quality_feedback=(value)
                @rubric_quality_feedback = value
            end
            ## 
            ## Gets the rubricQualitySelectedLevels property value. The level that the teacher has selected for each quality while grading this assignment.
            ## @return a rubric_quality_selected_column_model
            ## 
            def rubric_quality_selected_levels
                return @rubric_quality_selected_levels
            end
            ## 
            ## Sets the rubricQualitySelectedLevels property value. The level that the teacher has selected for each quality while grading this assignment.
            ## @param value Value to set for the rubric_quality_selected_levels property.
            ## @return a void
            ## 
            def rubric_quality_selected_levels=(value)
                @rubric_quality_selected_levels = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("publishedRubricQualityFeedback", @published_rubric_quality_feedback)
                writer.write_collection_of_object_values("publishedRubricQualitySelectedLevels", @published_rubric_quality_selected_levels)
                writer.write_collection_of_object_values("rubricQualityFeedback", @rubric_quality_feedback)
                writer.write_collection_of_object_values("rubricQualitySelectedLevels", @rubric_quality_selected_levels)
            end
        end
    end
end
