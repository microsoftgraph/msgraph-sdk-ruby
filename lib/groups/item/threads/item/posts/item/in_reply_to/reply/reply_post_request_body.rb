require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/post'
require_relative '../../../../../../../groups'
require_relative '../../../../../../item'
require_relative '../../../../../threads'
require_relative '../../../../item'
require_relative '../../../posts'
require_relative '../../item'
require_relative '../in_reply_to'
require_relative './reply'

module MicrosoftGraph
    module Groups
        module Item
            module Threads
                module Item
                    module Posts
                        module Item
                            module InReplyTo
                                module Reply
                                    class ReplyPostRequestBody
                                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                        ## 
                                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                        @additional_data
                                        ## 
                                        # The Post property
                                        @post
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
                                        ## Instantiates a new replyPostRequestBody and sets the default values.
                                        ## @return a void
                                        ## 
                                        def initialize()
                                            @additional_data = Hash.new
                                        end
                                        ## 
                                        ## Creates a new instance of the appropriate class based on discriminator value
                                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                                        ## @return a reply_post_request_body
                                        ## 
                                        def self.create_from_discriminator_value(parse_node)
                                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                            return ReplyPostRequestBody.new
                                        end
                                        ## 
                                        ## The deserialization information for the current model
                                        ## @return a i_dictionary
                                        ## 
                                        def get_field_deserializers()
                                            return {
                                                "Post" => lambda {|n| @post = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Post.create_from_discriminator_value(pn) }) },
                                            }
                                        end
                                        ## 
                                        ## Gets the post property value. The Post property
                                        ## @return a post
                                        ## 
                                        def post
                                            return @post
                                        end
                                        ## 
                                        ## Sets the post property value. The Post property
                                        ## @param value Value to set for the Post property.
                                        ## @return a void
                                        ## 
                                        def post=(value)
                                            @post = value
                                        end
                                        ## 
                                        ## Serializes information the current object
                                        ## @param writer Serialization writer to use to serialize this model
                                        ## @return a void
                                        ## 
                                        def serialize(writer)
                                            raise StandardError, 'writer cannot be null' if writer.nil?
                                            writer.write_object_value("Post", @post)
                                            writer.write_additional_data(@additional_data)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
