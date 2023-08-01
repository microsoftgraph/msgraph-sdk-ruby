require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/conversation_member_collection_response'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../users'
require_relative '../../../../../../item'
require_relative '../../../../../joined_teams'
require_relative '../../../../item'
require_relative '../../../primary_channel'
require_relative '../../shared_with_teams'
require_relative '../item'
require_relative './allowed_members'
require_relative './count/count_request_builder'
require_relative './item/conversation_member_item_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module JoinedTeams
                module Item
                    module PrimaryChannel
                        module SharedWithTeams
                            module Item
                                module AllowedMembers
                                    ## 
                                    # Provides operations to manage the allowedMembers property of the microsoft.graph.sharedWithChannelTeamInfo entity.
                                    class AllowedMembersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to count the resources in the collection.
                                        def count()
                                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::PrimaryChannel::SharedWithTeams::Item::AllowedMembers::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Provides operations to manage the allowedMembers property of the microsoft.graph.sharedWithChannelTeamInfo entity.
                                        ## @param conversation_member_id Unique identifier of the item
                                        ## @return a conversation_member_item_request_builder
                                        ## 
                                        def by_conversation_member_id(conversation_member_id)
                                            raise StandardError, 'conversation_member_id cannot be null' if conversation_member_id.nil?
                                            url_tpl_params = @path_parameters.clone
                                            url_tpl_params["conversationMember%2Did"] = conversation_member_id
                                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::PrimaryChannel::SharedWithTeams::Item::AllowedMembers::Item::ConversationMemberItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new AllowedMembersRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/joinedTeams/{team%2Did}/primaryChannel/sharedWithTeams/{sharedWithChannelTeamInfo%2Did}/allowedMembers{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                        end
                                        ## 
                                        ## Get the list of conversationMembers who can access a shared channel. This method does not return the following conversationMembers from the team:- Users with Guest role- Users who are externally authenticated in the tenant
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of conversation_member_collection_response
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ConversationMemberCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Get the list of conversationMembers who can access a shared channel. This method does not return the following conversationMembers from the team:- Users with Guest role- Users who are externally authenticated in the tenant
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
                                        # Get the list of conversationMembers who can access a shared channel. This method does not return the following conversationMembers from the team:- Users with Guest role- Users who are externally authenticated in the tenant
                                        class AllowedMembersRequestBuilderGetQueryParameters
                                            
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
    end
end
