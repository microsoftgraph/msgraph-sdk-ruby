require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventRegistrationQuestionAnswer
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The booleanValue property
            @boolean_value
            ## 
            # The displayName property
            @display_name
            ## 
            # The multiChoiceValues property
            @multi_choice_values
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The questionId property
            @question_id
            ## 
            # The value property
            @value
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the booleanValue property value. The booleanValue property
            ## @return a boolean
            ## 
            def boolean_value
                return @boolean_value
            end
            ## 
            ## Sets the booleanValue property value. The booleanValue property
            ## @param value Value to set for the booleanValue property.
            ## @return a void
            ## 
            def boolean_value=(value)
                @boolean_value = value
            end
            ## 
            ## Instantiates a new virtualEventRegistrationQuestionAnswer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registration_question_answer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventRegistrationQuestionAnswer.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
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
                return {
                    "booleanValue" => lambda {|n| @boolean_value = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "multiChoiceValues" => lambda {|n| @multi_choice_values = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "questionId" => lambda {|n| @question_id = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                }
            end
            ## 
            ## Gets the multiChoiceValues property value. The multiChoiceValues property
            ## @return a string
            ## 
            def multi_choice_values
                return @multi_choice_values
            end
            ## 
            ## Sets the multiChoiceValues property value. The multiChoiceValues property
            ## @param value Value to set for the multiChoiceValues property.
            ## @return a void
            ## 
            def multi_choice_values=(value)
                @multi_choice_values = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the questionId property value. The questionId property
            ## @return a string
            ## 
            def question_id
                return @question_id
            end
            ## 
            ## Sets the questionId property value. The questionId property
            ## @param value Value to set for the questionId property.
            ## @return a void
            ## 
            def question_id=(value)
                @question_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("booleanValue", @boolean_value)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_primitive_values("multiChoiceValues", @multi_choice_values)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("questionId", @question_id)
                writer.write_string_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the value property value. The value property
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The value property
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
