require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/message'
require_relative '../../../me'
require_relative '../../messages'
require_relative '../item'
require_relative './create_reply'

module MicrosoftGraph
    module Me
        module Messages
            module Item
                module CreateReply
                    class CreateReplyPostRequestBody
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
                        ## Instantiates a new createReplyPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a create_reply_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return CreateReplyPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "Comment" => lambda {|n| @comment = n.get_string_value() },
                                "Message" => lambda {|n| @message = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Message.create_from_discriminator_value(pn) }) },
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
                            writer.write_string_value("Comment", @comment)
                            writer.write_object_value("Message", @message)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
