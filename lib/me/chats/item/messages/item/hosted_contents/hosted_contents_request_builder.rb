require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/chat_message_hosted_content'
require_relative '../../../../../../models/chat_message_hosted_content_collection_response'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../me'
require_relative '../../../../chats'
require_relative '../../../item'
require_relative '../../messages'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './hosted_contents'
require_relative './item/chat_message_hosted_content_item_request_builder'

module MicrosoftGraph
    module Me
        module Chats
            module Item
                module Messages
                    module Item
                        module HostedContents
                            ## 
                            # Provides operations to manage the hostedContents property of the microsoft.graph.chatMessage entity.
                            class HostedContentsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to count the resources in the collection.
                                def count()
                                    return MicrosoftGraph::Me::Chats::Item::Messages::Item::HostedContents::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Provides operations to manage the hostedContents property of the microsoft.graph.chatMessage entity.
                                ## @param chat_message_hosted_content_id The unique identifier of chatMessageHostedContent
                                ## @return a chat_message_hosted_content_item_request_builder
                                ## 
                                def by_chat_message_hosted_content_id(chat_message_hosted_content_id)
                                    raise StandardError, 'chat_message_hosted_content_id cannot be null' if chat_message_hosted_content_id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["chatMessageHostedContent%2Did"] = chat_message_hosted_content_id
                                    return MicrosoftGraph::Me::Chats::Item::Messages::Item::HostedContents::Item::ChatMessageHostedContentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new HostedContentsRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/me/chats/{chat%2Did}/messages/{chatMessage%2Did}/hostedContents{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                end
                                ## 
                                ## Retrieve the list of chatMessageHostedContent objects from a message. This API only lists the hosted content objects. To get the content bytes, see get chatmessage hosted content
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of chat_message_hosted_content_collection_response
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ChatMessageHostedContentCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Create new navigation property to hostedContents for me
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of chat_message_hosted_content
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ChatMessageHostedContent.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Retrieve the list of chatMessageHostedContent objects from a message. This API only lists the hosted content objects. To get the content bytes, see get chatmessage hosted content
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_get_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :GET
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    return request_info
                                end
                                ## 
                                ## Create new navigation property to hostedContents for me
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a hosted_contents_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return HostedContentsRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # Retrieve the list of chatMessageHostedContent objects from a message. This API only lists the hosted content objects. To get the content bytes, see get chatmessage hosted content
                                class HostedContentsRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Include count of items
                                    attr_accessor :count
                                    ## 
                                    # Expand related entities
                                    attr_accessor :expand
                                    ## 
                                    # Filter items by property values
                                    attr_accessor :filter
                                    ## 
                                    # Order items by property values
                                    attr_accessor :orderby
                                    ## 
                                    # Search items by search phrases
                                    attr_accessor :search
                                    ## 
                                    # Select properties to be returned
                                    attr_accessor :select
                                    ## 
                                    # Skip the first n items
                                    attr_accessor :skip
                                    ## 
                                    # Show only the first n items
                                    attr_accessor :top
                                    ## 
                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                    ## @param original_name The original query parameter name in the class.
                                    ## @return a string
                                    ## 
                                    def get_query_parameter(original_name)
                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                        case original_name
                                            when "count"
                                                return "%24count"
                                            when "expand"
                                                return "%24expand"
                                            when "filter"
                                                return "%24filter"
                                            when "orderby"
                                                return "%24orderby"
                                            when "search"
                                                return "%24search"
                                            when "select"
                                                return "%24select"
                                            when "skip"
                                                return "%24skip"
                                            when "top"
                                                return "%24top"
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
