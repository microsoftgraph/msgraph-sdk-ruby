require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewNotificationRecipientItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Determines the recipient of the notification email.
            @notification_recipient_scope
            ## 
            # Indicates the type of access review email to be sent. Supported template type is CompletedAdditionalRecipients, which sends review completion notifications to the recipients.
            @notification_template_type
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new accessReviewNotificationRecipientItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_notification_recipient_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewNotificationRecipientItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "notificationRecipientScope" => lambda {|n| @notification_recipient_scope = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AccessReviewNotificationRecipientScope.create_from_discriminator_value(pn) }) },
                    "notificationTemplateType" => lambda {|n| @notification_template_type = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the notificationRecipientScope property value. Determines the recipient of the notification email.
            ## @return a access_review_notification_recipient_scope
            ## 
            def notification_recipient_scope
                return @notification_recipient_scope
            end
            ## 
            ## Sets the notificationRecipientScope property value. Determines the recipient of the notification email.
            ## @param value Value to set for the notification_recipient_scope property.
            ## @return a void
            ## 
            def notification_recipient_scope=(value)
                @notification_recipient_scope = value
            end
            ## 
            ## Gets the notificationTemplateType property value. Indicates the type of access review email to be sent. Supported template type is CompletedAdditionalRecipients, which sends review completion notifications to the recipients.
            ## @return a string
            ## 
            def notification_template_type
                return @notification_template_type
            end
            ## 
            ## Sets the notificationTemplateType property value. Indicates the type of access review email to be sent. Supported template type is CompletedAdditionalRecipients, which sends review completion notifications to the recipients.
            ## @param value Value to set for the notification_template_type property.
            ## @return a void
            ## 
            def notification_template_type=(value)
                @notification_template_type = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("notificationRecipientScope", @notification_recipient_scope)
                writer.write_string_value("notificationTemplateType", @notification_template_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
