require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/list'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../groups'
require_relative '../../../../item'
require_relative '../../../sites'
require_relative '../../item'
require_relative '../lists'
require_relative './columns/columns_request_builder'
require_relative './content_types/content_types_request_builder'
require_relative './created_by_user/created_by_user_request_builder'
require_relative './drive/drive_request_builder'
require_relative './item'
require_relative './items/items_request_builder'
require_relative './last_modified_by_user/last_modified_by_user_request_builder'
require_relative './operations/operations_request_builder'
require_relative './subscriptions/subscriptions_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module Lists
                        module Item
                            ## 
                            # Provides operations to manage the lists property of the microsoft.graph.site entity.
                            class ListItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the columns property of the microsoft.graph.list entity.
                                def columns()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the contentTypes property of the microsoft.graph.list entity.
                                def content_types()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::ContentTypes::ContentTypesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the createdByUser property of the microsoft.graph.baseItem entity.
                                def created_by_user()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::CreatedByUser::CreatedByUserRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the drive property of the microsoft.graph.list entity.
                                def drive()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the items property of the microsoft.graph.list entity.
                                def items()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::Items::ItemsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the lastModifiedByUser property of the microsoft.graph.baseItem entity.
                                def last_modified_by_user()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::LastModifiedByUser::LastModifiedByUserRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the operations property of the microsoft.graph.list entity.
                                def operations()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the subscriptions property of the microsoft.graph.list entity.
                                def subscriptions()
                                    return MicrosoftGraph::Groups::Item::Sites::Item::Lists::Item::Subscriptions::SubscriptionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new ListItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/sites/{site%2Did}/lists/{list%2Did}{?%24select,%24expand}")
                                end
                                ## 
                                ## Delete navigation property lists for groups
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
                                ## Get a list of rich long-running operations associated with a list.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of list
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::List.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the navigation property lists in groups
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of list
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::List.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property lists for groups
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## Get a list of rich long-running operations associated with a list.
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
                                ## Update the navigation property lists in groups
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
                                # Get a list of rich long-running operations associated with a list.
                                class ListItemRequestBuilderGetQueryParameters
                                    
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
