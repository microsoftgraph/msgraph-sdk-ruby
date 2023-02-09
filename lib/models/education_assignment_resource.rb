require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationAssignmentResource < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether this resource should be copied to each student submission for modification and submission. Required
            @distribute_for_student_work
            ## 
            # Resource object that has been associated with this assignment.
            @resource
            ## 
            ## Instantiates a new educationAssignmentResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_assignment_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationAssignmentResource.new
            end
            ## 
            ## Gets the distributeForStudentWork property value. Indicates whether this resource should be copied to each student submission for modification and submission. Required
            ## @return a boolean
            ## 
            def distribute_for_student_work
                return @distribute_for_student_work
            end
            ## 
            ## Sets the distributeForStudentWork property value. Indicates whether this resource should be copied to each student submission for modification and submission. Required
            ## @param value Value to set for the distribute_for_student_work property.
            ## @return a void
            ## 
            def distribute_for_student_work=(value)
                @distribute_for_student_work = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "distributeForStudentWork" => lambda {|n| @distribute_for_student_work = n.get_boolean_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resource property value. Resource object that has been associated with this assignment.
            ## @return a education_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Resource object that has been associated with this assignment.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("distributeForStudentWork", @distribute_for_student_work)
                writer.write_object_value("resource", @resource)
            end
        end
    end
end
