require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/item_body'
require_relative '../../../../../models/key_value_pair'
require_relative '../../../../../models/teamwork_activity_topic'
require_relative '../../../../../models/teamwork_notification_recipient'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../chats'
require_relative '../item'
require_relative './send_activity_notification'

module MicrosoftGraph
    module Users
        module Item
            module Chats
                module Item
                    module SendActivityNotification
                        class SendActivityNotificationPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # The activityType property
                            @activity_type
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The chainId property
                            @chain_id
                            ## 
                            # The previewText property
                            @preview_text
                            ## 
                            # The recipient property
                            @recipient
                            ## 
                            # The templateParameters property
                            @template_parameters
                            ## 
                            # The topic property
                            @topic
                            ## 
                            ## Gets the activityType property value. The activityType property
                            ## @return a string
                            ## 
                            def activity_type
                                return @activity_type
                            end
                            ## 
                            ## Sets the activityType property value. The activityType property
                            ## @param value Value to set for the activity_type property.
                            ## @return a void
                            ## 
                            def activity_type=(value)
                                @activity_type = value
                            end
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
                            ## Gets the chainId property value. The chainId property
                            ## @return a int64
                            ## 
                            def chain_id
                                return @chain_id
                            end
                            ## 
                            ## Sets the chainId property value. The chainId property
                            ## @param value Value to set for the chain_id property.
                            ## @return a void
                            ## 
                            def chain_id=(value)
                                @chain_id = value
                            end
                            ## 
                            ## Instantiates a new sendActivityNotificationPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a send_activity_notification_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return SendActivityNotificationPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "activityType" => lambda {|n| @activity_type = n.get_string_value() },
                                    "chainId" => lambda {|n| @chain_id = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                                    "previewText" => lambda {|n| @preview_text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                                    "recipient" => lambda {|n| @recipient = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkNotificationRecipient.create_from_discriminator_value(pn) }) },
                                    "templateParameters" => lambda {|n| @template_parameters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                                    "topic" => lambda {|n| @topic = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkActivityTopic.create_from_discriminator_value(pn) }) },
                                }
                            end
                            ## 
                            ## Gets the previewText property value. The previewText property
                            ## @return a item_body
                            ## 
                            def preview_text
                                return @preview_text
                            end
                            ## 
                            ## Sets the previewText property value. The previewText property
                            ## @param value Value to set for the preview_text property.
                            ## @return a void
                            ## 
                            def preview_text=(value)
                                @preview_text = value
                            end
                            ## 
                            ## Gets the recipient property value. The recipient property
                            ## @return a teamwork_notification_recipient
                            ## 
                            def recipient
                                return @recipient
                            end
                            ## 
                            ## Sets the recipient property value. The recipient property
                            ## @param value Value to set for the recipient property.
                            ## @return a void
                            ## 
                            def recipient=(value)
                                @recipient = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("activityType", @activity_type)
                                writer.write_object_value("chainId", @chain_id)
                                writer.write_object_value("previewText", @preview_text)
                                writer.write_object_value("recipient", @recipient)
                                writer.write_collection_of_object_values("templateParameters", @template_parameters)
                                writer.write_object_value("topic", @topic)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the templateParameters property value. The templateParameters property
                            ## @return a key_value_pair
                            ## 
                            def template_parameters
                                return @template_parameters
                            end
                            ## 
                            ## Sets the templateParameters property value. The templateParameters property
                            ## @param value Value to set for the template_parameters property.
                            ## @return a void
                            ## 
                            def template_parameters=(value)
                                @template_parameters = value
                            end
                            ## 
                            ## Gets the topic property value. The topic property
                            ## @return a teamwork_activity_topic
                            ## 
                            def topic
                                return @topic
                            end
                            ## 
                            ## Sets the topic property value. The topic property
                            ## @param value Value to set for the topic property.
                            ## @return a void
                            ## 
                            def topic=(value)
                                @topic = value
                            end
                        end
                    end
                end
            end
        end
    end
end
