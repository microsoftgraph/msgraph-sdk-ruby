require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamworkConversationIdentity < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Type of conversation. Possible values are: team, channel, chat, and unknownFutureValue.
            @conversation_identity_type
            ## 
            ## Instantiates a new TeamworkConversationIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.teamworkConversationIdentity"
            end
            ## 
            ## Gets the conversationIdentityType property value. Type of conversation. Possible values are: team, channel, chat, and unknownFutureValue.
            ## @return a teamwork_conversation_identity_type
            ## 
            def conversation_identity_type
                return @conversation_identity_type
            end
            ## 
            ## Sets the conversationIdentityType property value. Type of conversation. Possible values are: team, channel, chat, and unknownFutureValue.
            ## @param value Value to set for the conversation_identity_type property.
            ## @return a void
            ## 
            def conversation_identity_type=(value)
                @conversation_identity_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_conversation_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkConversationIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conversationIdentityType" => lambda {|n| @conversation_identity_type = n.get_enum_value(MicrosoftGraph::Models::TeamworkConversationIdentityType) },
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
                writer.write_enum_value("conversationIdentityType", @conversation_identity_type)
            end
        end
    end
end
