require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../../models/rbac_application'
require_relative '../role_management'
require_relative './entitlement_management'
require_relative './resource_namespaces/resource_namespaces_request_builder'
require_relative './role_assignments/role_assignments_request_builder'
require_relative './role_assignment_schedule_instances/role_assignment_schedule_instances_request_builder'
require_relative './role_assignment_schedule_requests/role_assignment_schedule_requests_request_builder'
require_relative './role_assignment_schedules/role_assignment_schedules_request_builder'
require_relative './role_definitions/role_definitions_request_builder'
require_relative './role_eligibility_schedule_instances/role_eligibility_schedule_instances_request_builder'
require_relative './role_eligibility_schedule_requests/role_eligibility_schedule_requests_request_builder'
require_relative './role_eligibility_schedules/role_eligibility_schedules_request_builder'

module MicrosoftGraph
    module RoleManagement
        module EntitlementManagement
            ## 
            # Provides operations to manage the entitlementManagement property of the microsoft.graph.roleManagement entity.
            class EntitlementManagementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the resourceNamespaces property of the microsoft.graph.rbacApplication entity.
                def resource_namespaces()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::ResourceNamespaces::ResourceNamespacesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignments property of the microsoft.graph.rbacApplication entity.
                def role_assignments()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleAssignments::RoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentScheduleInstances property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedule_instances()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleAssignmentScheduleInstances::RoleAssignmentScheduleInstancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentScheduleRequests property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedule_requests()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleAssignmentScheduleRequests::RoleAssignmentScheduleRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentSchedules property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedules()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleAssignmentSchedules::RoleAssignmentSchedulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleDefinitions property of the microsoft.graph.rbacApplication entity.
                def role_definitions()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleDefinitions::RoleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilityScheduleInstances property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedule_instances()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleEligibilityScheduleInstances::RoleEligibilityScheduleInstancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilityScheduleRequests property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedule_requests()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleEligibilityScheduleRequests::RoleEligibilityScheduleRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilitySchedules property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedules()
                    return MicrosoftGraph::RoleManagement::EntitlementManagement::RoleEligibilitySchedules::RoleEligibilitySchedulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new EntitlementManagementRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/roleManagement/entitlementManagement{?%24expand,%24select}")
                end
                ## 
                ## Delete navigation property entitlementManagement for roleManagement
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
                ## Container for roles and assignments for entitlement management resources.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of rbac_application
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::RbacApplication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property entitlementManagement in roleManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of rbac_application
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::RbacApplication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property entitlementManagement for roleManagement
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
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Container for roles and assignments for entitlement management resources.
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
                ## Update the navigation property entitlementManagement in roleManagement
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
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a entitlement_management_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return EntitlementManagementRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Container for roles and assignments for entitlement management resources.
                class EntitlementManagementRequestBuilderGetQueryParameters
                    
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
