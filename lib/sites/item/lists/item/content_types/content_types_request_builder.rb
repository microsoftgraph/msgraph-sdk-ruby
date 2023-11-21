require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/content_type'
require_relative '../../../../../models/content_type_collection_response'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../sites'
require_relative '../../../item'
require_relative '../../lists'
require_relative '../item'
require_relative './add_copy/add_copy_request_builder'
require_relative './add_copy_from_content_type_hub/add_copy_from_content_type_hub_request_builder'
require_relative './content_types'
require_relative './count/count_request_builder'
require_relative './get_compatible_hub_content_types/get_compatible_hub_content_types_request_builder'
require_relative './item/content_type_item_request_builder'

module MicrosoftGraph
    module Sites
        module Item
            module Lists
                module Item
                    module ContentTypes
                        ## 
                        # Provides operations to manage the contentTypes property of the microsoft.graph.list entity.
                        class ContentTypesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to call the addCopy method.
                            def add_copy()
                                return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::AddCopy::AddCopyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the addCopyFromContentTypeHub method.
                            def add_copy_from_content_type_hub()
                                return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::AddCopyFromContentTypeHub::AddCopyFromContentTypeHubRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to count the resources in the collection.
                            def count()
                                return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the getCompatibleHubContentTypes method.
                            def get_compatible_hub_content_types()
                                return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::GetCompatibleHubContentTypes::GetCompatibleHubContentTypesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the contentTypes property of the microsoft.graph.list entity.
                            ## @param content_type_id The unique identifier of contentType
                            ## @return a content_type_item_request_builder
                            ## 
                            def by_content_type_id(content_type_id)
                                raise StandardError, 'content_type_id cannot be null' if content_type_id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["contentType%2Did"] = content_type_id
                                return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::ContentTypeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new ContentTypesRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/lists/{list%2Did}/contentTypes{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                            end
                            ## 
                            ## Get the collection of contentType][contentType] resources in a [list][]. This API is available in the following [national cloud deployments.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of content_type_collection_response
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ContentTypeCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Create new navigation property to contentTypes for sites
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of content_type
                            ## 
                            def post(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_post_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Get the collection of contentType][contentType] resources in a [list][]. This API is available in the following [national cloud deployments.
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
                            ## Create new navigation property to contentTypes for sites
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
                            ## @return a content_types_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return ContentTypesRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # Get the collection of contentType][contentType] resources in a [list][]. This API is available in the following [national cloud deployments.
                            class ContentTypesRequestBuilderGetQueryParameters
                                
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
