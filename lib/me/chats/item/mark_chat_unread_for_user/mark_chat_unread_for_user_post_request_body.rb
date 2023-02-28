require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/teamwork_user_identity'
require_relative '../../../me'
require_relative '../../chats'
require_relative '../item'
require_relative './mark_chat_unread_for_user'

module MicrosoftGraph
    module Me
        module Chats
            module Item
                module MarkChatUnreadForUser
                    class MarkChatUnreadForUserPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The lastMessageReadDateTime property
                        @last_message_read_date_time
                        ## 
                        # The user property
                        @user
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
                        ## Instantiates a new markChatUnreadForUserPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a mark_chat_unread_for_user_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return MarkChatUnreadForUserPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "lastMessageReadDateTime" => lambda {|n| @last_message_read_date_time = n.get_date_time_value() },
                                "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamworkUserIdentity.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the lastMessageReadDateTime property value. The lastMessageReadDateTime property
                        ## @return a date_time
                        ## 
                        def last_message_read_date_time
                            return @last_message_read_date_time
                        end
                        ## 
                        ## Sets the lastMessageReadDateTime property value. The lastMessageReadDateTime property
                        ## @param value Value to set for the last_message_read_date_time property.
                        ## @return a void
                        ## 
                        def last_message_read_date_time=(value)
                            @last_message_read_date_time = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_date_time_value("lastMessageReadDateTime", @last_message_read_date_time)
                            writer.write_object_value("user", @user)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the user property value. The user property
                        ## @return a teamwork_user_identity
                        ## 
                        def user
                            return @user
                        end
                        ## 
                        ## Sets the user property value. The user property
                        ## @param value Value to set for the user property.
                        ## @return a void
                        ## 
                        def user=(value)
                            @user = value
                        end
                    end
                end
            end
        end
    end
end
