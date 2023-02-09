require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatRenamedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The updated name of the chat.
            @chat_display_name
            ## 
            # Unique identifier of the chat.
            @chat_id
            ## 
            # Initiator of the event.
            @initiator
            ## 
            ## Gets the chatDisplayName property value. The updated name of the chat.
            ## @return a string
            ## 
            def chat_display_name
                return @chat_display_name
            end
            ## 
            ## Sets the chatDisplayName property value. The updated name of the chat.
            ## @param value Value to set for the chat_display_name property.
            ## @return a void
            ## 
            def chat_display_name=(value)
                @chat_display_name = value
            end
            ## 
            ## Gets the chatId property value. Unique identifier of the chat.
            ## @return a string
            ## 
            def chat_id
                return @chat_id
            end
            ## 
            ## Sets the chatId property value. Unique identifier of the chat.
            ## @param value Value to set for the chat_id property.
            ## @return a void
            ## 
            def chat_id=(value)
                @chat_id = value
            end
            ## 
            ## Instantiates a new ChatRenamedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.chatRenamedEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_renamed_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatRenamedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "chatDisplayName" => lambda {|n| @chat_display_name = n.get_string_value() },
                    "chatId" => lambda {|n| @chat_id = n.get_string_value() },
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the initiator property value. Initiator of the event.
            ## @return a identity_set
            ## 
            def initiator
                return @initiator
            end
            ## 
            ## Sets the initiator property value. Initiator of the event.
            ## @param value Value to set for the initiator property.
            ## @return a void
            ## 
            def initiator=(value)
                @initiator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("chatDisplayName", @chat_display_name)
                writer.write_string_value("chatId", @chat_id)
                writer.write_object_value("initiator", @initiator)
            end
        end
    end
end
