require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class UserFeedback
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The rating property
                @rating
                ## 
                # The feedback text provided by the user of this endpoint for the session.
                @text
                ## 
                # The set of feedback tokens provided by the user of this endpoint for the session. This is a set of Boolean properties. The property names should not be relied upon since they may change depending on what tokens are offered to the user.
                @tokens
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
                ## Instantiates a new userFeedback and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a user_feedback
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UserFeedback.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "rating" => lambda {|n| @rating = n.get_enum_value(MicrosoftGraph::Models::CallRecords::UserFeedbackRating) },
                        "text" => lambda {|n| @text = n.get_string_value() },
                        "tokens" => lambda {|n| @tokens = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallRecords::FeedbackTokenSet.create_from_discriminator_value(pn) }) },
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
                ## Gets the rating property value. The rating property
                ## @return a user_feedback_rating
                ## 
                def rating
                    return @rating
                end
                ## 
                ## Sets the rating property value. The rating property
                ## @param value Value to set for the rating property.
                ## @return a void
                ## 
                def rating=(value)
                    @rating = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("rating", @rating)
                    writer.write_string_value("text", @text)
                    writer.write_object_value("tokens", @tokens)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the text property value. The feedback text provided by the user of this endpoint for the session.
                ## @return a string
                ## 
                def text
                    return @text
                end
                ## 
                ## Sets the text property value. The feedback text provided by the user of this endpoint for the session.
                ## @param value Value to set for the text property.
                ## @return a void
                ## 
                def text=(value)
                    @text = value
                end
                ## 
                ## Gets the tokens property value. The set of feedback tokens provided by the user of this endpoint for the session. This is a set of Boolean properties. The property names should not be relied upon since they may change depending on what tokens are offered to the user.
                ## @return a feedback_token_set
                ## 
                def tokens
                    return @tokens
                end
                ## 
                ## Sets the tokens property value. The set of feedback tokens provided by the user of this endpoint for the session. This is a set of Boolean properties. The property names should not be relied upon since they may change depending on what tokens are offered to the user.
                ## @param value Value to set for the tokens property.
                ## @return a void
                ## 
                def tokens=(value)
                    @tokens = value
                end
            end
        end
    end
end
