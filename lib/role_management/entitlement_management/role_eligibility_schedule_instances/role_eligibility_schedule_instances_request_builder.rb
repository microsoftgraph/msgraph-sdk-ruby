require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../../models/unified_role_eligibility_schedule_instance'
require_relative '../../../models/unified_role_eligibility_schedule_instance_collection_response'
require_relative '../../role_management'
require_relative '../entitlement_management'
require_relative './count/count_request_builder'
require_relative './filter_by_current_user_with_on/filter_by_current_user_with_on_request_builder'
require_relative './item/unified_role_eligibility_schedule_instance_item_request_builder'
require_relative './role_eligibility_schedule_instances'

module MicrosoftGraph
    module RoleManagement
        module EntitlementManagement
            module RoleEligibilityScheduleInstances
                ## 
                # Provides operations to manage the roleEligibilityScheduleInstances property of the microsoft.graph.rbacApplication entity.
                class RoleEligibilityScheduleInstancesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to count the resources in the collection.
                    def count()
                        return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleEligibilityScheduleInstances::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the roleEligibilityScheduleInstances property of the microsoft.graph.rbacApplication entity.
                    ## @param unified_role_eligibility_schedule_instance_id The unique identifier of unifiedRoleEligibilityScheduleInstance
                    ## @return a unified_role_eligibility_schedule_instance_item_request_builder
                    ## 
                    def by_unified_role_eligibility_schedule_instance_id(unified_role_eligibility_schedule_instance_id)
                        raise StandardError, 'unified_role_eligibility_schedule_instance_id cannot be null' if unified_role_eligibility_schedule_instance_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["unifiedRoleEligibilityScheduleInstance%2Did"] = unified_role_eligibility_schedule_instance_id
                        return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleEligibilityScheduleInstances::Item::UnifiedRoleEligibilityScheduleInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new RoleEligibilityScheduleInstancesRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/roleManagement/entitlementManagement/roleEligibilityScheduleInstances{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                    end
                    ## 
                    ## Provides operations to call the filterByCurrentUser method.
                    ## @param on Usage: on='{on}'
                    ## @return a filter_by_current_user_with_on_request_builder
                    ## 
                    def filter_by_current_user_with_on(on)
                        raise StandardError, 'on cannot be null' if on.nil?
                        return FilterByCurrentUserWithOnRequestBuilder.new(@path_parameters, @request_adapter, on)
                    end
                    ## 
                    ## Instances for role eligibility requests.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of unified_role_eligibility_schedule_instance_collection_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::UnifiedRoleEligibilityScheduleInstanceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Create new navigation property to roleEligibilityScheduleInstances for roleManagement
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of unified_role_eligibility_schedule_instance
                    ## 
                    def post(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_post_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::UnifiedRoleEligibilityScheduleInstance.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Instances for role eligibility requests.
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
                    ## Create new navigation property to roleEligibilityScheduleInstances for roleManagement
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
                    ## @return a role_eligibility_schedule_instances_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return RoleEligibilityScheduleInstancesRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Instances for role eligibility requests.
                    class RoleEligibilityScheduleInstancesRequestBuilderGetQueryParameters
                        
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
