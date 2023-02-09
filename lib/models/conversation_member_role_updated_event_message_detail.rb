require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConversationMemberRoleUpdatedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Roles for the coversation member user.
            @conversation_member_roles
            ## 
            # Identity of the conversation member user.
            @conversation_member_user
            ## 
            # Initiator of the event.
            @initiator
            ## 
            ## Instantiates a new ConversationMemberRoleUpdatedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.conversationMemberRoleUpdatedEventMessageDetail"
            end
            ## 
            ## Gets the conversationMemberRoles property value. Roles for the coversation member user.
            ## @return a string
            ## 
            def conversation_member_roles
                return @conversation_member_roles
            end
            ## 
            ## Sets the conversationMemberRoles property value. Roles for the coversation member user.
            ## @param value Value to set for the conversation_member_roles property.
            ## @return a void
            ## 
            def conversation_member_roles=(value)
                @conversation_member_roles = value
            end
            ## 
            ## Gets the conversationMemberUser property value. Identity of the conversation member user.
            ## @return a teamwork_user_identity
            ## 
            def conversation_member_user
                return @conversation_member_user
            end
            ## 
            ## Sets the conversationMemberUser property value. Identity of the conversation member user.
            ## @param value Value to set for the conversation_member_user property.
            ## @return a void
            ## 
            def conversation_member_user=(value)
                @conversation_member_user = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conversation_member_role_updated_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConversationMemberRoleUpdatedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conversationMemberRoles" => lambda {|n| @conversation_member_roles = n.get_collection_of_primitive_values(String) },
                    "conversationMemberUser" => lambda {|n| @conversation_member_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkUserIdentity.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_primitive_values("conversationMemberRoles", @conversation_member_roles)
                writer.write_object_value("conversationMemberUser", @conversation_member_user)
                writer.write_object_value("initiator", @initiator)
            end
        end
    end
end
