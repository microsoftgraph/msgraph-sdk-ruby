require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InvitedUserMessageInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Additional recipients the invitation message should be sent to. Currently only 1 additional recipient is supported.
            @cc_recipients
            ## 
            # Customized message body you want to send if you don't want the default message.
            @customized_message_body
            ## 
            # The language you want to send the default message in. If the customizedMessageBody is specified, this property is ignored, and the message is sent using the customizedMessageBody. The language format should be in ISO 639. The default is en-US.
            @message_language
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
            ## Gets the ccRecipients property value. Additional recipients the invitation message should be sent to. Currently only 1 additional recipient is supported.
            ## @return a recipient
            ## 
            def cc_recipients
                return @cc_recipients
            end
            ## 
            ## Sets the ccRecipients property value. Additional recipients the invitation message should be sent to. Currently only 1 additional recipient is supported.
            ## @param value Value to set for the cc_recipients property.
            ## @return a void
            ## 
            def cc_recipients=(value)
                @cc_recipients = value
            end
            ## 
            ## Instantiates a new invitedUserMessageInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a invited_user_message_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InvitedUserMessageInfo.new
            end
            ## 
            ## Gets the customizedMessageBody property value. Customized message body you want to send if you don't want the default message.
            ## @return a string
            ## 
            def customized_message_body
                return @customized_message_body
            end
            ## 
            ## Sets the customizedMessageBody property value. Customized message body you want to send if you don't want the default message.
            ## @param value Value to set for the customized_message_body property.
            ## @return a void
            ## 
            def customized_message_body=(value)
                @customized_message_body = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "ccRecipients" => lambda {|n| @cc_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
                    "customizedMessageBody" => lambda {|n| @customized_message_body = n.get_string_value() },
                    "messageLanguage" => lambda {|n| @message_language = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the messageLanguage property value. The language you want to send the default message in. If the customizedMessageBody is specified, this property is ignored, and the message is sent using the customizedMessageBody. The language format should be in ISO 639. The default is en-US.
            ## @return a string
            ## 
            def message_language
                return @message_language
            end
            ## 
            ## Sets the messageLanguage property value. The language you want to send the default message in. If the customizedMessageBody is specified, this property is ignored, and the message is sent using the customizedMessageBody. The language format should be in ISO 639. The default is en-US.
            ## @param value Value to set for the message_language property.
            ## @return a void
            ## 
            def message_language=(value)
                @message_language = value
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
                writer.write_collection_of_object_values("ccRecipients", @cc_recipients)
                writer.write_string_value("customizedMessageBody", @customized_message_body)
                writer.write_string_value("messageLanguage", @message_language)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
