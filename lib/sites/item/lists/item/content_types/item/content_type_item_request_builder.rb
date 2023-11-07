require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/content_type'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../sites'
require_relative '../../../../item'
require_relative '../../../lists'
require_relative '../../item'
require_relative '../content_types'
require_relative './associate_with_hub_sites/associate_with_hub_sites_request_builder'
require_relative './base/base_request_builder_escaped'
require_relative './base_types/base_types_request_builder'
require_relative './column_links/column_links_request_builder'
require_relative './column_positions/column_positions_request_builder'
require_relative './columns/columns_request_builder'
require_relative './copy_to_default_content_location/copy_to_default_content_location_request_builder'
require_relative './is_published/is_published_request_builder'
require_relative './item'
require_relative './publish/publish_request_builder'
require_relative './unpublish/unpublish_request_builder'

module MicrosoftGraph
    module Sites
        module Item
            module Lists
                module Item
                    module ContentTypes
                        module Item
                            ## 
                            # Provides operations to manage the contentTypes property of the microsoft.graph.list entity.
                            class ContentTypeItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to call the associateWithHubSites method.
                                def associate_with_hub_sites()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::AssociateWithHubSites::AssociateWithHubSitesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the base property of the microsoft.graph.contentType entity.
                                def base()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::Base::BaseRequestBuilder_escaped.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the baseTypes property of the microsoft.graph.contentType entity.
                                def base_types()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::BaseTypes::BaseTypesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the columnLinks property of the microsoft.graph.contentType entity.
                                def column_links()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::ColumnLinks::ColumnLinksRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the columnPositions property of the microsoft.graph.contentType entity.
                                def column_positions()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::ColumnPositions::ColumnPositionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the columns property of the microsoft.graph.contentType entity.
                                def columns()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the copyToDefaultContentLocation method.
                                def copy_to_default_content_location()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::CopyToDefaultContentLocation::CopyToDefaultContentLocationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the isPublished method.
                                def is_published()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::IsPublished::IsPublishedRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the publish method.
                                def publish()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::Publish::PublishRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the unpublish method.
                                def unpublish()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::ContentTypes::Item::Unpublish::UnpublishRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new ContentTypeItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/lists/{list%2Did}/contentTypes/{contentType%2Did}{?%24select,%24expand}")
                                end
                                ## 
                                ## Delete navigation property contentTypes for sites
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
                                ## The collection of content types present in this list.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of content_type
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the navigation property contentTypes in sites
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of content_type
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property contentTypes for sites
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
                                ## The collection of content types present in this list.
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
                                ## Update the navigation property contentTypes in sites
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
                                ## @return a content_type_item_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return ContentTypeItemRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # The collection of content types present in this list.
                                class ContentTypeItemRequestBuilderGetQueryParameters
                                    
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
