require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/site'
require_relative '../sites'
require_relative './analytics/analytics_request_builder'
require_relative './columns/columns_request_builder'
require_relative './columns/item/column_definition_item_request_builder'
require_relative './content_types/content_types_request_builder'
require_relative './content_types/item/content_type_item_request_builder'
require_relative './drive/drive_request_builder'
require_relative './drives/drives_request_builder'
require_relative './drives/item/drive_item_request_builder'
require_relative './external_columns/external_columns_request_builder'
require_relative './external_columns/item/column_definition_item_request_builder'
require_relative './get_activities_by_interval/get_activities_by_interval_request_builder'
require_relative './get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval/get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval_request_builder'
require_relative './get_applicable_content_types_for_list_with_list_id/get_applicable_content_types_for_list_with_list_id_request_builder'
require_relative './get_by_path_with_path/get_by_path_with_path_request_builder'
require_relative './item'
require_relative './items/item/base_item_item_request_builder'
require_relative './items/items_request_builder'
require_relative './lists/item/list_item_request_builder'
require_relative './lists/lists_request_builder'
require_relative './onenote/onenote_request_builder'
require_relative './operations/item/rich_long_running_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './permissions/item/permission_item_request_builder'
require_relative './permissions/permissions_request_builder'
require_relative './sites/item/site_item_request_builder'
require_relative './sites/sites_request_builder'
require_relative './term_store/term_store_request_builder'
require_relative './term_stores/item/store_item_request_builder'
require_relative './term_stores/term_stores_request_builder'

module MicrosoftGraph
    module Sites
        module Item
            ## 
            # Provides operations to manage the collection of site entities.
            class SiteItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the analytics property of the microsoft.graph.site entity.
                def analytics()
                    return MicrosoftGraph::Sites::Item::Analytics::AnalyticsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the columns property of the microsoft.graph.site entity.
                def columns()
                    return MicrosoftGraph::Sites::Item::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the contentTypes property of the microsoft.graph.site entity.
                def content_types()
                    return MicrosoftGraph::Sites::Item::ContentTypes::ContentTypesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the drive property of the microsoft.graph.site entity.
                def drive()
                    return MicrosoftGraph::Sites::Item::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the drives property of the microsoft.graph.site entity.
                def drives()
                    return MicrosoftGraph::Sites::Item::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the externalColumns property of the microsoft.graph.site entity.
                def external_columns()
                    return MicrosoftGraph::Sites::Item::ExternalColumns::ExternalColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getActivitiesByInterval method.
                def get_activities_by_interval()
                    return MicrosoftGraph::Sites::Item::GetActivitiesByInterval::GetActivitiesByIntervalRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the items property of the microsoft.graph.site entity.
                def items()
                    return MicrosoftGraph::Sites::Item::Items::ItemsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the lists property of the microsoft.graph.site entity.
                def lists()
                    return MicrosoftGraph::Sites::Item::Lists::ListsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the onenote property of the microsoft.graph.site entity.
                def onenote()
                    return MicrosoftGraph::Sites::Item::Onenote::OnenoteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the operations property of the microsoft.graph.site entity.
                def operations()
                    return MicrosoftGraph::Sites::Item::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the permissions property of the microsoft.graph.site entity.
                def permissions()
                    return MicrosoftGraph::Sites::Item::Permissions::PermissionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sites property of the microsoft.graph.site entity.
                def sites()
                    return MicrosoftGraph::Sites::Item::Sites::SitesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the termStore property of the microsoft.graph.site entity.
                def term_store()
                    return MicrosoftGraph::Sites::Item::TermStore::TermStoreRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the termStores property of the microsoft.graph.site entity.
                def term_stores()
                    return MicrosoftGraph::Sites::Item::TermStores::TermStoresRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the columns property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a column_definition_item_request_builder
                ## 
                def columns_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["columnDefinition%2Did"] = id
                    return MicrosoftGraph::Sites::Item::Columns::Item::ColumnDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new SiteItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}{?%24select,%24expand}")
                end
                ## 
                ## Provides operations to manage the contentTypes property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a content_type_item_request_builder
                ## 
                def content_types_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["contentType%2Did"] = id
                    return MicrosoftGraph::Sites::Item::ContentTypes::Item::ContentTypeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the drives property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a drive_item_request_builder
                ## 
                def drives_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["drive%2Did"] = id
                    return MicrosoftGraph::Sites::Item::Drives::Item::DriveItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the externalColumns property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a column_definition_item_request_builder
                ## 
                def external_columns_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["columnDefinition%2Did"] = id
                    return MicrosoftGraph::Sites::Item::ExternalColumns::Item::ColumnDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Retrieve properties and relationships for a [site][] resource.A **site** resource represents a team site in SharePoint.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of site
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Site.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to call the getActivitiesByInterval method.
                ## @param end_date_time Usage: endDateTime='{endDateTime}'
                ## @param interval Usage: interval='{interval}'
                ## @param start_date_time Usage: startDateTime='{startDateTime}'
                ## @return a get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval_request_builder
                ## 
                def get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval(end_date_time, interval, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'interval cannot be null' if interval.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return GetActivitiesByIntervalWithStartDateTimeWithEndDateTimeWithIntervalRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, interval, startDateTime)
                end
                ## 
                ## Provides operations to call the getApplicableContentTypesForList method.
                ## @param list_id Usage: listId='{listId}'
                ## @return a get_applicable_content_types_for_list_with_list_id_request_builder
                ## 
                def get_applicable_content_types_for_list_with_list_id(list_id)
                    raise StandardError, 'list_id cannot be null' if list_id.nil?
                    return GetApplicableContentTypesForListWithListIdRequestBuilder.new(@path_parameters, @request_adapter, listId)
                end
                ## 
                ## Provides operations to call the getByPath method.
                ## @param path Usage: path='{path}'
                ## @return a get_by_path_with_path_request_builder
                ## 
                def get_by_path_with_path(path)
                    raise StandardError, 'path cannot be null' if path.nil?
                    return GetByPathWithPathRequestBuilder.new(@path_parameters, @request_adapter, path)
                end
                ## 
                ## Provides operations to manage the items property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a base_item_item_request_builder
                ## 
                def items_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["baseItem%2Did"] = id
                    return MicrosoftGraph::Sites::Item::Items::Item::BaseItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the lists property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a list_item_request_builder
                ## 
                def lists_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["list%2Did"] = id
                    return MicrosoftGraph::Sites::Item::Lists::Item::ListItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the operations property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a rich_long_running_operation_item_request_builder
                ## 
                def operations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["richLongRunningOperation%2Did"] = id
                    return MicrosoftGraph::Sites::Item::Operations::Item::RichLongRunningOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update entity in sites
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of site
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Site.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the permissions property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a permission_item_request_builder
                ## 
                def permissions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["permission%2Did"] = id
                    return MicrosoftGraph::Sites::Item::Permissions::Item::PermissionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the sites property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a site_item_request_builder
                ## 
                def sites_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["site%2Did1"] = id
                    return MicrosoftGraph::Sites::Item::Sites::Item::SiteItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the termStores property of the microsoft.graph.site entity.
                ## @param id Unique identifier of the item
                ## @return a store_item_request_builder
                ## 
                def term_stores_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["store%2Did"] = id
                    return MicrosoftGraph::Sites::Item::TermStores::Item::StoreItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Retrieve properties and relationships for a [site][] resource.A **site** resource represents a team site in SharePoint.
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
                ## Update entity in sites
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    return request_info
                end

                ## 
                # Retrieve properties and relationships for a [site][] resource.A **site** resource represents a team site in SharePoint.
                class SiteItemRequestBuilderGetQueryParameters
                    
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
