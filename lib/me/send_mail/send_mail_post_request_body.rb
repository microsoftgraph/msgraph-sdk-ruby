require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/message'
require_relative '../me'
require_relative './send_mail'

module MicrosoftGraph
    module Me
        module SendMail
            class SendMailPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The Message property
                @message
                ## 
                # The SaveToSentItems property
                @save_to_sent_items
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
                ## Instantiates a new sendMailPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a send_mail_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SendMailPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "Message" => lambda {|n| @message = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Message.create_from_discriminator_value(pn) }) },
                        "SaveToSentItems" => lambda {|n| @save_to_sent_items = n.get_boolean_value() },
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
                ## Gets the saveToSentItems property value. The SaveToSentItems property
                ## @return a boolean
                ## 
                def save_to_sent_items
                    return @save_to_sent_items
                end
                ## 
                ## Sets the saveToSentItems property value. The SaveToSentItems property
                ## @param value Value to set for the save_to_sent_items property.
                ## @return a void
                ## 
                def save_to_sent_items=(value)
                    @save_to_sent_items = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("Message", @message)
                    writer.write_boolean_value("SaveToSentItems", @save_to_sent_items)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
