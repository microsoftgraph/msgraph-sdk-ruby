require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessageMentionedIdentitySet < MicrosoftGraph::Models::IdentitySet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If present, represents a conversation (for example, team or channel) @mentioned in a message.
            @conversation
            ## 
            ## Instantiates a new ChatMessageMentionedIdentitySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.chatMessageMentionedIdentitySet"
            end
            ## 
            ## Gets the conversation property value. If present, represents a conversation (for example, team or channel) @mentioned in a message.
            ## @return a teamwork_conversation_identity
            ## 
            def conversation
                return @conversation
            end
            ## 
            ## Sets the conversation property value. If present, represents a conversation (for example, team or channel) @mentioned in a message.
            ## @param value Value to set for the conversation property.
            ## @return a void
            ## 
            def conversation=(value)
                @conversation = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_mentioned_identity_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessageMentionedIdentitySet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conversation" => lambda {|n| @conversation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkConversationIdentity.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("conversation", @conversation)
            end
        end
    end
end
