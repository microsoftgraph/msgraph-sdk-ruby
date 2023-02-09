require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationAssignmentPointsGradeType < MicrosoftGraph::Models::EducationAssignmentGradeType
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Max points possible for this assignment.
            @max_points
            ## 
            ## Instantiates a new EducationAssignmentPointsGradeType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationAssignmentPointsGradeType"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_assignment_points_grade_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationAssignmentPointsGradeType.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maxPoints" => lambda {|n| @max_points = n.get_float_value() },
                })
            end
            ## 
            ## Gets the maxPoints property value. Max points possible for this assignment.
            ## @return a float
            ## 
            def max_points
                return @max_points
            end
            ## 
            ## Sets the maxPoints property value. Max points possible for this assignment.
            ## @param value Value to set for the max_points property.
            ## @return a void
            ## 
            def max_points=(value)
                @max_points = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_float_value("maxPoints", @max_points)
            end
        end
    end
end
