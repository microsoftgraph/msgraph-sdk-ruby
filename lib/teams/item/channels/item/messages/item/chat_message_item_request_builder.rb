require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/chat_message'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../teams'
require_relative '../../../../item'
require_relative '../../../channels'
require_relative '../../item'
require_relative '../messages'
require_relative './hosted_contents/hosted_contents_request_builder'
require_relative './item'
require_relative './replies/replies_request_builder'
require_relative './set_reaction/set_reaction_request_builder'
require_relative './soft_delete/soft_delete_request_builder'
require_relative './undo_soft_delete/undo_soft_delete_request_builder'
require_relative './unset_reaction/unset_reaction_request_builder'

module MicrosoftGraph
    module Teams
        module Item
            module Channels
                module Item
                    module Messages
                        module Item
                            ## 
                            # Provides operations to manage the messages property of the microsoft.graph.channel entity.
                            class ChatMessageItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the hostedContents property of the microsoft.graph.chatMessage entity.
                                def hosted_contents()
                                    return MicrosoftGraph::Teams::Item::Channels::Item::Messages::Item::HostedContents::HostedContentsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the replies property of the microsoft.graph.chatMessage entity.
                                def replies()
                                    return MicrosoftGraph::Teams::Item::Channels::Item::Messages::Item::Replies::RepliesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the setReaction method.
                                def set_reaction()
                                    return MicrosoftGraph::Teams::Item::Channels::Item::Messages::Item::SetReaction::SetReactionRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the softDelete method.
                                def soft_delete()
                                    return MicrosoftGraph::Teams::Item::Channels::Item::Messages::Item::SoftDelete::SoftDeleteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the undoSoftDelete method.
                                def undo_soft_delete()
                                    return MicrosoftGraph::Teams::Item::Channels::Item::Messages::Item::UndoSoftDelete::UndoSoftDeleteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the unsetReaction method.
                                def unset_reaction()
                                    return MicrosoftGraph::Teams::Item::Channels::Item::Messages::Item::UnsetReaction::UnsetReactionRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new ChatMessageItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/teams/{team%2Did}/channels/{channel%2Did}/messages/{chatMessage%2Did}{?%24expand,%24select}")
                                end
                                ## 
                                ## Delete navigation property messages for teams
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of void
                                ## 
                                def delete(request_configuration=nil)
                                    request_info = self.to_delete_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                end
                                ## 
                                ## Retrieve a single message or a message reply in a channel or a chat.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of chat_message
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ChatMessage.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update a chatMessage object. Except for the policyViolation property, all properties of a chatMessage can be updated in delegated permissions scenarios.Only the policyViolation property of a chatMessage can be updated in application permissions scenarios. The update only works for chats where members are Microsoft Teams users. If one of the participants is using Skype, the operation fails. This method doesn't support federation. Only the user in the tenant who sent the message can perform data loss prevention (DLP) updates on the specified chat message.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of chat_message
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ChatMessage.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property messages for teams
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_delete_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.url_template = '{+baseurl}/teams/{team%2Did}/channels/{channel%2Did}/messages/{chatMessage%2Did}'
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :DELETE
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Retrieve a single message or a message reply in a channel or a chat.
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
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Update a chatMessage object. Except for the policyViolation property, all properties of a chatMessage can be updated in delegated permissions scenarios.Only the policyViolation property of a chatMessage can be updated in application permissions scenarios. The update only works for chats where members are Microsoft Teams users. If one of the participants is using Skype, the operation fails. This method doesn't support federation. Only the user in the tenant who sent the message can perform data loss prevention (DLP) updates on the specified chat message.
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
                                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                    request_info.url_template = '{+baseurl}/teams/{team%2Did}/channels/{channel%2Did}/messages/{chatMessage%2Did}'
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PATCH
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a chat_message_item_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return ChatMessageItemRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # Retrieve a single message or a message reply in a channel or a chat.
                                class ChatMessageItemRequestBuilderGetQueryParameters
                                    
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
