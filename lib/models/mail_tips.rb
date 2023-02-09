require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MailTips
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Mail tips for automatic reply if it has been set up by the recipient.
            @automatic_replies
            ## 
            # A custom mail tip that can be set on the recipient's mailbox.
            @custom_mail_tip
            ## 
            # Whether the recipient's mailbox is restricted, for example, accepting messages from only a predefined list of senders, rejecting messages from a predefined list of senders, or accepting messages from only authenticated senders.
            @delivery_restricted
            ## 
            # The email address of the recipient to get mailtips for.
            @email_address
            ## 
            # Errors that occur during the getMailTips action.
            @error
            ## 
            # The number of external members if the recipient is a distribution list.
            @external_member_count
            ## 
            # Whether sending messages to the recipient requires approval. For example, if the recipient is a large distribution list and a moderator has been set up to approve messages sent to that distribution list, or if sending messages to a recipient requires approval of the recipient's manager.
            @is_moderated
            ## 
            # The mailbox full status of the recipient.
            @mailbox_full
            ## 
            # The maximum message size that has been configured for the recipient's organization or mailbox.
            @max_message_size
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The scope of the recipient. Possible values are: none, internal, external, externalPartner, externalNonParther. For example, an administrator can set another organization to be its 'partner'. The scope is useful if an administrator wants certain mailtips to be accessible to certain scopes. It's also useful to senders to inform them that their message may leave the organization, helping them make the correct decisions about wording, tone and content.
            @recipient_scope
            ## 
            # Recipients suggested based on previous contexts where they appear in the same message.
            @recipient_suggestions
            ## 
            # The number of members if the recipient is a distribution list.
            @total_member_count
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the automaticReplies property value. Mail tips for automatic reply if it has been set up by the recipient.
            ## @return a automatic_replies_mail_tips
            ## 
            def automatic_replies
                return @automatic_replies
            end
            ## 
            ## Sets the automaticReplies property value. Mail tips for automatic reply if it has been set up by the recipient.
            ## @param value Value to set for the automatic_replies property.
            ## @return a void
            ## 
            def automatic_replies=(value)
                @automatic_replies = value
            end
            ## 
            ## Instantiates a new mailTips and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mail_tips
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MailTips.new
            end
            ## 
            ## Gets the customMailTip property value. A custom mail tip that can be set on the recipient's mailbox.
            ## @return a string
            ## 
            def custom_mail_tip
                return @custom_mail_tip
            end
            ## 
            ## Sets the customMailTip property value. A custom mail tip that can be set on the recipient's mailbox.
            ## @param value Value to set for the custom_mail_tip property.
            ## @return a void
            ## 
            def custom_mail_tip=(value)
                @custom_mail_tip = value
            end
            ## 
            ## Gets the deliveryRestricted property value. Whether the recipient's mailbox is restricted, for example, accepting messages from only a predefined list of senders, rejecting messages from a predefined list of senders, or accepting messages from only authenticated senders.
            ## @return a boolean
            ## 
            def delivery_restricted
                return @delivery_restricted
            end
            ## 
            ## Sets the deliveryRestricted property value. Whether the recipient's mailbox is restricted, for example, accepting messages from only a predefined list of senders, rejecting messages from a predefined list of senders, or accepting messages from only authenticated senders.
            ## @param value Value to set for the delivery_restricted property.
            ## @return a void
            ## 
            def delivery_restricted=(value)
                @delivery_restricted = value
            end
            ## 
            ## Gets the emailAddress property value. The email address of the recipient to get mailtips for.
            ## @return a email_address
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. The email address of the recipient to get mailtips for.
            ## @param value Value to set for the email_address property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## Gets the error property value. Errors that occur during the getMailTips action.
            ## @return a mail_tips_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Errors that occur during the getMailTips action.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## Gets the externalMemberCount property value. The number of external members if the recipient is a distribution list.
            ## @return a integer
            ## 
            def external_member_count
                return @external_member_count
            end
            ## 
            ## Sets the externalMemberCount property value. The number of external members if the recipient is a distribution list.
            ## @param value Value to set for the external_member_count property.
            ## @return a void
            ## 
            def external_member_count=(value)
                @external_member_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "automaticReplies" => lambda {|n| @automatic_replies = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AutomaticRepliesMailTips.create_from_discriminator_value(pn) }) },
                    "customMailTip" => lambda {|n| @custom_mail_tip = n.get_string_value() },
                    "deliveryRestricted" => lambda {|n| @delivery_restricted = n.get_boolean_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailAddress.create_from_discriminator_value(pn) }) },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MailTipsError.create_from_discriminator_value(pn) }) },
                    "externalMemberCount" => lambda {|n| @external_member_count = n.get_number_value() },
                    "isModerated" => lambda {|n| @is_moderated = n.get_boolean_value() },
                    "mailboxFull" => lambda {|n| @mailbox_full = n.get_boolean_value() },
                    "maxMessageSize" => lambda {|n| @max_message_size = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recipientScope" => lambda {|n| @recipient_scope = n.get_enum_value(MicrosoftGraph::Models::RecipientScopeType) },
                    "recipientSuggestions" => lambda {|n| @recipient_suggestions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "totalMemberCount" => lambda {|n| @total_member_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the isModerated property value. Whether sending messages to the recipient requires approval. For example, if the recipient is a large distribution list and a moderator has been set up to approve messages sent to that distribution list, or if sending messages to a recipient requires approval of the recipient's manager.
            ## @return a boolean
            ## 
            def is_moderated
                return @is_moderated
            end
            ## 
            ## Sets the isModerated property value. Whether sending messages to the recipient requires approval. For example, if the recipient is a large distribution list and a moderator has been set up to approve messages sent to that distribution list, or if sending messages to a recipient requires approval of the recipient's manager.
            ## @param value Value to set for the is_moderated property.
            ## @return a void
            ## 
            def is_moderated=(value)
                @is_moderated = value
            end
            ## 
            ## Gets the mailboxFull property value. The mailbox full status of the recipient.
            ## @return a boolean
            ## 
            def mailbox_full
                return @mailbox_full
            end
            ## 
            ## Sets the mailboxFull property value. The mailbox full status of the recipient.
            ## @param value Value to set for the mailbox_full property.
            ## @return a void
            ## 
            def mailbox_full=(value)
                @mailbox_full = value
            end
            ## 
            ## Gets the maxMessageSize property value. The maximum message size that has been configured for the recipient's organization or mailbox.
            ## @return a integer
            ## 
            def max_message_size
                return @max_message_size
            end
            ## 
            ## Sets the maxMessageSize property value. The maximum message size that has been configured for the recipient's organization or mailbox.
            ## @param value Value to set for the max_message_size property.
            ## @return a void
            ## 
            def max_message_size=(value)
                @max_message_size = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the recipientScope property value. The scope of the recipient. Possible values are: none, internal, external, externalPartner, externalNonParther. For example, an administrator can set another organization to be its 'partner'. The scope is useful if an administrator wants certain mailtips to be accessible to certain scopes. It's also useful to senders to inform them that their message may leave the organization, helping them make the correct decisions about wording, tone and content.
            ## @return a recipient_scope_type
            ## 
            def recipient_scope
                return @recipient_scope
            end
            ## 
            ## Sets the recipientScope property value. The scope of the recipient. Possible values are: none, internal, external, externalPartner, externalNonParther. For example, an administrator can set another organization to be its 'partner'. The scope is useful if an administrator wants certain mailtips to be accessible to certain scopes. It's also useful to senders to inform them that their message may leave the organization, helping them make the correct decisions about wording, tone and content.
            ## @param value Value to set for the recipient_scope property.
            ## @return a void
            ## 
            def recipient_scope=(value)
                @recipient_scope = value
            end
            ## 
            ## Gets the recipientSuggestions property value. Recipients suggested based on previous contexts where they appear in the same message.
            ## @return a recipient
            ## 
            def recipient_suggestions
                return @recipient_suggestions
            end
            ## 
            ## Sets the recipientSuggestions property value. Recipients suggested based on previous contexts where they appear in the same message.
            ## @param value Value to set for the recipient_suggestions property.
            ## @return a void
            ## 
            def recipient_suggestions=(value)
                @recipient_suggestions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("automaticReplies", @automatic_replies)
                writer.write_string_value("customMailTip", @custom_mail_tip)
                writer.write_boolean_value("deliveryRestricted", @delivery_restricted)
                writer.write_object_value("emailAddress", @email_address)
                writer.write_object_value("error", @error)
                writer.write_number_value("externalMemberCount", @external_member_count)
                writer.write_boolean_value("isModerated", @is_moderated)
                writer.write_boolean_value("mailboxFull", @mailbox_full)
                writer.write_number_value("maxMessageSize", @max_message_size)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("recipientScope", @recipient_scope)
                writer.write_collection_of_object_values("recipientSuggestions", @recipient_suggestions)
                writer.write_number_value("totalMemberCount", @total_member_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalMemberCount property value. The number of members if the recipient is a distribution list.
            ## @return a integer
            ## 
            def total_member_count
                return @total_member_count
            end
            ## 
            ## Sets the totalMemberCount property value. The number of members if the recipient is a distribution list.
            ## @param value Value to set for the total_member_count property.
            ## @return a void
            ## 
            def total_member_count=(value)
                @total_member_count = value
            end
        end
    end
end
