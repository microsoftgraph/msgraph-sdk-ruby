require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/chat'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../me'
require_relative '../chats'
require_relative './hide_for_user/hide_for_user_request_builder'
require_relative './installed_apps/installed_apps_request_builder'
require_relative './installed_apps/item/teams_app_installation_item_request_builder'
require_relative './item'
require_relative './last_message_preview/last_message_preview_request_builder'
require_relative './mark_chat_read_for_user/mark_chat_read_for_user_request_builder'
require_relative './mark_chat_unread_for_user/mark_chat_unread_for_user_request_builder'
require_relative './members/item/conversation_member_item_request_builder'
require_relative './members/members_request_builder'
require_relative './messages/item/chat_message_item_request_builder'
require_relative './messages/messages_request_builder'
require_relative './pinned_messages/item/pinned_chat_message_info_item_request_builder'
require_relative './pinned_messages/pinned_messages_request_builder'
require_relative './send_activity_notification/send_activity_notification_request_builder'
require_relative './tabs/item/teams_tab_item_request_builder'
require_relative './tabs/tabs_request_builder'
require_relative './unhide_for_user/unhide_for_user_request_builder'

module MicrosoftGraph
    module Me
        module Chats
            module Item
                ## 
                # Provides operations to manage the chats property of the microsoft.graph.user entity.
                class ChatItemRequestBuilder
                    
                    ## 
                    # Provides operations to call the hideForUser method.
                    def hide_for_user()
                        return MicrosoftGraph::Me::Chats::Item::HideForUser::HideForUserRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the installedApps property of the microsoft.graph.chat entity.
                    def installed_apps()
                        return MicrosoftGraph::Me::Chats::Item::InstalledApps::InstalledAppsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the lastMessagePreview property of the microsoft.graph.chat entity.
                    def last_message_preview()
                        return MicrosoftGraph::Me::Chats::Item::LastMessagePreview::LastMessagePreviewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the markChatReadForUser method.
                    def mark_chat_read_for_user()
                        return MicrosoftGraph::Me::Chats::Item::MarkChatReadForUser::MarkChatReadForUserRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the markChatUnreadForUser method.
                    def mark_chat_unread_for_user()
                        return MicrosoftGraph::Me::Chats::Item::MarkChatUnreadForUser::MarkChatUnreadForUserRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the members property of the microsoft.graph.chat entity.
                    def members()
                        return MicrosoftGraph::Me::Chats::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the messages property of the microsoft.graph.chat entity.
                    def messages()
                        return MicrosoftGraph::Me::Chats::Item::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # Provides operations to manage the pinnedMessages property of the microsoft.graph.chat entity.
                    def pinned_messages()
                        return MicrosoftGraph::Me::Chats::Item::PinnedMessages::PinnedMessagesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to call the sendActivityNotification method.
                    def send_activity_notification()
                        return MicrosoftGraph::Me::Chats::Item::SendActivityNotification::SendActivityNotificationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the tabs property of the microsoft.graph.chat entity.
                    def tabs()
                        return MicrosoftGraph::Me::Chats::Item::Tabs::TabsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unhideForUser method.
                    def unhide_for_user()
                        return MicrosoftGraph::Me::Chats::Item::UnhideForUser::UnhideForUserRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Instantiates a new ChatItemRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/me/chats/{chat%2Did}{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property chats for me
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Get chats from me
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of chat
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Chat.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the installedApps property of the microsoft.graph.chat entity.
                    ## @param id Unique identifier of the item
                    ## @return a teams_app_installation_item_request_builder
                    ## 
                    def installed_apps_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["teamsAppInstallation%2Did"] = id
                        return MicrosoftGraph::Me::Chats::Item::InstalledApps::Item::TeamsAppInstallationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the members property of the microsoft.graph.chat entity.
                    ## @param id Unique identifier of the item
                    ## @return a conversation_member_item_request_builder
                    ## 
                    def members_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["conversationMember%2Did"] = id
                        return MicrosoftGraph::Me::Chats::Item::Members::Item::ConversationMemberItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the messages property of the microsoft.graph.chat entity.
                    ## @param id Unique identifier of the item
                    ## @return a chat_message_item_request_builder
                    ## 
                    def messages_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["chatMessage%2Did"] = id
                        return MicrosoftGraph::Me::Chats::Item::Messages::Item::ChatMessageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Update the navigation property chats in me
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of chat
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Chat.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the pinnedMessages property of the microsoft.graph.chat entity.
                    ## @param id Unique identifier of the item
                    ## @return a pinned_chat_message_info_item_request_builder
                    ## 
                    def pinned_messages_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["pinnedChatMessageInfo%2Did"] = id
                        return MicrosoftGraph::Me::Chats::Item::PinnedMessages::Item::PinnedChatMessageInfoItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the tabs property of the microsoft.graph.chat entity.
                    ## @param id Unique identifier of the item
                    ## @return a teams_tab_item_request_builder
                    ## 
                    def tabs_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["teamsTab%2Did"] = id
                        return MicrosoftGraph::Me::Chats::Item::Tabs::Item::TeamsTabItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property chats for me
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        return request_info
                    end
                    ## 
                    ## Get chats from me
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                    ## Update the navigation property chats in me
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_patch_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.add('Accept', 'application/json')
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                        return request_info
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class ChatItemRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # Get chats from me
                    class ChatItemRequestBuilderGetQueryParameters
                        
                        ## 
                        # Expand related entities
                        attr_accessor :expand
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param originalName The original query parameter name in the class.
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

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class ChatItemRequestBuilderGetRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                        ## 
                        # Request query parameters
                        attr_accessor :query_parameters
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class ChatItemRequestBuilderPatchRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end
                end
            end
        end
    end
end
