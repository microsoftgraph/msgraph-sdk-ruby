require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Chat < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The chatType property
            @chat_type
            ## 
            # Date and time at which the chat was created. Read-only.
            @created_date_time
            ## 
            # A collection of all the apps in the chat. Nullable.
            @installed_apps
            ## 
            # Preview of the last message sent in the chat. Null if no messages have been sent in the chat. Currently, only the list chats operation supports this property.
            @last_message_preview
            ## 
            # Date and time at which the chat was renamed or list of members were last changed. Read-only.
            @last_updated_date_time
            ## 
            # A collection of all the members in the chat. Nullable.
            @members
            ## 
            # A collection of all the messages in the chat. Nullable.
            @messages
            ## 
            # Represents details about an online meeting. If the chat isn't associated with an online meeting, the property is empty. Read-only.
            @online_meeting_info
            ## 
            # A collection of all the pinned messages in the chat. Nullable.
            @pinned_messages
            ## 
            # A collection of all the tabs in the chat. Nullable.
            @tabs
            ## 
            # The identifier of the tenant in which the chat was created. Read-only.
            @tenant_id
            ## 
            # (Optional) Subject or topic for the chat. Only available for group chats.
            @topic
            ## 
            # Represents caller-specific information about the chat, such as last message read date and time. This property is populated only when the request is made in a delegated context.
            @viewpoint
            ## 
            # The URL for the chat in Microsoft Teams. The URL should be treated as an opaque blob, and not parsed. Read-only.
            @web_url
            ## 
            ## Gets the chatType property value. The chatType property
            ## @return a chat_type
            ## 
            def chat_type
                return @chat_type
            end
            ## 
            ## Sets the chatType property value. The chatType property
            ## @param value Value to set for the chat_type property.
            ## @return a void
            ## 
            def chat_type=(value)
                @chat_type = value
            end
            ## 
            ## Instantiates a new chat and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date and time at which the chat was created. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time at which the chat was created. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Chat.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "chatType" => lambda {|n| @chat_type = n.get_enum_value(MicrosoftGraph::Models::ChatType) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "installedApps" => lambda {|n| @installed_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamsAppInstallation.create_from_discriminator_value(pn) }) },
                    "lastMessagePreview" => lambda {|n| @last_message_preview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessageInfo.create_from_discriminator_value(pn) }) },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConversationMember.create_from_discriminator_value(pn) }) },
                    "messages" => lambda {|n| @messages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessage.create_from_discriminator_value(pn) }) },
                    "onlineMeetingInfo" => lambda {|n| @online_meeting_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkOnlineMeetingInfo.create_from_discriminator_value(pn) }) },
                    "pinnedMessages" => lambda {|n| @pinned_messages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PinnedChatMessageInfo.create_from_discriminator_value(pn) }) },
                    "tabs" => lambda {|n| @tabs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamsTab.create_from_discriminator_value(pn) }) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "topic" => lambda {|n| @topic = n.get_string_value() },
                    "viewpoint" => lambda {|n| @viewpoint = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatViewpoint.create_from_discriminator_value(pn) }) },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the installedApps property value. A collection of all the apps in the chat. Nullable.
            ## @return a teams_app_installation
            ## 
            def installed_apps
                return @installed_apps
            end
            ## 
            ## Sets the installedApps property value. A collection of all the apps in the chat. Nullable.
            ## @param value Value to set for the installed_apps property.
            ## @return a void
            ## 
            def installed_apps=(value)
                @installed_apps = value
            end
            ## 
            ## Gets the lastMessagePreview property value. Preview of the last message sent in the chat. Null if no messages have been sent in the chat. Currently, only the list chats operation supports this property.
            ## @return a chat_message_info
            ## 
            def last_message_preview
                return @last_message_preview
            end
            ## 
            ## Sets the lastMessagePreview property value. Preview of the last message sent in the chat. Null if no messages have been sent in the chat. Currently, only the list chats operation supports this property.
            ## @param value Value to set for the last_message_preview property.
            ## @return a void
            ## 
            def last_message_preview=(value)
                @last_message_preview = value
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. Date and time at which the chat was renamed or list of members were last changed. Read-only.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. Date and time at which the chat was renamed or list of members were last changed. Read-only.
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the members property value. A collection of all the members in the chat. Nullable.
            ## @return a conversation_member
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. A collection of all the members in the chat. Nullable.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the messages property value. A collection of all the messages in the chat. Nullable.
            ## @return a chat_message
            ## 
            def messages
                return @messages
            end
            ## 
            ## Sets the messages property value. A collection of all the messages in the chat. Nullable.
            ## @param value Value to set for the messages property.
            ## @return a void
            ## 
            def messages=(value)
                @messages = value
            end
            ## 
            ## Gets the onlineMeetingInfo property value. Represents details about an online meeting. If the chat isn't associated with an online meeting, the property is empty. Read-only.
            ## @return a teamwork_online_meeting_info
            ## 
            def online_meeting_info
                return @online_meeting_info
            end
            ## 
            ## Sets the onlineMeetingInfo property value. Represents details about an online meeting. If the chat isn't associated with an online meeting, the property is empty. Read-only.
            ## @param value Value to set for the online_meeting_info property.
            ## @return a void
            ## 
            def online_meeting_info=(value)
                @online_meeting_info = value
            end
            ## 
            ## Gets the pinnedMessages property value. A collection of all the pinned messages in the chat. Nullable.
            ## @return a pinned_chat_message_info
            ## 
            def pinned_messages
                return @pinned_messages
            end
            ## 
            ## Sets the pinnedMessages property value. A collection of all the pinned messages in the chat. Nullable.
            ## @param value Value to set for the pinned_messages property.
            ## @return a void
            ## 
            def pinned_messages=(value)
                @pinned_messages = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("chatType", @chat_type)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("installedApps", @installed_apps)
                writer.write_object_value("lastMessagePreview", @last_message_preview)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_collection_of_object_values("members", @members)
                writer.write_collection_of_object_values("messages", @messages)
                writer.write_object_value("onlineMeetingInfo", @online_meeting_info)
                writer.write_collection_of_object_values("pinnedMessages", @pinned_messages)
                writer.write_collection_of_object_values("tabs", @tabs)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("topic", @topic)
                writer.write_object_value("viewpoint", @viewpoint)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the tabs property value. A collection of all the tabs in the chat. Nullable.
            ## @return a teams_tab
            ## 
            def tabs
                return @tabs
            end
            ## 
            ## Sets the tabs property value. A collection of all the tabs in the chat. Nullable.
            ## @param value Value to set for the tabs property.
            ## @return a void
            ## 
            def tabs=(value)
                @tabs = value
            end
            ## 
            ## Gets the tenantId property value. The identifier of the tenant in which the chat was created. Read-only.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The identifier of the tenant in which the chat was created. Read-only.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the topic property value. (Optional) Subject or topic for the chat. Only available for group chats.
            ## @return a string
            ## 
            def topic
                return @topic
            end
            ## 
            ## Sets the topic property value. (Optional) Subject or topic for the chat. Only available for group chats.
            ## @param value Value to set for the topic property.
            ## @return a void
            ## 
            def topic=(value)
                @topic = value
            end
            ## 
            ## Gets the viewpoint property value. Represents caller-specific information about the chat, such as last message read date and time. This property is populated only when the request is made in a delegated context.
            ## @return a chat_viewpoint
            ## 
            def viewpoint
                return @viewpoint
            end
            ## 
            ## Sets the viewpoint property value. Represents caller-specific information about the chat, such as last message read date and time. This property is populated only when the request is made in a delegated context.
            ## @param value Value to set for the viewpoint property.
            ## @return a void
            ## 
            def viewpoint=(value)
                @viewpoint = value
            end
            ## 
            ## Gets the webUrl property value. The URL for the chat in Microsoft Teams. The URL should be treated as an opaque blob, and not parsed. Read-only.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. The URL for the chat in Microsoft Teams. The URL should be treated as an opaque blob, and not parsed. Read-only.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
