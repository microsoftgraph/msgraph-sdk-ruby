require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Conversation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether any of the posts within this Conversation has at least one attachment. Supports $filter (eq, ne) and $search.
            @has_attachments
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @last_delivered_date_time
            ## 
            # A short summary from the body of the latest post in this conversation. Supports $filter (eq, ne, le, ge).
            @preview
            ## 
            # A collection of all the conversation threads in the conversation. A navigation property. Read-only. Nullable.
            @threads
            ## 
            # The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated.
            @topic
            ## 
            # All the users that sent a message to this Conversation.
            @unique_senders
            ## 
            ## Instantiates a new conversation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a conversation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Conversation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "lastDeliveredDateTime" => lambda {|n| @last_delivered_date_time = n.get_date_time_value() },
                    "preview" => lambda {|n| @preview = n.get_string_value() },
                    "threads" => lambda {|n| @threads = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConversationThread.create_from_discriminator_value(pn) }) },
                    "topic" => lambda {|n| @topic = n.get_string_value() },
                    "uniqueSenders" => lambda {|n| @unique_senders = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Indicates whether any of the posts within this Conversation has at least one attachment. Supports $filter (eq, ne) and $search.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Indicates whether any of the posts within this Conversation has at least one attachment. Supports $filter (eq, ne) and $search.
            ## @param value Value to set for the has_attachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the lastDeliveredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def last_delivered_date_time
                return @last_delivered_date_time
            end
            ## 
            ## Sets the lastDeliveredDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the last_delivered_date_time property.
            ## @return a void
            ## 
            def last_delivered_date_time=(value)
                @last_delivered_date_time = value
            end
            ## 
            ## Gets the preview property value. A short summary from the body of the latest post in this conversation. Supports $filter (eq, ne, le, ge).
            ## @return a string
            ## 
            def preview
                return @preview
            end
            ## 
            ## Sets the preview property value. A short summary from the body of the latest post in this conversation. Supports $filter (eq, ne, le, ge).
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
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_date_time_value("lastDeliveredDateTime", @last_delivered_date_time)
                writer.write_string_value("preview", @preview)
                writer.write_collection_of_object_values("threads", @threads)
                writer.write_string_value("topic", @topic)
                writer.write_collection_of_primitive_values("uniqueSenders", @unique_senders)
            end
            ## 
            ## Gets the threads property value. A collection of all the conversation threads in the conversation. A navigation property. Read-only. Nullable.
            ## @return a conversation_thread
            ## 
            def threads
                return @threads
            end
            ## 
            ## Sets the threads property value. A collection of all the conversation threads in the conversation. A navigation property. Read-only. Nullable.
            ## @param value Value to set for the threads property.
            ## @return a void
            ## 
            def threads=(value)
                @threads = value
            end
            ## 
            ## Gets the topic property value. The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated.
            ## @return a string
            ## 
            def topic
                return @topic
            end
            ## 
            ## Sets the topic property value. The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated.
            ## @param value Value to set for the topic property.
            ## @return a void
            ## 
            def topic=(value)
                @topic = value
            end
            ## 
            ## Gets the uniqueSenders property value. All the users that sent a message to this Conversation.
            ## @return a string
            ## 
            def unique_senders
                return @unique_senders
            end
            ## 
            ## Sets the uniqueSenders property value. All the users that sent a message to this Conversation.
            ## @param value Value to set for the unique_senders property.
            ## @return a void
            ## 
            def unique_senders=(value)
                @unique_senders = value
            end
        end
    end
end
