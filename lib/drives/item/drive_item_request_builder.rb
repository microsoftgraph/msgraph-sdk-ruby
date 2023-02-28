require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/drive'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../drives'
require_relative './bundles/bundles_request_builder'
require_relative './bundles/item/drive_item_item_request_builder'
require_relative './following/following_request_builder'
require_relative './following/item/drive_item_item_request_builder'
require_relative './item'
require_relative './items/item/drive_item_item_request_builder'
require_relative './items/items_request_builder'
require_relative './list/list_request_builder'
require_relative './recent/recent_request_builder'
require_relative './root/root_request_builder'
require_relative './search_with_q/search_with_q_request_builder'
require_relative './shared_with_me/shared_with_me_request_builder'
require_relative './special/item/drive_item_item_request_builder'
require_relative './special/special_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            ## 
            # Provides operations to manage the collection of drive entities.
            class DriveItemRequestBuilder
                
                ## 
                # Provides operations to manage the bundles property of the microsoft.graph.drive entity.
                def bundles()
                    return MicrosoftGraph::Drives::Item::Bundles::BundlesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the following property of the microsoft.graph.drive entity.
                def following()
                    return MicrosoftGraph::Drives::Item::Following::FollowingRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the items property of the microsoft.graph.drive entity.
                def items()
                    return MicrosoftGraph::Drives::Item::Items::ItemsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the list property of the microsoft.graph.drive entity.
                def list()
                    return MicrosoftGraph::Drives::Item::List::ListRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Path parameters for the request
                @path_parameters
                ## 
                # Provides operations to call the recent method.
                def recent()
                    return MicrosoftGraph::Drives::Item::Recent::RecentRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The request adapter to use to execute the requests.
                @request_adapter
                ## 
                # Provides operations to manage the root property of the microsoft.graph.drive entity.
                def root()
                    return MicrosoftGraph::Drives::Item::Root::RootRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the sharedWithMe method.
                def shared_with_me()
                    return MicrosoftGraph::Drives::Item::SharedWithMe::SharedWithMeRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the special property of the microsoft.graph.drive entity.
                def special()
                    return MicrosoftGraph::Drives::Item::Special::SpecialRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                ## Provides operations to manage the bundles property of the microsoft.graph.drive entity.
                ## @param id Unique identifier of the item
                ## @return a drive_item_item_request_builder
                ## 
                def bundles_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["driveItem%2Did"] = id
                    return MicrosoftGraph::Drives::Item::Bundles::Item::DriveItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new DriveItemRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/drives/{drive%2Did}{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Delete entity from drives
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
                ## Provides operations to manage the following property of the microsoft.graph.drive entity.
                ## @param id Unique identifier of the item
                ## @return a drive_item_item_request_builder
                ## 
                def following_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["driveItem%2Did"] = id
                    return MicrosoftGraph::Drives::Item::Following::Item::DriveItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Retrieve the properties and relationships of a Drive resource. A Drive is the top-level container for a file system, such as OneDrive or SharePoint document libraries.
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of drive
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the items property of the microsoft.graph.drive entity.
                ## @param id Unique identifier of the item
                ## @return a drive_item_item_request_builder
                ## 
                def items_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["driveItem%2Did"] = id
                    return MicrosoftGraph::Drives::Item::Items::Item::DriveItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update entity in drives
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of drive
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to call the search method.
                ## @param q Usage: q='{q}'
                ## @return a search_with_q_request_builder
                ## 
                def search_with_q(q)
                    raise StandardError, 'q cannot be null' if q.nil?
                    return SearchWithQRequestBuilder.new(@path_parameters, @request_adapter, q)
                end
                ## 
                ## Provides operations to manage the special property of the microsoft.graph.drive entity.
                ## @param id Unique identifier of the item
                ## @return a drive_item_item_request_builder
                ## 
                def special_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["driveItem%2Did"] = id
                    return MicrosoftGraph::Drives::Item::Special::Item::DriveItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete entity from drives
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
                ## Retrieve the properties and relationships of a Drive resource. A Drive is the top-level container for a file system, such as OneDrive or SharePoint document libraries.
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
                ## Update entity in drives
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
                class DriveItemRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Retrieve the properties and relationships of a Drive resource. A Drive is the top-level container for a file system, such as OneDrive or SharePoint document libraries.
                class DriveItemRequestBuilderGetQueryParameters
                    
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
                class DriveItemRequestBuilderGetRequestConfiguration
                    
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
                class DriveItemRequestBuilderPatchRequestConfiguration
                    
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
