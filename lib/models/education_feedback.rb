require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationFeedback
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # User who created the feedback.
            @feedback_by
            ## 
            # Moment in time when the feedback was given. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @feedback_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Feedback.
            @text
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
            ## Instantiates a new educationFeedback and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_feedback
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationFeedback.new
            end
            ## 
            ## Gets the feedbackBy property value. User who created the feedback.
            ## @return a identity_set
            ## 
            def feedback_by
                return @feedback_by
            end
            ## 
            ## Sets the feedbackBy property value. User who created the feedback.
            ## @param value Value to set for the feedback_by property.
            ## @return a void
            ## 
            def feedback_by=(value)
                @feedback_by = value
            end
            ## 
            ## Gets the feedbackDateTime property value. Moment in time when the feedback was given. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def feedback_date_time
                return @feedback_date_time
            end
            ## 
            ## Sets the feedbackDateTime property value. Moment in time when the feedback was given. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the feedback_date_time property.
            ## @return a void
            ## 
            def feedback_date_time=(value)
                @feedback_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "feedbackBy" => lambda {|n| @feedback_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "feedbackDateTime" => lambda {|n| @feedback_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EducationItemBody.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("feedbackBy", @feedback_by)
                writer.write_date_time_value("feedbackDateTime", @feedback_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("text", @text)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the text property value. Feedback.
            ## @return a education_item_body
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. Feedback.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
        end
    end
end
