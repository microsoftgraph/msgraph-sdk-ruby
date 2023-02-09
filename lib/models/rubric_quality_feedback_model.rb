require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RubricQualityFeedbackModel
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specific feedback for one quality of this rubric.
            @feedback
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The ID of the rubricQuality that this feedback is related to.
            @quality_id
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new rubricQualityFeedbackModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a rubric_quality_feedback_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RubricQualityFeedbackModel.new
            end
            ## 
            ## Gets the feedback property value. Specific feedback for one quality of this rubric.
            ## @return a education_item_body
            ## 
            def feedback
                return @feedback
            end
            ## 
            ## Sets the feedback property value. Specific feedback for one quality of this rubric.
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
                return {
                    "feedback" => lambda {|n| @feedback = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationItemBody.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "qualityId" => lambda {|n| @quality_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the qualityId property value. The ID of the rubricQuality that this feedback is related to.
            ## @return a string
            ## 
            def quality_id
                return @quality_id
            end
            ## 
            ## Sets the qualityId property value. The ID of the rubricQuality that this feedback is related to.
            ## @param value Value to set for the quality_id property.
            ## @return a void
            ## 
            def quality_id=(value)
                @quality_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("feedback", @feedback)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("qualityId", @quality_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
