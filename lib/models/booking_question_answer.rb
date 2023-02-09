require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingQuestionAnswer
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The answer given by the user in case the answerInputType is text.
            @answer
            ## 
            # The expected answer type. The possible values are: text, radioButton, unknownFutureValue.
            @answer_input_type
            ## 
            # In case the answerInputType is radioButton, this will consists of a list of possible answer values.
            @answer_options
            ## 
            # Indicates whether it is mandatory to answer the custom question.
            @is_required
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The question.
            @question
            ## 
            # The ID of the custom question.
            @question_id
            ## 
            # The answers selected by the user.
            @selected_options
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
            ## Gets the answer property value. The answer given by the user in case the answerInputType is text.
            ## @return a string
            ## 
            def answer
                return @answer
            end
            ## 
            ## Sets the answer property value. The answer given by the user in case the answerInputType is text.
            ## @param value Value to set for the answer property.
            ## @return a void
            ## 
            def answer=(value)
                @answer = value
            end
            ## 
            ## Gets the answerInputType property value. The expected answer type. The possible values are: text, radioButton, unknownFutureValue.
            ## @return a answer_input_type
            ## 
            def answer_input_type
                return @answer_input_type
            end
            ## 
            ## Sets the answerInputType property value. The expected answer type. The possible values are: text, radioButton, unknownFutureValue.
            ## @param value Value to set for the answer_input_type property.
            ## @return a void
            ## 
            def answer_input_type=(value)
                @answer_input_type = value
            end
            ## 
            ## Gets the answerOptions property value. In case the answerInputType is radioButton, this will consists of a list of possible answer values.
            ## @return a string
            ## 
            def answer_options
                return @answer_options
            end
            ## 
            ## Sets the answerOptions property value. In case the answerInputType is radioButton, this will consists of a list of possible answer values.
            ## @param value Value to set for the answer_options property.
            ## @return a void
            ## 
            def answer_options=(value)
                @answer_options = value
            end
            ## 
            ## Instantiates a new bookingQuestionAnswer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_question_answer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingQuestionAnswer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "answer" => lambda {|n| @answer = n.get_string_value() },
                    "answerInputType" => lambda {|n| @answer_input_type = n.get_enum_value(MicrosoftGraph::Models::AnswerInputType) },
                    "answerOptions" => lambda {|n| @answer_options = n.get_collection_of_primitive_values(String) },
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "question" => lambda {|n| @question = n.get_string_value() },
                    "questionId" => lambda {|n| @question_id = n.get_string_value() },
                    "selectedOptions" => lambda {|n| @selected_options = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the isRequired property value. Indicates whether it is mandatory to answer the custom question.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Indicates whether it is mandatory to answer the custom question.
            ## @param value Value to set for the is_required property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
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
            ## Gets the question property value. The question.
            ## @return a string
            ## 
            def question
                return @question
            end
            ## 
            ## Sets the question property value. The question.
            ## @param value Value to set for the question property.
            ## @return a void
            ## 
            def question=(value)
                @question = value
            end
            ## 
            ## Gets the questionId property value. The ID of the custom question.
            ## @return a string
            ## 
            def question_id
                return @question_id
            end
            ## 
            ## Sets the questionId property value. The ID of the custom question.
            ## @param value Value to set for the question_id property.
            ## @return a void
            ## 
            def question_id=(value)
                @question_id = value
            end
            ## 
            ## Gets the selectedOptions property value. The answers selected by the user.
            ## @return a string
            ## 
            def selected_options
                return @selected_options
            end
            ## 
            ## Sets the selectedOptions property value. The answers selected by the user.
            ## @param value Value to set for the selected_options property.
            ## @return a void
            ## 
            def selected_options=(value)
                @selected_options = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("answer", @answer)
                writer.write_enum_value("answerInputType", @answer_input_type)
                writer.write_collection_of_primitive_values("answerOptions", @answer_options)
                writer.write_boolean_value("isRequired", @is_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("question", @question)
                writer.write_string_value("questionId", @question_id)
                writer.write_collection_of_primitive_values("selectedOptions", @selected_options)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
