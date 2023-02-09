require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PinnedChatMessageInfo < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents details about the chat message that is pinned.
            @message
            ## 
            ## Instantiates a new pinnedChatMessageInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a pinned_chat_message_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PinnedChatMessageInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "message" => lambda {|n| @message = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessage.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the message property value. Represents details about the chat message that is pinned.
            ## @return a chat_message
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. Represents details about the chat message that is pinned.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("message", @message)
            end
        end
    end
end
