require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/message'
require_relative '../../../../../../models/recipient'
require_relative '../../../../../me'
require_relative '../../../../mail_folders'
require_relative '../../../item'
require_relative '../../messages'
require_relative '../item'
require_relative './create_forward'

module MicrosoftGraph::Me::MailFolders::Item::Messages::Item::CreateForward
    class CreateForwardPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The Comment property
        @comment
        ## 
        # The Message property
        @message
        ## 
        # The ToRecipients property
        @to_recipients
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
        ## Gets the comment property value. The Comment property
        ## @return a string
        ## 
        def comment
            return @comment
        end
        ## 
        ## Sets the comment property value. The Comment property
        ## @param value Value to set for the Comment property.
        ## @return a void
        ## 
        def comment=(value)
            @comment = value
        end
        ## 
        ## Instantiates a new createForwardPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a create_forward_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CreateForwardPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "comment" => lambda {|n| @comment = n.get_string_value() },
                "message" => lambda {|n| @message = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Message.create_from_discriminator_value(pn) }) },
                "toRecipients" => lambda {|n| @to_recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Recipient.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the message property value. The Message property
        ## @return a message
        ## 
        def message
            return @message
        end
        ## 
        ## Sets the message property value. The Message property
        ## @param value Value to set for the Message property.
        ## @return a void
        ## 
        def message=(value)
            @message = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("comment", @comment)
            writer.write_object_value("message", @message)
            writer.write_collection_of_object_values("toRecipients", @to_recipients)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the toRecipients property value. The ToRecipients property
        ## @return a recipient
        ## 
        def to_recipients
            return @to_recipients
        end
        ## 
        ## Sets the toRecipients property value. The ToRecipients property
        ## @param value Value to set for the ToRecipients property.
        ## @return a void
        ## 
        def to_recipients=(value)
            @to_recipients = value
        end
    end
end
