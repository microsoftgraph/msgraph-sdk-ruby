require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationSubmissionResource < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Pointer to the assignment from which this resource was copied. If this is null, the student uploaded the resource.
            @assignment_resource_url
            ## 
            # Resource object.
            @resource
            ## 
            ## Gets the assignmentResourceUrl property value. Pointer to the assignment from which this resource was copied. If this is null, the student uploaded the resource.
            ## @return a string
            ## 
            def assignment_resource_url
                return @assignment_resource_url
            end
            ## 
            ## Sets the assignmentResourceUrl property value. Pointer to the assignment from which this resource was copied. If this is null, the student uploaded the resource.
            ## @param value Value to set for the assignment_resource_url property.
            ## @return a void
            ## 
            def assignment_resource_url=(value)
                @assignment_resource_url = value
            end
            ## 
            ## Instantiates a new educationSubmissionResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_submission_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSubmissionResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignmentResourceUrl" => lambda {|n| @assignment_resource_url = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resource property value. Resource object.
            ## @return a education_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Resource object.
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
                writer.write_string_value("assignmentResourceUrl", @assignment_resource_url)
                writer.write_object_value("resource", @resource)
            end
        end
    end
end
