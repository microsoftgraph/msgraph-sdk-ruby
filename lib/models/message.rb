require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Message < MicrosoftGraph::Models::OutlookItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The fileAttachment and itemAttachment attachments for the message.
            @attachments
            ## 
            # The Bcc: recipients for the message.
            @bcc_recipients
            ## 
            # The body of the message. It can be in HTML or text format. Find out about safe HTML in a message body.
            @body
            ## 
            # The first 255 characters of the message body. It is in text format.
            @body_preview
            ## 
            # The Cc: recipients for the message.
            @cc_recipients
            ## 
            # The ID of the conversation the email belongs to.
            @conversation_id
            ## 
            # Indicates the position of the message within the conversation.
            @conversation_index
            ## 
            # The collection of open extensions defined for the message. Nullable.
            @extensions
            ## 
            # Indicates the status, start date, due date, or completion date for the message.
            @flag
            ## 
            # The owner of the mailbox from which the message is sent. In most cases, this value is the same as the sender property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about setting the from and sender properties of a message.
            @from
            ## 
            # Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
            @has_attachments
            ## 
            # The importance of the message. The possible values are: low, normal, and high.
            @importance
            ## 
            # The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. The possible values are: focused or other.
            @inference_classification
            ## 
            # A collection of message headers defined by RFC5322. The set includes message headers indicating the network path taken by a message from the sender to the recipient. It can also contain custom message headers that hold app data for the message.  Returned only on applying a $select query option. Read-only.
            @internet_message_headers
            ## 
            # The message ID in the format specified by RFC2822.
            @internet_message_id
            ## 
            # Indicates whether a read receipt is requested for the message.
            @is_delivery_receipt_requested
            ## 
            # Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.
            @is_draft
            ## 
            # Indicates whether the message has been read.
            @is_read
            ## 
            # Indicates whether a read receipt is requested for the message.
            @is_read_receipt_requested
            ## 
            # The collection of multi-value extended properties defined for the message. Nullable.
            @multi_value_extended_properties
            ## 
            # The unique identifier for the message's parent mailFolder.
            @parent_folder_id
            ## 
            # The date and time the message was received.  The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @received_date_time
            ## 
            # The email addresses to use when replying.
            @reply_to
            ## 
            # The account that is used to generate the message. In most cases, this value is the same as the from property. You can set this property to a different value when sending a message from a shared mailbox, for a shared calendar, or as a delegate. In any case, the value must correspond to the actual mailbox used. Find out more about setting the from and sender properties of a message.
            @sender
            ## 
            # The date and time the message was sent.  The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @sent_date_time
            ## 
            # The collection of single-value extended properties defined for the message. Nullable.
            @single_value_extended_properties
            ## 
            # The subject of the message.
            @subject
            ## 
            # The To: recipients for the message.
            @to_recipients
            ## 
            # The part of the body of the message that is unique to the current message. uniqueBody is not returned by default but can be retrieved for a given message by use of the ?$select=uniqueBody query. It can be in HTML or text format.
            @unique_body
            ## 
            # The URL to open the message in Outlook on the web.You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, the browser shows the message in the Outlook on the web review pane.The message opens in the browser if you are signed in to your mailbox via Outlook on the web. You are prompted to sign in if you are not already signed in with the browser.This URL cannot be accessed from within an iFrame.
            @web_link
            ## 
            ## Gets the attachments property value. The fileAttachment and itemAttachment attachments for the message.
            ## @return a attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. The fileAttachment and itemAttachment attachments for the message.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the bccRecipients property value. The Bcc: recipients for the message.
            ## @return a recipient
            ## 
            def bcc_recipients
                return @bcc_recipients
            end
            ## 
            ## Sets the bccRecipients property value. The Bcc: recipients for the message.
            ## @param value Value to set for the bccRecipients property.
            ## @return a void
            ## 
            def bcc_recipients=(value)
                @bcc_recipients = value
            end
            ## 
            ## Gets the body property value. The body of the message. It can be in HTML or text format. Find out about safe HTML in a message body.
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The body of the message. It can be in HTML or text format. Find out about safe HTML in a message body.
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Gets the bodyPreview property value. The first 255 characters of the message body. It is in text format.
            ## @return a string
            ## 
            def body_preview
                return @body_preview
            end
            ## 
            ## Sets the bodyPreview property value. The first 255 characters of the message body. It is in text format.
            ## @param value Value to set for the bodyPreview property.
            ## @return a void
            ## 
            def body_preview=(value)
                @body_preview = value
            end
            ## 
            ## Gets the ccRecipients property value. The Cc: recipients for the message.
            ## @return a recipient
            ## 
            def cc_recipients
                return @cc_recipients
            end
            ## 
            ## Sets the ccRecipients property value. The Cc: recipients for the message.
            ## @param value Value to set for the ccRecipients property.
            ## @return a void
            ## 
            def cc_recipients=(value)
                @cc_recipients = value
            end
            ## 
            ## Instantiates a new Message and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.message"
            end
            ## 
            ## Gets the conversationId property value. The ID of the conversation the email belongs to.
            ## @return a string
            ## 
            def conversation_id
                return @conversation_id
            end
            ## 
            ## Sets the conversationId property value. The ID of the conversation the email belongs to.
            ## @param value Value to set for the conversationId property.
            ## @return a void
            ## 
            def conversation_id=(value)
                @conversation_id = value
            end
            ## 
            ## Gets the conversationIndex property value. Indicates the position of the message within the conversation.
            ## @return a base64url
            ## 
            def conversation_index
                return @conversation_index
            end
            ## 
            ## Sets the conversationIndex property value. Indicates the position of the message within the conversation.
            ## @param value Value to set for the conversationIndex property.
            ## @return a void
            ## 
            def conversation_index=(value)
                @conversation_index = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.calendarSharingMessage"
                            return CalendarSharingMessage.new
                        when "#microsoft.graph.eventMessage"
                            return EventMessage.new
                        when "#microsoft.graph.eventMessageRequest"
                            return EventMessageRequest.new
                        when "#microsoft.graph.eventMessageResponse"
                            return EventMessageResponse.new
                    end
                end
                return Message.new
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the message. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the message. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## Gets the flag property value. Indicates the status, start date, due date, or completion date for the message.
            ## @return a followup_flag
            ## 
            def flag
                return @flag
            end
            ## 
            ## Sets the flag property value. Indicates the status, start date, due date, or completion date for the message.
            ## @param value Value to set for the flag property.
            ## @return a void
            ## 
            def flag=(value)
                @flag = value
            end
            ## 
            ## Gets the from property value. The owner of the mailbox from which the message is sent. In most cases, this value is the same as the sender property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about setting the from and sender properties of a message.
            ## @return a recipient
            ## 
            def from
                return @from
            end
            ## 
            ## Sets the from property value. The owner of the mailbox from which the message is sent. In most cases, this value is the same as the sender property, except for sharing or delegation scenarios. The value must correspond to the actual mailbox used. Find out more about setting the from and sender properties of a message.
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
                    "bccRecipients" => lambda {|n| @bcc_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "bodyPreview" => lambda {|n| @body_preview = n.get_string_value() },
                    "ccRecipients" => lambda {|n| @cc_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "conversationId" => lambda {|n| @conversation_id = n.get_string_value() },
                    "conversationIndex" => lambda {|n| @conversation_index = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "flag" => lambda {|n| @flag = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FollowupFlag.create_from_discriminator_value(pn) }) },
                    "from" => lambda {|n| @from = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "importance" => lambda {|n| @importance = n.get_enum_value(MicrosoftGraph::Models::Importance) },
                    "inferenceClassification" => lambda {|n| @inference_classification = n.get_enum_value(MicrosoftGraph::Models::InferenceClassificationType) },
                    "internetMessageHeaders" => lambda {|n| @internet_message_headers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::InternetMessageHeader.create_from_discriminator_value(pn) }) },
                    "internetMessageId" => lambda {|n| @internet_message_id = n.get_string_value() },
                    "isDeliveryReceiptRequested" => lambda {|n| @is_delivery_receipt_requested = n.get_boolean_value() },
                    "isDraft" => lambda {|n| @is_draft = n.get_boolean_value() },
                    "isRead" => lambda {|n| @is_read = n.get_boolean_value() },
                    "isReadReceiptRequested" => lambda {|n| @is_read_receipt_requested = n.get_boolean_value() },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "parentFolderId" => lambda {|n| @parent_folder_id = n.get_string_value() },
                    "receivedDateTime" => lambda {|n| @received_date_time = n.get_date_time_value() },
                    "replyTo" => lambda {|n| @reply_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "sender" => lambda {|n| @sender = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "sentDateTime" => lambda {|n| @sent_date_time = n.get_date_time_value() },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "toRecipients" => lambda {|n| @to_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "uniqueBody" => lambda {|n| @unique_body = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "webLink" => lambda {|n| @web_link = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Indicates whether the message has attachments. This property doesn't include inline attachments, so if a message contains only inline attachments, this property is false. To verify the existence of inline attachments, parse the body property to look for a src attribute, such as <IMG src='cid:image001.jpg@01D26CD8.6C05F070'>.
            ## @param value Value to set for the hasAttachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the importance property value. The importance of the message. The possible values are: low, normal, and high.
            ## @return a importance
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance of the message. The possible values are: low, normal, and high.
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
            end
            ## 
            ## Gets the inferenceClassification property value. The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. The possible values are: focused or other.
            ## @return a inference_classification_type
            ## 
            def inference_classification
                return @inference_classification
            end
            ## 
            ## Sets the inferenceClassification property value. The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. The possible values are: focused or other.
            ## @param value Value to set for the inferenceClassification property.
            ## @return a void
            ## 
            def inference_classification=(value)
                @inference_classification = value
            end
            ## 
            ## Gets the internetMessageHeaders property value. A collection of message headers defined by RFC5322. The set includes message headers indicating the network path taken by a message from the sender to the recipient. It can also contain custom message headers that hold app data for the message.  Returned only on applying a $select query option. Read-only.
            ## @return a internet_message_header
            ## 
            def internet_message_headers
                return @internet_message_headers
            end
            ## 
            ## Sets the internetMessageHeaders property value. A collection of message headers defined by RFC5322. The set includes message headers indicating the network path taken by a message from the sender to the recipient. It can also contain custom message headers that hold app data for the message.  Returned only on applying a $select query option. Read-only.
            ## @param value Value to set for the internetMessageHeaders property.
            ## @return a void
            ## 
            def internet_message_headers=(value)
                @internet_message_headers = value
            end
            ## 
            ## Gets the internetMessageId property value. The message ID in the format specified by RFC2822.
            ## @return a string
            ## 
            def internet_message_id
                return @internet_message_id
            end
            ## 
            ## Sets the internetMessageId property value. The message ID in the format specified by RFC2822.
            ## @param value Value to set for the internetMessageId property.
            ## @return a void
            ## 
            def internet_message_id=(value)
                @internet_message_id = value
            end
            ## 
            ## Gets the isDeliveryReceiptRequested property value. Indicates whether a read receipt is requested for the message.
            ## @return a boolean
            ## 
            def is_delivery_receipt_requested
                return @is_delivery_receipt_requested
            end
            ## 
            ## Sets the isDeliveryReceiptRequested property value. Indicates whether a read receipt is requested for the message.
            ## @param value Value to set for the isDeliveryReceiptRequested property.
            ## @return a void
            ## 
            def is_delivery_receipt_requested=(value)
                @is_delivery_receipt_requested = value
            end
            ## 
            ## Gets the isDraft property value. Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.
            ## @return a boolean
            ## 
            def is_draft
                return @is_draft
            end
            ## 
            ## Sets the isDraft property value. Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet.
            ## @param value Value to set for the isDraft property.
            ## @return a void
            ## 
            def is_draft=(value)
                @is_draft = value
            end
            ## 
            ## Gets the isRead property value. Indicates whether the message has been read.
            ## @return a boolean
            ## 
            def is_read
                return @is_read
            end
            ## 
            ## Sets the isRead property value. Indicates whether the message has been read.
            ## @param value Value to set for the isRead property.
            ## @return a void
            ## 
            def is_read=(value)
                @is_read = value
            end
            ## 
            ## Gets the isReadReceiptRequested property value. Indicates whether a read receipt is requested for the message.
            ## @return a boolean
            ## 
            def is_read_receipt_requested
                return @is_read_receipt_requested
            end
            ## 
            ## Sets the isReadReceiptRequested property value. Indicates whether a read receipt is requested for the message.
            ## @param value Value to set for the isReadReceiptRequested property.
            ## @return a void
            ## 
            def is_read_receipt_requested=(value)
                @is_read_receipt_requested = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the message. Nullable.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the message. Nullable.
            ## @param value Value to set for the multiValueExtendedProperties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the parentFolderId property value. The unique identifier for the message's parent mailFolder.
            ## @return a string
            ## 
            def parent_folder_id
                return @parent_folder_id
            end
            ## 
            ## Sets the parentFolderId property value. The unique identifier for the message's parent mailFolder.
            ## @param value Value to set for the parentFolderId property.
            ## @return a void
            ## 
            def parent_folder_id=(value)
                @parent_folder_id = value
            end
            ## 
            ## Gets the receivedDateTime property value. The date and time the message was received.  The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def received_date_time
                return @received_date_time
            end
            ## 
            ## Sets the receivedDateTime property value. The date and time the message was received.  The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the receivedDateTime property.
            ## @return a void
            ## 
            def received_date_time=(value)
                @received_date_time = value
            end
            ## 
            ## Gets the replyTo property value. The email addresses to use when replying.
            ## @return a recipient
            ## 
            def reply_to
                return @reply_to
            end
            ## 
            ## Sets the replyTo property value. The email addresses to use when replying.
            ## @param value Value to set for the replyTo property.
            ## @return a void
            ## 
            def reply_to=(value)
                @reply_to = value
            end
            ## 
            ## Gets the sender property value. The account that is used to generate the message. In most cases, this value is the same as the from property. You can set this property to a different value when sending a message from a shared mailbox, for a shared calendar, or as a delegate. In any case, the value must correspond to the actual mailbox used. Find out more about setting the from and sender properties of a message.
            ## @return a recipient
            ## 
            def sender
                return @sender
            end
            ## 
            ## Sets the sender property value. The account that is used to generate the message. In most cases, this value is the same as the from property. You can set this property to a different value when sending a message from a shared mailbox, for a shared calendar, or as a delegate. In any case, the value must correspond to the actual mailbox used. Find out more about setting the from and sender properties of a message.
            ## @param value Value to set for the sender property.
            ## @return a void
            ## 
            def sender=(value)
                @sender = value
            end
            ## 
            ## Gets the sentDateTime property value. The date and time the message was sent.  The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def sent_date_time
                return @sent_date_time
            end
            ## 
            ## Sets the sentDateTime property value. The date and time the message was sent.  The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the sentDateTime property.
            ## @return a void
            ## 
            def sent_date_time=(value)
                @sent_date_time = value
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
                writer.write_collection_of_object_values("bccRecipients", @bcc_recipients)
                writer.write_object_value("body", @body)
                writer.write_string_value("bodyPreview", @body_preview)
                writer.write_collection_of_object_values("ccRecipients", @cc_recipients)
                writer.write_string_value("conversationId", @conversation_id)
                writer.write_object_value("conversationIndex", @conversation_index)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_object_value("flag", @flag)
                writer.write_object_value("from", @from)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_enum_value("importance", @importance)
                writer.write_enum_value("inferenceClassification", @inference_classification)
                writer.write_collection_of_object_values("internetMessageHeaders", @internet_message_headers)
                writer.write_string_value("internetMessageId", @internet_message_id)
                writer.write_boolean_value("isDeliveryReceiptRequested", @is_delivery_receipt_requested)
                writer.write_boolean_value("isDraft", @is_draft)
                writer.write_boolean_value("isRead", @is_read)
                writer.write_boolean_value("isReadReceiptRequested", @is_read_receipt_requested)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_string_value("parentFolderId", @parent_folder_id)
                writer.write_date_time_value("receivedDateTime", @received_date_time)
                writer.write_collection_of_object_values("replyTo", @reply_to)
                writer.write_object_value("sender", @sender)
                writer.write_date_time_value("sentDateTime", @sent_date_time)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
                writer.write_string_value("subject", @subject)
                writer.write_collection_of_object_values("toRecipients", @to_recipients)
                writer.write_object_value("uniqueBody", @unique_body)
                writer.write_string_value("webLink", @web_link)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the message. Nullable.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the message. Nullable.
            ## @param value Value to set for the singleValueExtendedProperties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
            ## 
            ## Gets the subject property value. The subject of the message.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject of the message.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the toRecipients property value. The To: recipients for the message.
            ## @return a recipient
            ## 
            def to_recipients
                return @to_recipients
            end
            ## 
            ## Sets the toRecipients property value. The To: recipients for the message.
            ## @param value Value to set for the toRecipients property.
            ## @return a void
            ## 
            def to_recipients=(value)
                @to_recipients = value
            end
            ## 
            ## Gets the uniqueBody property value. The part of the body of the message that is unique to the current message. uniqueBody is not returned by default but can be retrieved for a given message by use of the ?$select=uniqueBody query. It can be in HTML or text format.
            ## @return a item_body
            ## 
            def unique_body
                return @unique_body
            end
            ## 
            ## Sets the uniqueBody property value. The part of the body of the message that is unique to the current message. uniqueBody is not returned by default but can be retrieved for a given message by use of the ?$select=uniqueBody query. It can be in HTML or text format.
            ## @param value Value to set for the uniqueBody property.
            ## @return a void
            ## 
            def unique_body=(value)
                @unique_body = value
            end
            ## 
            ## Gets the webLink property value. The URL to open the message in Outlook on the web.You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, the browser shows the message in the Outlook on the web review pane.The message opens in the browser if you are signed in to your mailbox via Outlook on the web. You are prompted to sign in if you are not already signed in with the browser.This URL cannot be accessed from within an iFrame.
            ## @return a string
            ## 
            def web_link
                return @web_link
            end
            ## 
            ## Sets the webLink property value. The URL to open the message in Outlook on the web.You can append an ispopout argument to the end of the URL to change how the message is displayed. If ispopout is not present or if it is set to 1, then the message is shown in a popout window. If ispopout is set to 0, the browser shows the message in the Outlook on the web review pane.The message opens in the browser if you are signed in to your mailbox via Outlook on the web. You are prompted to sign in if you are not already signed in with the browser.This URL cannot be accessed from within an iFrame.
            ## @param value Value to set for the webLink property.
            ## @return a void
            ## 
            def web_link=(value)
                @web_link = value
            end
        end
    end
end
