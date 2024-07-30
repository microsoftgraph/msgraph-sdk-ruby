require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventRegistrationConfiguration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The capacity property
            @capacity
            ## 
            # The questions property
            @questions
            ## 
            # The registrationWebUrl property
            @registration_web_url
            ## 
            ## Gets the capacity property value. The capacity property
            ## @return a integer
            ## 
            def capacity
                return @capacity
            end
            ## 
            ## Sets the capacity property value. The capacity property
            ## @param value Value to set for the capacity property.
            ## @return a void
            ## 
            def capacity=(value)
                @capacity = value
            end
            ## 
            ## Instantiates a new VirtualEventRegistrationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_registration_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.virtualEventWebinarRegistrationConfiguration"
                            return VirtualEventWebinarRegistrationConfiguration.new
                    end
                end
                return VirtualEventRegistrationConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "capacity" => lambda {|n| @capacity = n.get_number_value() },
                    "questions" => lambda {|n| @questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VirtualEventRegistrationQuestionBase.create_from_discriminator_value(pn) }) },
                    "registrationWebUrl" => lambda {|n| @registration_web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the questions property value. The questions property
            ## @return a virtual_event_registration_question_base
            ## 
            def questions
                return @questions
            end
            ## 
            ## Sets the questions property value. The questions property
            ## @param value Value to set for the questions property.
            ## @return a void
            ## 
            def questions=(value)
                @questions = value
            end
            ## 
            ## Gets the registrationWebUrl property value. The registrationWebUrl property
            ## @return a string
            ## 
            def registration_web_url
                return @registration_web_url
            end
            ## 
            ## Sets the registrationWebUrl property value. The registrationWebUrl property
            ## @param value Value to set for the registrationWebUrl property.
            ## @return a void
            ## 
            def registration_web_url=(value)
                @registration_web_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("capacity", @capacity)
                writer.write_collection_of_object_values("questions", @questions)
                writer.write_string_value("registrationWebUrl", @registration_web_url)
            end
        end
    end
end
