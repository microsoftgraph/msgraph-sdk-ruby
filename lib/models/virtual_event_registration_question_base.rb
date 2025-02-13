require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventRegistrationQuestionBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of the registration question.
            @display_name
            ## 
            # Indicates whether an answer to the question is required. The default value is false.
            @is_required
            ## 
            ## Instantiates a new VirtualEventRegistrationQuestionBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registration_question_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.virtualEventRegistrationCustomQuestion"
                            return VirtualEventRegistrationCustomQuestion.new
                        when "#microsoft.graph.virtualEventRegistrationPredefinedQuestion"
                            return VirtualEventRegistrationPredefinedQuestion.new
                    end
                end
                return VirtualEventRegistrationQuestionBase.new
            end
            ## 
            ## Gets the displayName property value. Display name of the registration question.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the registration question.
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
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isRequired property value. Indicates whether an answer to the question is required. The default value is false.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Indicates whether an answer to the question is required. The default value is false.
            ## @param value Value to set for the isRequired property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isRequired", @is_required)
            end
        end
    end
end
