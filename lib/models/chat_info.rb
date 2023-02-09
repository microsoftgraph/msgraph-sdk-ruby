require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChatInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier of a message in a Microsoft Teams channel.
            @message_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The ID of the reply message.
            @reply_chain_message_id
            ## 
            # The unique identifier for a thread in Microsoft Teams.
            @thread_id
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
            ## Instantiates a new chatInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a chat_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "messageId" => lambda {|n| @message_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "replyChainMessageId" => lambda {|n| @reply_chain_message_id = n.get_string_value() },
                    "threadId" => lambda {|n| @thread_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the messageId property value. The unique identifier of a message in a Microsoft Teams channel.
            ## @return a string
            ## 
            def message_id
                return @message_id
            end
            ## 
            ## Sets the messageId property value. The unique identifier of a message in a Microsoft Teams channel.
            ## @param value Value to set for the message_id property.
            ## @return a void
            ## 
            def message_id=(value)
                @message_id = value
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
            ## Gets the replyChainMessageId property value. The ID of the reply message.
            ## @return a string
            ## 
            def reply_chain_message_id
                return @reply_chain_message_id
            end
            ## 
            ## Sets the replyChainMessageId property value. The ID of the reply message.
            ## @param value Value to set for the reply_chain_message_id property.
            ## @return a void
            ## 
            def reply_chain_message_id=(value)
                @reply_chain_message_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("messageId", @message_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("replyChainMessageId", @reply_chain_message_id)
                writer.write_string_value("threadId", @thread_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the threadId property value. The unique identifier for a thread in Microsoft Teams.
            ## @return a string
            ## 
            def thread_id
                return @thread_id
            end
            ## 
            ## Sets the threadId property value. The unique identifier for a thread in Microsoft Teams.
            ## @param value Value to set for the thread_id property.
            ## @return a void
            ## 
            def thread_id=(value)
                @thread_id = value
            end
        end
    end
end
