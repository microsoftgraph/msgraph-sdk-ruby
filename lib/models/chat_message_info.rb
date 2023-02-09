require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatMessageInfo < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Body of the chatMessage. This will still contain markers for @mentions and attachments even though the object does not return @mentions and attachments.
            @body
            ## 
            # Date time object representing the time at which message was created.
            @created_date_time
            ## 
            # Read-only.  If present, represents details of an event that happened in a chat, a channel, or a team, for example, members were added, and so on. For event messages, the messageType property will be set to systemEventMessage.
            @event_detail
            ## 
            # Information about the sender of the message.
            @from
            ## 
            # If set to true, the original message has been deleted.
            @is_deleted
            ## 
            # The messageType property
            @message_type
            ## 
            ## Gets the body property value. Body of the chatMessage. This will still contain markers for @mentions and attachments even though the object does not return @mentions and attachments.
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. Body of the chatMessage. This will still contain markers for @mentions and attachments even though the object does not return @mentions and attachments.
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Instantiates a new chatMessageInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date time object representing the time at which message was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date time object representing the time at which message was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_message_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatMessageInfo.new
            end
            ## 
            ## Gets the eventDetail property value. Read-only.  If present, represents details of an event that happened in a chat, a channel, or a team, for example, members were added, and so on. For event messages, the messageType property will be set to systemEventMessage.
            ## @return a event_message_detail
            ## 
            def event_detail
                return @event_detail
            end
            ## 
            ## Sets the eventDetail property value. Read-only.  If present, represents details of an event that happened in a chat, a channel, or a team, for example, members were added, and so on. For event messages, the messageType property will be set to systemEventMessage.
            ## @param value Value to set for the event_detail property.
            ## @return a void
            ## 
            def event_detail=(value)
                @event_detail = value
            end
            ## 
            ## Gets the from property value. Information about the sender of the message.
            ## @return a chat_message_from_identity_set
            ## 
            def from
                return @from
            end
            ## 
            ## Sets the from property value. Information about the sender of the message.
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
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "eventDetail" => lambda {|n| @event_detail = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EventMessageDetail.create_from_discriminator_value(pn) }) },
                    "from" => lambda {|n| @from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatMessageFromIdentitySet.create_from_discriminator_value(pn) }) },
                    "isDeleted" => lambda {|n| @is_deleted = n.get_boolean_value() },
                    "messageType" => lambda {|n| @message_type = n.get_enum_value(MicrosoftGraph::Models::ChatMessageType) },
                })
            end
            ## 
            ## Gets the isDeleted property value. If set to true, the original message has been deleted.
            ## @return a boolean
            ## 
            def is_deleted
                return @is_deleted
            end
            ## 
            ## Sets the isDeleted property value. If set to true, the original message has been deleted.
            ## @param value Value to set for the is_deleted property.
            ## @return a void
            ## 
            def is_deleted=(value)
                @is_deleted = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("body", @body)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("eventDetail", @event_detail)
                writer.write_object_value("from", @from)
                writer.write_boolean_value("isDeleted", @is_deleted)
                writer.write_enum_value("messageType", @message_type)
            end
        end
    end
end
