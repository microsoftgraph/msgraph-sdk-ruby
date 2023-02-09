require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationPointsOutcome < MicrosoftGraph::Models::EducationOutcome
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The numeric grade the teacher has given the student for this assignment.
            @points
            ## 
            # A copy of the points property that is made when the grade is released to the student.
            @published_points
            ## 
            ## Instantiates a new EducationPointsOutcome and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationPointsOutcome"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_points_outcome
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationPointsOutcome.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "points" => lambda {|n| @points = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentPointsGrade.create_from_discriminator_value(pn) }) },
                    "publishedPoints" => lambda {|n| @published_points = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationAssignmentPointsGrade.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the points property value. The numeric grade the teacher has given the student for this assignment.
            ## @return a education_assignment_points_grade
            ## 
            def points
                return @points
            end
            ## 
            ## Sets the points property value. The numeric grade the teacher has given the student for this assignment.
            ## @param value Value to set for the points property.
            ## @return a void
            ## 
            def points=(value)
                @points = value
            end
            ## 
            ## Gets the publishedPoints property value. A copy of the points property that is made when the grade is released to the student.
            ## @return a education_assignment_points_grade
            ## 
            def published_points
                return @published_points
            end
            ## 
            ## Sets the publishedPoints property value. A copy of the points property that is made when the grade is released to the student.
            ## @param value Value to set for the published_points property.
            ## @return a void
            ## 
            def published_points=(value)
                @published_points = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("points", @points)
                writer.write_object_value("publishedPoints", @published_points)
            end
        end
    end
end
