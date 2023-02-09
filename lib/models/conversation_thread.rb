require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ConversationThread < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Cc: recipients for the thread. Returned only on $select.
            @cc_recipients
            ## 
            # Indicates whether any of the posts within this thread has at least one attachment. Returned by default.
            @has_attachments
            ## 
            # Indicates if the thread is locked. Returned by default.
            @is_locked
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.Returned by default.
            @last_delivered_date_time
            ## 
            # The posts property
            @posts
            ## 
            # A short summary from the body of the latest post in this conversation. Returned by default.
            @preview
            ## 
            # The To: recipients for the thread. Returned only on $select.
            @to_recipients
            ## 
            # The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated. Returned by default.
            @topic
            ## 
            # All the users that sent a message to this thread. Returned by default.
            @unique_senders
            ## 
            ## Gets the ccRecipients property value. The Cc: recipients for the thread. Returned only on $select.
            ## @return a recipient
            ## 
            def cc_recipients
                return @cc_recipients
            end
            ## 
            ## Sets the ccRecipients property value. The Cc: recipients for the thread. Returned only on $select.
            ## @param value Value to set for the cc_recipients property.
            ## @return a void
            ## 
            def cc_recipients=(value)
                @cc_recipients = value
            end
            ## 
            ## Instantiates a new conversationThread and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conversation_thread
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConversationThread.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ccRecipients" => lambda {|n| @cc_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "isLocked" => lambda {|n| @is_locked = n.get_boolean_value() },
                    "lastDeliveredDateTime" => lambda {|n| @last_delivered_date_time = n.get_date_time_value() },
                    "posts" => lambda {|n| @posts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Post.create_from_discriminator_value(pn) }) },
                    "preview" => lambda {|n| @preview = n.get_string_value() },
                    "toRecipients" => lambda {|n| @to_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "topic" => lambda {|n| @topic = n.get_string_value() },
                    "uniqueSenders" => lambda {|n| @unique_senders = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Indicates whether any of the posts within this thread has at least one attachment. Returned by default.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Indicates whether any of the posts within this thread has at least one attachment. Returned by default.
            ## @param value Value to set for the has_attachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the isLocked property value. Indicates if the thread is locked. Returned by default.
            ## @return a boolean
            ## 
            def is_locked
                return @is_locked
            end
            ## 
            ## Sets the isLocked property value. Indicates if the thread is locked. Returned by default.
            ## @param value Value to set for the is_locked property.
            ## @return a void
            ## 
            def is_locked=(value)
                @is_locked = value
            end
            ## 
            ## Gets the lastDeliveredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.Returned by default.
            ## @return a date_time
            ## 
            def last_delivered_date_time
                return @last_delivered_date_time
            end
            ## 
            ## Sets the lastDeliveredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.Returned by default.
            ## @param value Value to set for the last_delivered_date_time property.
            ## @return a void
            ## 
            def last_delivered_date_time=(value)
                @last_delivered_date_time = value
            end
            ## 
            ## Gets the posts property value. The posts property
            ## @return a post
            ## 
            def posts
                return @posts
            end
            ## 
            ## Sets the posts property value. The posts property
            ## @param value Value to set for the posts property.
            ## @return a void
            ## 
            def posts=(value)
                @posts = value
            end
            ## 
            ## Gets the preview property value. A short summary from the body of the latest post in this conversation. Returned by default.
            ## @return a string
            ## 
            def preview
                return @preview
            end
            ## 
            ## Sets the preview property value. A short summary from the body of the latest post in this conversation. Returned by default.
            ## @param value Value to set for the preview property.
            ## @return a void
            ## 
            def preview=(value)
                @preview = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("ccRecipients", @cc_recipients)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_boolean_value("isLocked", @is_locked)
                writer.write_date_time_value("lastDeliveredDateTime", @last_delivered_date_time)
                writer.write_collection_of_object_values("posts", @posts)
                writer.write_string_value("preview", @preview)
                writer.write_collection_of_object_values("toRecipients", @to_recipients)
                writer.write_string_value("topic", @topic)
                writer.write_collection_of_primitive_values("uniqueSenders", @unique_senders)
            end
            ## 
            ## Gets the toRecipients property value. The To: recipients for the thread. Returned only on $select.
            ## @return a recipient
            ## 
            def to_recipients
                return @to_recipients
            end
            ## 
            ## Sets the toRecipients property value. The To: recipients for the thread. Returned only on $select.
            ## @param value Value to set for the to_recipients property.
            ## @return a void
            ## 
            def to_recipients=(value)
                @to_recipients = value
            end
            ## 
            ## Gets the topic property value. The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated. Returned by default.
            ## @return a string
            ## 
            def topic
                return @topic
            end
            ## 
            ## Sets the topic property value. The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated. Returned by default.
            ## @param value Value to set for the topic property.
            ## @return a void
            ## 
            def topic=(value)
                @topic = value
            end
            ## 
            ## Gets the uniqueSenders property value. All the users that sent a message to this thread. Returned by default.
            ## @return a string
            ## 
            def unique_senders
                return @unique_senders
            end
            ## 
            ## Sets the uniqueSenders property value. All the users that sent a message to this thread. Returned by default.
            ## @param value Value to set for the unique_senders property.
            ## @return a void
            ## 
            def unique_senders=(value)
                @unique_senders = value
            end
        end
    end
end
