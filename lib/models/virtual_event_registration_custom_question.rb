require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventRegistrationCustomQuestion < MicrosoftGraph::Models::VirtualEventRegistrationQuestionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The answerChoices property
            @answer_choices
            ## 
            # The answerInputType property
            @answer_input_type
            ## 
            ## Gets the answerChoices property value. The answerChoices property
            ## @return a string
            ## 
            def answer_choices
                return @answer_choices
            end
            ## 
            ## Sets the answerChoices property value. The answerChoices property
            ## @param value Value to set for the answerChoices property.
            ## @return a void
            ## 
            def answer_choices=(value)
                @answer_choices = value
            end
            ## 
            ## Gets the answerInputType property value. The answerInputType property
            ## @return a virtual_event_registration_question_answer_input_type
            ## 
            def answer_input_type
                return @answer_input_type
            end
            ## 
            ## Sets the answerInputType property value. The answerInputType property
            ## @param value Value to set for the answerInputType property.
            ## @return a void
            ## 
            def answer_input_type=(value)
                @answer_input_type = value
            end
            ## 
            ## Instantiates a new VirtualEventRegistrationCustomQuestion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.virtualEventRegistrationCustomQuestion"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registration_custom_question
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventRegistrationCustomQuestion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "answerChoices" => lambda {|n| @answer_choices = n.get_collection_of_primitive_values(String) },
                    "answerInputType" => lambda {|n| @answer_input_type = n.get_enum_value(MicrosoftGraph::Models::VirtualEventRegistrationQuestionAnswerInputType) },
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
                writer.write_collection_of_primitive_values("answerChoices", @answer_choices)
                writer.write_enum_value("answerInputType", @answer_input_type)
            end
        end
    end
end
