require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConversationMember < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the user.
            @display_name
            ## 
            # The roles for that user. This property only contains additional qualifiers when relevant - for example, if the member has owner privileges, the roles property contains owner as one of the values. Similarly, if the member is a guest, the roles property contains guest as one of the values. A basic member should not have any values specified in the roles property.
            @roles
            ## 
            # The timestamp denoting how far back a conversation's history is shared with the conversation member. This property is settable only for members of a chat.
            @visible_history_start_date_time
            ## 
            ## Instantiates a new conversationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conversation_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.aadUserConversationMember"
                            return AadUserConversationMember.new
                        when "#microsoft.graph.anonymousGuestConversationMember"
                            return AnonymousGuestConversationMember.new
                        when "#microsoft.graph.azureCommunicationServicesUserConversationMember"
                            return AzureCommunicationServicesUserConversationMember.new
                        when "#microsoft.graph.microsoftAccountUserConversationMember"
                            return MicrosoftAccountUserConversationMember.new
                        when "#microsoft.graph.skypeForBusinessUserConversationMember"
                            return SkypeForBusinessUserConversationMember.new
                        when "#microsoft.graph.skypeUserConversationMember"
                            return SkypeUserConversationMember.new
                    end
                end
                return ConversationMember.new
            end
            ## 
            ## Gets the displayName property value. The display name of the user.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the user.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "roles" => lambda {|n| @roles = n.get_collection_of_primitive_values(String) },
                    "visibleHistoryStartDateTime" => lambda {|n| @visible_history_start_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the roles property value. The roles for that user. This property only contains additional qualifiers when relevant - for example, if the member has owner privileges, the roles property contains owner as one of the values. Similarly, if the member is a guest, the roles property contains guest as one of the values. A basic member should not have any values specified in the roles property.
            ## @return a string
            ## 
            def roles
                return @roles
            end
            ## 
            ## Sets the roles property value. The roles for that user. This property only contains additional qualifiers when relevant - for example, if the member has owner privileges, the roles property contains owner as one of the values. Similarly, if the member is a guest, the roles property contains guest as one of the values. A basic member should not have any values specified in the roles property.
            ## @param value Value to set for the roles property.
            ## @return a void
            ## 
            def roles=(value)
                @roles = value
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
                writer.write_collection_of_primitive_values("roles", @roles)
                writer.write_date_time_value("visibleHistoryStartDateTime", @visible_history_start_date_time)
            end
            ## 
            ## Gets the visibleHistoryStartDateTime property value. The timestamp denoting how far back a conversation's history is shared with the conversation member. This property is settable only for members of a chat.
            ## @return a date_time
            ## 
            def visible_history_start_date_time
                return @visible_history_start_date_time
            end
            ## 
            ## Sets the visibleHistoryStartDateTime property value. The timestamp denoting how far back a conversation's history is shared with the conversation member. This property is settable only for members of a chat.
            ## @param value Value to set for the visible_history_start_date_time property.
            ## @return a void
            ## 
            def visible_history_start_date_time=(value)
                @visible_history_start_date_time = value
            end
        end
    end
end
