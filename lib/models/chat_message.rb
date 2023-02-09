require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessage < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # References to attached objects like files, tabs, meetings etc.
            @attachments
            ## 
            # The body property
            @body
            ## 
            # If the message was sent in a channel, represents identity of the channel.
            @channel_identity
            ## 
            # If the message was sent in a chat, represents the identity of the chat.
            @chat_id
            ## 
            # Timestamp of when the chat message was created.
            @created_date_time
            ## 
            # Read only. Timestamp at which the chat message was deleted, or null if not deleted.
            @deleted_date_time
            ## 
            # Read-only. Version number of the chat message.
            @etag
            ## 
            # Read-only. If present, represents details of an event that happened in a chat, a channel, or a team, for example, adding new members. For event messages, the messageType property will be set to systemEventMessage.
            @event_detail
            ## 
            # Details of the sender of the chat message. Can only be set during migration.
            @from
            ## 
            # Content in a message hosted by Microsoft Teams - for example, images or code snippets.
            @hosted_contents
            ## 
            # The importance property
            @importance
            ## 
            # Read only. Timestamp when edits to the chat message were made. Triggers an 'Edited' flag in the Teams UI. If no edits are made the value is null.
            @last_edited_date_time
            ## 
            # Read only. Timestamp when the chat message is created (initial setting) or modified, including when a reaction is added or removed.
            @last_modified_date_time
            ## 
            # Locale of the chat message set by the client. Always set to en-us.
            @locale
            ## 
            # List of entities mentioned in the chat message. Supported entities are: user, bot, team, and channel.
            @mentions
            ## 
            # The messageType property
            @message_type
            ## 
            # Defines the properties of a policy violation set by a data loss prevention (DLP) application.
            @policy_violation
            ## 
            # Reactions for this chat message (for example, Like).
            @reactions
            ## 
            # Replies for a specified message. Supports $expand for channel messages.
            @replies
            ## 
            # Read-only. ID of the parent chat message or root chat message of the thread. (Only applies to chat messages in channels, not chats.)
            @reply_to_id
            ## 
            # The subject of the chat message, in plaintext.
            @subject
            ## 
            # Summary text of the chat message that could be used for push notifications and summary views or fall back views. Only applies to channel chat messages, not chat messages in a chat.
            @summary
            ## 
            # Read-only. Link to the message in Microsoft Teams.
            @web_url
            ## 
            ## Gets the attachments property value. References to attached objects like files, tabs, meetings etc.
            ## @return a chat_message_attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. References to attached objects like files, tabs, meetings etc.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the body property value. The body property
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The body property
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Gets the channelIdentity property value. If the message was sent in a channel, represents identity of the channel.
            ## @return a channel_identity
            ## 
            def channel_identity
                return @channel_identity
            end
            ## 
            ## Sets the channelIdentity property value. If the message was sent in a channel, represents identity of the channel.
            ## @param value Value to set for the channel_identity property.
            ## @return a void
            ## 
            def channel_identity=(value)
                @channel_identity = value
            end
            ## 
            ## Gets the chatId property value. If the message was sent in a chat, represents the identity of the chat.
            ## @return a string
            ## 
            def chat_id
                return @chat_id
            end
            ## 
            ## Sets the chatId property value. If the message was sent in a chat, represents the identity of the chat.
            ## @param value Value to set for the chat_id property.
            ## @return a void
            ## 
            def chat_id=(value)
                @chat_id = value
            end
            ## 
            ## Instantiates a new chatMessage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp of when the chat message was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp of when the chat message was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessage.new
            end
            ## 
            ## Gets the deletedDateTime property value. Read only. Timestamp at which the chat message was deleted, or null if not deleted.
            ## @return a date_time
            ## 
            def deleted_date_time
                return @deleted_date_time
            end
            ## 
            ## Sets the deletedDateTime property value. Read only. Timestamp at which the chat message was deleted, or null if not deleted.
            ## @param value Value to set for the deleted_date_time property.
            ## @return a void
            ## 
            def deleted_date_time=(value)
                @deleted_date_time = value
            end
            ## 
            ## Gets the etag property value. Read-only. Version number of the chat message.
            ## @return a string
            ## 
            def etag
                return @etag
            end
            ## 
            ## Sets the etag property value. Read-only. Version number of the chat message.
            ## @param value Value to set for the etag property.
            ## @return a void
            ## 
            def etag=(value)
                @etag = value
            end
            ## 
            ## Gets the eventDetail property value. Read-only. If present, represents details of an event that happened in a chat, a channel, or a team, for example, adding new members. For event messages, the messageType property will be set to systemEventMessage.
            ## @return a event_message_detail
            ## 
            def event_detail
                return @event_detail
            end
            ## 
            ## Sets the eventDetail property value. Read-only. If present, represents details of an event that happened in a chat, a channel, or a team, for example, adding new members. For event messages, the messageType property will be set to systemEventMessage.
            ## @param value Value to set for the event_detail property.
            ## @return a void
            ## 
            def event_detail=(value)
                @event_detail = value
            end
            ## 
            ## Gets the from property value. Details of the sender of the chat message. Can only be set during migration.
            ## @return a chat_message_from_identity_set
            ## 
            def from
                return @from
            end
            ## 
            ## Sets the from property value. Details of the sender of the chat message. Can only be set during migration.
            ## @param value Value to set for the from property.
            ## @return a void
            ## 
            def from=(value)
                @from = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessageAttachment.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "channelIdentity" => lambda {|n| @channel_identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChannelIdentity.create_from_discriminator_value(pn) }) },
                    "chatId" => lambda {|n| @chat_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deletedDateTime" => lambda {|n| @deleted_date_time = n.get_date_time_value() },
                    "etag" => lambda {|n| @etag = n.get_string_value() },
                    "eventDetail" => lambda {|n| @event_detail = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EventMessageDetail.create_from_discriminator_value(pn) }) },
                    "from" => lambda {|n| @from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessageFromIdentitySet.create_from_discriminator_value(pn) }) },
                    "hostedContents" => lambda {|n| @hosted_contents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessageHostedContent.create_from_discriminator_value(pn) }) },
                    "importance" => lambda {|n| @importance = n.get_enum_value(MicrosoftGraph::Models::ChatMessageImportance) },
                    "lastEditedDateTime" => lambda {|n| @last_edited_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                    "mentions" => lambda {|n| @mentions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessageMention.create_from_discriminator_value(pn) }) },
                    "messageType" => lambda {|n| @message_type = n.get_enum_value(MicrosoftGraph::Models::ChatMessageType) },
                    "policyViolation" => lambda {|n| @policy_violation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessagePolicyViolation.create_from_discriminator_value(pn) }) },
                    "reactions" => lambda {|n| @reactions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessageReaction.create_from_discriminator_value(pn) }) },
                    "replies" => lambda {|n| @replies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessage.create_from_discriminator_value(pn) }) },
                    "replyToId" => lambda {|n| @reply_to_id = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "summary" => lambda {|n| @summary = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hostedContents property value. Content in a message hosted by Microsoft Teams - for example, images or code snippets.
            ## @return a chat_message_hosted_content
            ## 
            def hosted_contents
                return @hosted_contents
            end
            ## 
            ## Sets the hostedContents property value. Content in a message hosted by Microsoft Teams - for example, images or code snippets.
            ## @param value Value to set for the hosted_contents property.
            ## @return a void
            ## 
            def hosted_contents=(value)
                @hosted_contents = value
            end
            ## 
            ## Gets the importance property value. The importance property
            ## @return a chat_message_importance
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance property
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
            end
            ## 
            ## Gets the lastEditedDateTime property value. Read only. Timestamp when edits to the chat message were made. Triggers an 'Edited' flag in the Teams UI. If no edits are made the value is null.
            ## @return a date_time
            ## 
            def last_edited_date_time
                return @last_edited_date_time
            end
            ## 
            ## Sets the lastEditedDateTime property value. Read only. Timestamp when edits to the chat message were made. Triggers an 'Edited' flag in the Teams UI. If no edits are made the value is null.
            ## @param value Value to set for the last_edited_date_time property.
            ## @return a void
            ## 
            def last_edited_date_time=(value)
                @last_edited_date_time = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Read only. Timestamp when the chat message is created (initial setting) or modified, including when a reaction is added or removed.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Read only. Timestamp when the chat message is created (initial setting) or modified, including when a reaction is added or removed.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the locale property value. Locale of the chat message set by the client. Always set to en-us.
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. Locale of the chat message set by the client. Always set to en-us.
            ## @param value Value to set for the locale property.
            ## @return a void
            ## 
            def locale=(value)
                @locale = value
            end
            ## 
            ## Gets the mentions property value. List of entities mentioned in the chat message. Supported entities are: user, bot, team, and channel.
            ## @return a chat_message_mention
            ## 
            def mentions
                return @mentions
            end
            ## 
            ## Sets the mentions property value. List of entities mentioned in the chat message. Supported entities are: user, bot, team, and channel.
            ## @param value Value to set for the mentions property.
            ## @return a void
            ## 
            def mentions=(value)
                @mentions = value
            end
            ## 
            ## Gets the messageType property value. The messageType property
            ## @return a chat_message_type
            ## 
            def message_type
                return @message_type
            end
            ## 
            ## Sets the messageType property value. The messageType property
            ## @param value Value to set for the message_type property.
            ## @return a void
            ## 
            def message_type=(value)
                @message_type = value
            end
            ## 
            ## Gets the policyViolation property value. Defines the properties of a policy violation set by a data loss prevention (DLP) application.
            ## @return a chat_message_policy_violation
            ## 
            def policy_violation
                return @policy_violation
            end
            ## 
            ## Sets the policyViolation property value. Defines the properties of a policy violation set by a data loss prevention (DLP) application.
            ## @param value Value to set for the policy_violation property.
            ## @return a void
            ## 
            def policy_violation=(value)
                @policy_violation = value
            end
            ## 
            ## Gets the reactions property value. Reactions for this chat message (for example, Like).
            ## @return a chat_message_reaction
            ## 
            def reactions
                return @reactions
            end
            ## 
            ## Sets the reactions property value. Reactions for this chat message (for example, Like).
            ## @param value Value to set for the reactions property.
            ## @return a void
            ## 
            def reactions=(value)
                @reactions = value
            end
            ## 
            ## Gets the replies property value. Replies for a specified message. Supports $expand for channel messages.
            ## @return a chat_message
            ## 
            def replies
                return @replies
            end
            ## 
            ## Sets the replies property value. Replies for a specified message. Supports $expand for channel messages.
            ## @param value Value to set for the replies property.
            ## @return a void
            ## 
            def replies=(value)
                @replies = value
            end
            ## 
            ## Gets the replyToId property value. Read-only. ID of the parent chat message or root chat message of the thread. (Only applies to chat messages in channels, not chats.)
            ## @return a string
            ## 
            def reply_to_id
                return @reply_to_id
            end
            ## 
            ## Sets the replyToId property value. Read-only. ID of the parent chat message or root chat message of the thread. (Only applies to chat messages in channels, not chats.)
            ## @param value Value to set for the reply_to_id property.
            ## @return a void
            ## 
            def reply_to_id=(value)
                @reply_to_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_object_value("body", @body)
                writer.write_object_value("channelIdentity", @channel_identity)
                writer.write_string_value("chatId", @chat_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("deletedDateTime", @deleted_date_time)
                writer.write_string_value("etag", @etag)
                writer.write_object_value("eventDetail", @event_detail)
                writer.write_object_value("from", @from)
                writer.write_collection_of_object_values("hostedContents", @hosted_contents)
                writer.write_enum_value("importance", @importance)
                writer.write_date_time_value("lastEditedDateTime", @last_edited_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("locale", @locale)
                writer.write_collection_of_object_values("mentions", @mentions)
                writer.write_enum_value("messageType", @message_type)
                writer.write_object_value("policyViolation", @policy_violation)
                writer.write_collection_of_object_values("reactions", @reactions)
                writer.write_collection_of_object_values("replies", @replies)
                writer.write_string_value("replyToId", @reply_to_id)
                writer.write_string_value("subject", @subject)
                writer.write_string_value("summary", @summary)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the subject property value. The subject of the chat message, in plaintext.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject of the chat message, in plaintext.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the summary property value. Summary text of the chat message that could be used for push notifications and summary views or fall back views. Only applies to channel chat messages, not chat messages in a chat.
            ## @return a string
            ## 
            def summary
                return @summary
            end
            ## 
            ## Sets the summary property value. Summary text of the chat message that could be used for push notifications and summary views or fall back views. Only applies to channel chat messages, not chat messages in a chat.
            ## @param value Value to set for the summary property.
            ## @return a void
            ## 
            def summary=(value)
                @summary = value
            end
            ## 
            ## Gets the webUrl property value. Read-only. Link to the message in Microsoft Teams.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Read-only. Link to the message in Microsoft Teams.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
