require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationAssignmentPointsGrade < MicrosoftGraph::Models::EducationAssignmentGrade
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of points a teacher is giving this submission object.
            @points
            ## 
            ## Instantiates a new EducationAssignmentPointsGrade and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationAssignmentPointsGrade"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_assignment_points_grade
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationAssignmentPointsGrade.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "points" => lambda {|n| @points = n.get_float_value() },
                })
            end
            ## 
            ## Gets the points property value. Number of points a teacher is giving this submission object.
            ## @return a float
            ## 
            def points
                return @points
            end
            ## 
            ## Sets the points property value. Number of points a teacher is giving this submission object.
            ## @param value Value to set for the points property.
            ## @return a void
            ## 
            def points=(value)
                @points = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_float_value("points", @points)
            end
        end
    end
end
