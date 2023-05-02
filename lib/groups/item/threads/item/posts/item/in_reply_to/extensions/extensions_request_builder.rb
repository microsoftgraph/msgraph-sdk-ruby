require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/extension'
require_relative '../../../../../../../../models/extension_collection_response'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../groups'
require_relative '../../../../../../item'
require_relative '../../../../../threads'
require_relative '../../../../item'
require_relative '../../../posts'
require_relative '../../item'
require_relative '../in_reply_to'
require_relative './count/count_request_builder'
require_relative './extensions'
require_relative './item/extension_item_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Threads
                module Item
                    module Posts
                        module Item
                            module InReplyTo
                                module Extensions
                                    ## 
                                    # Provides operations to manage the extensions property of the microsoft.graph.post entity.
                                    class ExtensionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to count the resources in the collection.
                                        def count()
                                            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Extensions::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Provides operations to manage the extensions property of the microsoft.graph.post entity.
                                        ## @param extension_id Unique identifier of the item
                                        ## @return a extension_item_request_builder
                                        ## 
                                        def by_extension_id(extension_id)
                                            raise StandardError, 'extension_id cannot be null' if extension_id.nil?
                                            url_tpl_params = @path_parameters.clone
                                            url_tpl_params["extension%2Did"] = extension_id
                                            return MicrosoftGraph::Groups::Item::Threads::Item::Posts::Item::InReplyTo::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new ExtensionsRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/threads/{conversationThread%2Did}/posts/{post%2Did}/inReplyTo/extensions{?%24top,%24skip,%24filter,%24count,%24orderby,%24select,%24expand}")
                                        end
                                        ## 
                                        ## The collection of open extensions defined for the post. Read-only. Nullable. Supports $expand.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of extension_collection_response
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ExtensionCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Create new navigation property to extensions for groups
                                        ## @param body The request body
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of extension
                                        ## 
                                        def post(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_post_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## The collection of open extensions defined for the post. Read-only. Nullable. Supports $expand.
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
                                        ## Create new navigation property to extensions for groups
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
                                        # The collection of open extensions defined for the post. Read-only. Nullable. Supports $expand.
                                        class ExtensionsRequestBuilderGetQueryParameters
                                            
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
