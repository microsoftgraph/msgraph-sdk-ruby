require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationFeedbackResourceOutcome < MicrosoftGraph::Models::EducationOutcome
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actual feedback resource.
            @feedback_resource
            ## 
            # The status of the feedback resource. The possible values are: notPublished, pendingPublish, published, failedPublish, unknownFutureValue.
            @resource_status
            ## 
            ## Instantiates a new EducationFeedbackResourceOutcome and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationFeedbackResourceOutcome"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_feedback_resource_outcome
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationFeedbackResourceOutcome.new
            end
            ## 
            ## Gets the feedbackResource property value. The actual feedback resource.
            ## @return a education_resource
            ## 
            def feedback_resource
                return @feedback_resource
            end
            ## 
            ## Sets the feedbackResource property value. The actual feedback resource.
            ## @param value Value to set for the feedback_resource property.
            ## @return a void
            ## 
            def feedback_resource=(value)
                @feedback_resource = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "feedbackResource" => lambda {|n| @feedback_resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationResource.create_from_discriminator_value(pn) }) },
                    "resourceStatus" => lambda {|n| @resource_status = n.get_enum_value(MicrosoftGraph::Models::EducationFeedbackResourceOutcomeStatus) },
                })
            end
            ## 
            ## Gets the resourceStatus property value. The status of the feedback resource. The possible values are: notPublished, pendingPublish, published, failedPublish, unknownFutureValue.
            ## @return a education_feedback_resource_outcome_status
            ## 
            def resource_status
                return @resource_status
            end
            ## 
            ## Sets the resourceStatus property value. The status of the feedback resource. The possible values are: notPublished, pendingPublish, published, failedPublish, unknownFutureValue.
            ## @param value Value to set for the resource_status property.
            ## @return a void
            ## 
            def resource_status=(value)
                @resource_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("feedbackResource", @feedback_resource)
                writer.write_enum_value("resourceStatus", @resource_status)
            end
        end
    end
end
