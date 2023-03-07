require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/content_type'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../shares'
require_relative '../../../item'
require_relative '../../list'
require_relative '../content_types'
require_relative './associate_with_hub_sites/associate_with_hub_sites_request_builder'
require_relative './base/base_request_builder'
require_relative './base_types/base_types_request_builder'
require_relative './base_types/item/content_type_item_request_builder'
require_relative './column_links/column_links_request_builder'
require_relative './column_links/item/column_link_item_request_builder'
require_relative './column_positions/column_positions_request_builder'
require_relative './column_positions/item/column_definition_item_request_builder'
require_relative './columns/columns_request_builder'
require_relative './columns/item/column_definition_item_request_builder'
require_relative './copy_to_default_content_location/copy_to_default_content_location_request_builder'
require_relative './is_published/is_published_request_builder'
require_relative './item'
require_relative './publish/publish_request_builder'
require_relative './unpublish/unpublish_request_builder'

module MicrosoftGraph
    module Shares
        module Item
            module List
                module ContentTypes
                    module Item
                        ## 
                        # Provides operations to manage the contentTypes property of the microsoft.graph.list entity.
                        class ContentTypeItemRequestBuilder
                            
                            ## 
                            # Provides operations to call the associateWithHubSites method.
                            def associate_with_hub_sites()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::AssociateWithHubSites::AssociateWithHubSitesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the base property of the microsoft.graph.contentType entity.
                            def base()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::Base::BaseRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the baseTypes property of the microsoft.graph.contentType entity.
                            def base_types()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::BaseTypes::BaseTypesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the columnLinks property of the microsoft.graph.contentType entity.
                            def column_links()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::ColumnLinks::ColumnLinksRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the columnPositions property of the microsoft.graph.contentType entity.
                            def column_positions()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::ColumnPositions::ColumnPositionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the columns property of the microsoft.graph.contentType entity.
                            def columns()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the copyToDefaultContentLocation method.
                            def copy_to_default_content_location()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::CopyToDefaultContentLocation::CopyToDefaultContentLocationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the isPublished method.
                            def is_published()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::IsPublished::IsPublishedRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Path parameters for the request
                            @path_parameters
                            ## 
                            # Provides operations to call the publish method.
                            def publish()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::Publish::PublishRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The request adapter to use to execute the requests.
                            @request_adapter
                            ## 
                            # Provides operations to call the unpublish method.
                            def unpublish()
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::Unpublish::UnpublishRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Url template to use to build the URL for the current request builder
                            @url_template
                            ## 
                            ## Provides operations to manage the baseTypes property of the microsoft.graph.contentType entity.
                            ## @param id Unique identifier of the item
                            ## @return a content_type_item_request_builder
                            ## 
                            def base_types_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["contentType%2Did1"] = id
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::BaseTypes::Item::ContentTypeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the columnLinks property of the microsoft.graph.contentType entity.
                            ## @param id Unique identifier of the item
                            ## @return a column_link_item_request_builder
                            ## 
                            def column_links_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["columnLink%2Did"] = id
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::ColumnLinks::Item::ColumnLinkItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the columnPositions property of the microsoft.graph.contentType entity.
                            ## @param id Unique identifier of the item
                            ## @return a column_definition_item_request_builder
                            ## 
                            def column_positions_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["columnDefinition%2Did"] = id
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::ColumnPositions::Item::ColumnDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the columns property of the microsoft.graph.contentType entity.
                            ## @param id Unique identifier of the item
                            ## @return a column_definition_item_request_builder
                            ## 
                            def columns_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["columnDefinition%2Did"] = id
                                return MicrosoftGraph::Shares::Item::List::ContentTypes::Item::Columns::Item::ColumnDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new ContentTypeItemRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/shares/{sharedDriveItem%2Did}/list/contentTypes/{contentType%2Did}{?%24select,%24expand}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                            ## 
                            ## Delete navigation property contentTypes for shares
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
                            ## The collection of content types present in this list.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of content_type
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update the navigation property contentTypes in shares
                            ## @param body The request body
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of content_type
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ContentType.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete navigation property contentTypes for shares
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
                            ## The collection of content types present in this list.
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
                            ## Update the navigation property contentTypes in shares
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
                            class ContentTypeItemRequestBuilderDeleteRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
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
                            class ContentTypeItemRequestBuilderGetRequestConfiguration
                                
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
                            class ContentTypeItemRequestBuilderPatchRequestConfiguration
                                
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
    end
end
