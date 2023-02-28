require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/list_item'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../sites'
require_relative '../../../../item'
require_relative '../../../lists'
require_relative '../../item'
require_relative '../items'
require_relative './analytics/analytics_request_builder'
require_relative './document_set_versions/document_set_versions_request_builder'
require_relative './document_set_versions/item/document_set_version_item_request_builder'
require_relative './drive_item/drive_item_request_builder'
require_relative './fields/fields_request_builder'
require_relative './get_activities_by_interval/get_activities_by_interval_request_builder'
require_relative './get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval/dab1c2feb9ecf2d349721478e4ff8fe9c46b97a0c44110851b2b17a08d22383e'
require_relative './item'
require_relative './versions/item/list_item_version_item_request_builder'
require_relative './versions/versions_request_builder'

module MicrosoftGraph
    module Sites
        module Item
            module Lists
                module Item
                    module Items
                        module Item
                            ## 
                            # Provides operations to manage the items property of the microsoft.graph.list entity.
                            class ListItemItemRequestBuilder
                                
                                ## 
                                # Provides operations to manage the analytics property of the microsoft.graph.listItem entity.
                                def analytics()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::Analytics::AnalyticsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the documentSetVersions property of the microsoft.graph.listItem entity.
                                def document_set_versions()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::DocumentSetVersions::DocumentSetVersionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the driveItem property of the microsoft.graph.listItem entity.
                                def drive_item()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::DriveItem::DriveItemRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the fields property of the microsoft.graph.listItem entity.
                                def fields()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::Fields::FieldsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the getActivitiesByInterval method.
                                def get_activities_by_interval()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::GetActivitiesByInterval::GetActivitiesByIntervalRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                # Provides operations to manage the versions property of the microsoft.graph.listItem entity.
                                def versions()
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::Versions::VersionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new ListItemItemRequestBuilder and sets the default values.
                                ## @param pathParameters Path parameters for the request
                                ## @param requestAdapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                    @url_template = "{+baseurl}/sites/{site%2Did}/lists/{list%2Did}/items/{listItem%2Did}{?%24select,%24expand}"
                                    @request_adapter = request_adapter
                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                end
                                ## 
                                ## Delete navigation property items for sites
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
                                ## Provides operations to manage the documentSetVersions property of the microsoft.graph.listItem entity.
                                ## @param id Unique identifier of the item
                                ## @return a document_set_version_item_request_builder
                                ## 
                                def document_set_versions_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["documentSetVersion%2Did"] = id
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::DocumentSetVersions::Item::DocumentSetVersionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## All items contained in the list.
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of list_item
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ListItem.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Provides operations to call the getActivitiesByInterval method.
                                ## @param endDateTime Usage: endDateTime='{endDateTime}'
                                ## @param interval Usage: interval='{interval}'
                                ## @param startDateTime Usage: startDateTime='{startDateTime}'
                                ## @return a get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval_request_builder
                                ## 
                                def get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval(end_date_time, interval, start_date_time)
                                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                                    raise StandardError, 'interval cannot be null' if interval.nil?
                                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                                    return GetActivitiesByIntervalWithStartDateTimeWithEndDateTimeWithIntervalRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, interval, startDateTime)
                                end
                                ## 
                                ## Update the navigation property items in sites
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of list_item
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ListItem.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property items for sites
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
                                ## All items contained in the list.
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
                                ## Update the navigation property items in sites
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
                                ## Provides operations to manage the versions property of the microsoft.graph.listItem entity.
                                ## @param id Unique identifier of the item
                                ## @return a list_item_version_item_request_builder
                                ## 
                                def versions_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["listItemVersion%2Did"] = id
                                    return MicrosoftGraph::Sites::Item::Lists::Item::Items::Item::Versions::Item::ListItemVersionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class ListItemItemRequestBuilderDeleteRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end

                                ## 
                                # All items contained in the list.
                                class ListItemItemRequestBuilderGetQueryParameters
                                    
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
                                class ListItemItemRequestBuilderGetRequestConfiguration
                                    
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
                                class ListItemItemRequestBuilderPatchRequestConfiguration
                                    
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
end
