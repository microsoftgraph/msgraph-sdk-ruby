require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Represents a custom question of the business.
        class BookingCustomQuestion < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The expected answer type. The possible values are: text, radioButton, unknownFutureValue.
            @answer_input_type
            ## 
            # List of possible answer values.
            @answer_options
            ## 
            # The question.
            @display_name
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
            ## Gets the answerOptions property value. List of possible answer values.
            ## @return a string
            ## 
            def answer_options
                return @answer_options
            end
            ## 
            ## Sets the answerOptions property value. List of possible answer values.
            ## @param value Value to set for the answer_options property.
            ## @return a void
            ## 
            def answer_options=(value)
                @answer_options = value
            end
            ## 
            ## Instantiates a new bookingCustomQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_custom_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingCustomQuestion.new
            end
            ## 
            ## Gets the displayName property value. The question.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The question.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "answerInputType" => lambda {|n| @answer_input_type = n.get_enum_value(MicrosoftGraph::Models::AnswerInputType) },
                    "answerOptions" => lambda {|n| @answer_options = n.get_collection_of_primitive_values(String) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("answerInputType", @answer_input_type)
                writer.write_collection_of_primitive_values("answerOptions", @answer_options)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
