require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/message'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../me'
require_relative '../../messages'
require_relative '../item'
require_relative './create_reply'

module MicrosoftGraph
    module Me
        module Messages
            module Item
                module CreateReply
                    ## 
                    # Provides operations to call the createReply method.
                    class CreateReplyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new CreateReplyRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/me/messages/{message%2Did}/createReply")
                        end
                        ## 
                        ## Create a draft to reply to the sender of a message in either JSON or MIME format. When using JSON format:- Specify either a comment or the body property of the message parameter. Specifying both will return an HTTP 400 Bad Request error.- If replyTo is specified in the original message, per Internet Message Format (RFC 2822), you should send the reply to the recipients in replyTo, and not the recipients in from.- You can update the draft later to add reply content to the body or change other message properties. When using MIME format:- Provide the applicable Internet message headers and the MIME content, all encoded in base64 format in the request body.- Add any attachments and S/MIME properties to the MIME content. Send the draft message in a subsequent operation. Alternatively, reply to a message in a single operation. This API is available in the following national cloud deployments.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of message
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Message.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Create a draft to reply to the sender of a message in either JSON or MIME format. When using JSON format:- Specify either a comment or the body property of the message parameter. Specifying both will return an HTTP 400 Bad Request error.- If replyTo is specified in the original message, per Internet Message Format (RFC 2822), you should send the reply to the recipients in replyTo, and not the recipients in from.- You can update the draft later to add reply content to the body or change other message properties. When using MIME format:- Provide the applicable Internet message headers and the MIME content, all encoded in base64 format in the request body.- Add any attachments and S/MIME properties to the MIME content. Send the draft message in a subsequent operation. Alternatively, reply to a message in a single operation. This API is available in the following national cloud deployments.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_post_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :POST
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a create_reply_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return CreateReplyRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
