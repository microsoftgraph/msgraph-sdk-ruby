require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Post < MicrosoftGraph::Models::OutlookItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Nullable. Supports $expand.
            @attachments
            ## 
            # The contents of the post. This is a default property. This property can be null.
            @body
            ## 
            # Unique ID of the conversation. Read-only.
            @conversation_id
            ## 
            # Unique ID of the conversation thread. Read-only.
            @conversation_thread_id
            ## 
            # The collection of open extensions defined for the post. Read-only. Nullable. Supports $expand.
            @extensions
            ## 
            # The from property
            @from
            ## 
            # Indicates whether the post has at least one attachment. This is a default property.
            @has_attachments
            ## 
            # Read-only. Supports $expand.
            @in_reply_to
            ## 
            # The collection of multi-value extended properties defined for the post. Read-only. Nullable.
            @multi_value_extended_properties
            ## 
            # Conversation participants that were added to the thread as part of this post.
            @new_participants
            ## 
            # Specifies when the post was received. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @received_date_time
            ## 
            # Contains the address of the sender. The value of Sender is assumed to be the address of the authenticated user in the case when Sender is not specified. This is a default property.
            @sender
            ## 
            # The collection of single-value extended properties defined for the post. Read-only. Nullable.
            @single_value_extended_properties
            ## 
            ## Gets the attachments property value. Read-only. Nullable. Supports $expand.
            ## @return a attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the body property value. The contents of the post. This is a default property. This property can be null.
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The contents of the post. This is a default property. This property can be null.
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Instantiates a new Post and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.post"
            end
            ## 
            ## Gets the conversationId property value. Unique ID of the conversation. Read-only.
            ## @return a string
            ## 
            def conversation_id
                return @conversation_id
            end
            ## 
            ## Sets the conversationId property value. Unique ID of the conversation. Read-only.
            ## @param value Value to set for the conversation_id property.
            ## @return a void
            ## 
            def conversation_id=(value)
                @conversation_id = value
            end
            ## 
            ## Gets the conversationThreadId property value. Unique ID of the conversation thread. Read-only.
            ## @return a string
            ## 
            def conversation_thread_id
                return @conversation_thread_id
            end
            ## 
            ## Sets the conversationThreadId property value. Unique ID of the conversation thread. Read-only.
            ## @param value Value to set for the conversation_thread_id property.
            ## @return a void
            ## 
            def conversation_thread_id=(value)
                @conversation_thread_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a post
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Post.new
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the post. Read-only. Nullable. Supports $expand.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the post. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## Gets the from property value. The from property
            ## @return a recipient
            ## 
            def from
                return @from
            end
            ## 
            ## Sets the from property value. The from property
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
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Attachment.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "conversationId" => lambda {|n| @conversation_id = n.get_string_value() },
                    "conversationThreadId" => lambda {|n| @conversation_thread_id = n.get_string_value() },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "from" => lambda {|n| @from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "inReplyTo" => lambda {|n| @in_reply_to = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Post.create_from_discriminator_value(pn) }) },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "newParticipants" => lambda {|n| @new_participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "receivedDateTime" => lambda {|n| @received_date_time = n.get_date_time_value() },
                    "sender" => lambda {|n| @sender = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Indicates whether the post has at least one attachment. This is a default property.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Indicates whether the post has at least one attachment. This is a default property.
            ## @param value Value to set for the has_attachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the inReplyTo property value. Read-only. Supports $expand.
            ## @return a post
            ## 
            def in_reply_to
                return @in_reply_to
            end
            ## 
            ## Sets the inReplyTo property value. Read-only. Supports $expand.
            ## @param value Value to set for the in_reply_to property.
            ## @return a void
            ## 
            def in_reply_to=(value)
                @in_reply_to = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the post. Read-only. Nullable.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the post. Read-only. Nullable.
            ## @param value Value to set for the multi_value_extended_properties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the newParticipants property value. Conversation participants that were added to the thread as part of this post.
            ## @return a recipient
            ## 
            def new_participants
                return @new_participants
            end
            ## 
            ## Sets the newParticipants property value. Conversation participants that were added to the thread as part of this post.
            ## @param value Value to set for the new_participants property.
            ## @return a void
            ## 
            def new_participants=(value)
                @new_participants = value
            end
            ## 
            ## Gets the receivedDateTime property value. Specifies when the post was received. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def received_date_time
                return @received_date_time
            end
            ## 
            ## Sets the receivedDateTime property value. Specifies when the post was received. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the received_date_time property.
            ## @return a void
            ## 
            def received_date_time=(value)
                @received_date_time = value
            end
            ## 
            ## Gets the sender property value. Contains the address of the sender. The value of Sender is assumed to be the address of the authenticated user in the case when Sender is not specified. This is a default property.
            ## @return a recipient
            ## 
            def sender
                return @sender
            end
            ## 
            ## Sets the sender property value. Contains the address of the sender. The value of Sender is assumed to be the address of the authenticated user in the case when Sender is not specified. This is a default property.
            ## @param value Value to set for the sender property.
            ## @return a void
            ## 
            def sender=(value)
                @sender = value
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
                writer.write_string_value("conversationId", @conversation_id)
                writer.write_string_value("conversationThreadId", @conversation_thread_id)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_object_value("from", @from)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_object_value("inReplyTo", @in_reply_to)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_collection_of_object_values("newParticipants", @new_participants)
                writer.write_date_time_value("receivedDateTime", @received_date_time)
                writer.write_object_value("sender", @sender)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the post. Read-only. Nullable.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the post. Read-only. Nullable.
            ## @param value Value to set for the single_value_extended_properties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
        end
    end
end
