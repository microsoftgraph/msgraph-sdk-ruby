require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../../models/virtual_event_webinar'
require_relative '../../../models/virtual_event_webinar_collection_response'
require_relative '../../solutions'
require_relative '../virtual_events'
require_relative './count/count_request_builder'
require_relative './get_by_user_id_and_role_with_user_id_with_role/get_by_user_id_and_role_with_user_id_with_role_request_builder'
require_relative './get_by_user_role_with_role/get_by_user_role_with_role_request_builder'
require_relative './item/virtual_event_webinar_item_request_builder'
require_relative './webinars'

module MicrosoftGraph
    module Solutions
        module VirtualEvents
            module Webinars
                ## 
                # Provides operations to manage the webinars property of the microsoft.graph.virtualEventsRoot entity.
                class WebinarsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to count the resources in the collection.
                    def count()
                        return MicrosoftGraph::Solutions::VirtualEvents::Webinars::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the webinars property of the microsoft.graph.virtualEventsRoot entity.
                    ## @param virtual_event_webinar_id The unique identifier of virtualEventWebinar
                    ## @return a virtual_event_webinar_item_request_builder
                    ## 
                    def by_virtual_event_webinar_id(virtual_event_webinar_id)
                        raise StandardError, 'virtual_event_webinar_id cannot be null' if virtual_event_webinar_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["virtualEventWebinar%2Did"] = virtual_event_webinar_id
                        return MicrosoftGraph::Solutions::VirtualEvents::Webinars::Item::VirtualEventWebinarItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WebinarsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/solutions/virtualEvents/webinars{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                    end
                    ## 
                    ## Get the list of all virtualEventWebinar objects created in the tenant.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of virtual_event_webinar_collection_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::VirtualEventWebinarCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the getByUserIdAndRole method.
                    ## @param role Usage: role='{role}'
                    ## @param user_id Usage: userId='{userId}'
                    ## @return a get_by_user_id_and_role_with_user_id_with_role_request_builder
                    ## 
                    def get_by_user_id_and_role_with_user_id_with_role(role, user_id)
                        raise StandardError, 'role cannot be null' if role.nil?
                        raise StandardError, 'user_id cannot be null' if user_id.nil?
                        return GetByUserIdAndRoleWithUserIdWithRoleRequestBuilder.new(@path_parameters, @request_adapter, role, userId)
                    end
                    ## 
                    ## Provides operations to call the getByUserRole method.
                    ## @param role Usage: role='{role}'
                    ## @return a get_by_user_role_with_role_request_builder
                    ## 
                    def get_by_user_role_with_role(role)
                        raise StandardError, 'role cannot be null' if role.nil?
                        return GetByUserRoleWithRoleRequestBuilder.new(@path_parameters, @request_adapter, role)
                    end
                    ## 
                    ## Create new navigation property to webinars for solutions
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of virtual_event_webinar
                    ## 
                    def post(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_post_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::VirtualEventWebinar.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Get the list of all virtualEventWebinar objects created in the tenant.
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
                    ## Create new navigation property to webinars for solutions
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
                        request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :POST
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a webinars_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WebinarsRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Get the list of all virtualEventWebinar objects created in the tenant.
                    class WebinarsRequestBuilderGetQueryParameters
                        
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
