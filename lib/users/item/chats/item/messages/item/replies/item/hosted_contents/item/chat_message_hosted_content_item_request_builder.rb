require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../models/chat_message_hosted_content'
require_relative '../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../users'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../chats'
require_relative '../../../../../../item'
require_relative '../../../../../messages'
require_relative '../../../../item'
require_relative '../../../replies'
require_relative '../../item'
require_relative '../hosted_contents'
require_relative './item'
require_relative './value/content_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module Chats
                module Item
                    module Messages
                        module Item
                            module Replies
                                module Item
                                    module HostedContents
                                        module Item
                                            ## 
                                            # Provides operations to manage the hostedContents property of the microsoft.graph.chatMessage entity.
                                            class ChatMessageHostedContentItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                
                                                ## 
                                                # Provides operations to manage the media for the user entity.
                                                def content()
                                                    return MicrosoftGraph::Users::Item::Chats::Item::Messages::Item::Replies::Item::HostedContents::Item::Value::ContentRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                ## Instantiates a new ChatMessageHostedContentItemRequestBuilder and sets the default values.
                                                ## @param path_parameters Path parameters for the request
                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter)
                                                    super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/chats/{chat%2Did}/messages/{chatMessage%2Did}/replies/{chatMessage%2Did1}/hostedContents/{chatMessageHostedContent%2Did}{?%24select,%24expand}")
                                                end
                                                ## 
                                                ## Delete navigation property hostedContents for users
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of void
                                                ## 
                                                def delete(request_configuration=nil)
                                                    request_info = self.to_delete_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                                end
                                                ## 
                                                ## Retrieve the properties and relationships of chatMessageHostedContent object. This API is available in the following national cloud deployments.
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of chat_message_hosted_content
                                                ## 
                                                def get(request_configuration=nil)
                                                    request_info = self.to_get_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ChatMessageHostedContent.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Update the navigation property hostedContents in users
                                                ## @param body The request body
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of chat_message_hosted_content
                                                ## 
                                                def patch(body, request_configuration=nil)
                                                    raise StandardError, 'body cannot be null' if body.nil?
                                                    request_info = self.to_patch_request_information(
                                                        body, request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ChatMessageHostedContent.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Delete navigation property hostedContents for users
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a request_information
                                                ## 
                                                def to_delete_request_information(request_configuration=nil)
                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                    unless request_configuration.nil?
                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                        request_info.add_request_options(request_configuration.options)
                                                    end
                                                    request_info.url_template = @url_template
                                                    request_info.path_parameters = @path_parameters
                                                    request_info.http_method = :DELETE
                                                    request_info.headers.try_add('Accept', 'application/json, application/json')
                                                    return request_info
                                                end
                                                ## 
                                                ## Retrieve the properties and relationships of chatMessageHostedContent object. This API is available in the following national cloud deployments.
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a request_information
                                                ## 
                                                def to_get_request_information(request_configuration=nil)
                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                    unless request_configuration.nil?
                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                        request_info.add_request_options(request_configuration.options)
                                                    end
                                                    request_info.url_template = @url_template
                                                    request_info.path_parameters = @path_parameters
                                                    request_info.http_method = :GET
                                                    request_info.headers.try_add('Accept', 'application/json;q=1')
                                                    return request_info
                                                end
                                                ## 
                                                ## Update the navigation property hostedContents in users
                                                ## @param body The request body
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a request_information
                                                ## 
                                                def to_patch_request_information(body, request_configuration=nil)
                                                    raise StandardError, 'body cannot be null' if body.nil?
                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                    unless request_configuration.nil?
                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                        request_info.add_request_options(request_configuration.options)
                                                    end
                                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                    request_info.url_template = @url_template
                                                    request_info.path_parameters = @path_parameters
                                                    request_info.http_method = :PATCH
                                                    request_info.headers.try_add('Accept', 'application/json;q=1')
                                                    return request_info
                                                end
                                                ## 
                                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                ## @param raw_url The raw URL to use for the request builder.
                                                ## @return a chat_message_hosted_content_item_request_builder
                                                ## 
                                                def with_url(raw_url)
                                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                    return ChatMessageHostedContentItemRequestBuilder.new(raw_url, @request_adapter)
                                                end

                                                ## 
                                                # Retrieve the properties and relationships of chatMessageHostedContent object. This API is available in the following national cloud deployments.
                                                class ChatMessageHostedContentItemRequestBuilderGetQueryParameters
                                                    
                                                    ## 
                                                    # Expand related entities
                                                    attr_accessor :expand
                                                    ## 
                                                    # Select properties to be returned
                                                    attr_accessor :select
                                                    ## 
                                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                    ## @param original_name The original query parameter name in the class.
                                                    ## @return a string
                                                    ## 
                                                    def get_query_parameter(original_name)
                                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                        case original_name
                                                            when "expand"
                                                                return "%24expand"
                                                            when "select"
                                                                return "%24select"
                                                            else
                                                                return original_name
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
            end
        end
    end
end
