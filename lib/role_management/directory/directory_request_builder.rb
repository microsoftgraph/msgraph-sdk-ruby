require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/rbac_application'
require_relative '../role_management'
require_relative './directory'
require_relative './role_assignments/item/unified_role_assignment_item_request_builder'
require_relative './role_assignments/role_assignments_request_builder'
require_relative './role_assignment_schedule_instances/item/unified_role_assignment_schedule_instance_item_request_builder'
require_relative './role_assignment_schedule_instances/role_assignment_schedule_instances_request_builder'
require_relative './role_assignment_schedule_requests/item/unified_role_assignment_schedule_request_item_request_builder'
require_relative './role_assignment_schedule_requests/role_assignment_schedule_requests_request_builder'
require_relative './role_assignment_schedules/item/unified_role_assignment_schedule_item_request_builder'
require_relative './role_assignment_schedules/role_assignment_schedules_request_builder'
require_relative './role_definitions/item/unified_role_definition_item_request_builder'
require_relative './role_definitions/role_definitions_request_builder'
require_relative './role_eligibility_schedule_instances/item/unified_role_eligibility_schedule_instance_item_request_builder'
require_relative './role_eligibility_schedule_instances/role_eligibility_schedule_instances_request_builder'
require_relative './role_eligibility_schedule_requests/item/unified_role_eligibility_schedule_request_item_request_builder'
require_relative './role_eligibility_schedule_requests/role_eligibility_schedule_requests_request_builder'
require_relative './role_eligibility_schedules/item/unified_role_eligibility_schedule_item_request_builder'
require_relative './role_eligibility_schedules/role_eligibility_schedules_request_builder'

module MicrosoftGraph
    module RoleManagement
        module Directory
            ## 
            # Provides operations to manage the directory property of the microsoft.graph.roleManagement entity.
            class DirectoryRequestBuilder
                
                ## 
                # Path parameters for the request
                @path_parameters
                ## 
                # The request adapter to use to execute the requests.
                @request_adapter
                ## 
                # Provides operations to manage the roleAssignments property of the microsoft.graph.rbacApplication entity.
                def role_assignments()
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignments::RoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentScheduleInstances property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedule_instances()
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignmentScheduleInstances::RoleAssignmentScheduleInstancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentScheduleRequests property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedule_requests()
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignmentScheduleRequests::RoleAssignmentScheduleRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentSchedules property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedules()
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignmentSchedules::RoleAssignmentSchedulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleDefinitions property of the microsoft.graph.rbacApplication entity.
                def role_definitions()
                    return MicrosoftGraph::RoleManagement::Directory::RoleDefinitions::RoleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilityScheduleInstances property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedule_instances()
                    return MicrosoftGraph::RoleManagement::Directory::RoleEligibilityScheduleInstances::RoleEligibilityScheduleInstancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilityScheduleRequests property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedule_requests()
                    return MicrosoftGraph::RoleManagement::Directory::RoleEligibilityScheduleRequests::RoleEligibilityScheduleRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilitySchedules property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedules()
                    return MicrosoftGraph::RoleManagement::Directory::RoleEligibilitySchedules::RoleEligibilitySchedulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                ## Instantiates a new DirectoryRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/roleManagement/directory{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Delete navigation property directory for roleManagement
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
                ## Get directory from roleManagement
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of rbac_application
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::RbacApplication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property directory in roleManagement
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of rbac_application
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::RbacApplication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the roleAssignments property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_item_request_builder
                ## 
                def role_assignments_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignment%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignments::Item::UnifiedRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignmentScheduleInstances property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_schedule_instance_item_request_builder
                ## 
                def role_assignment_schedule_instances_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignmentScheduleInstance%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignmentScheduleInstances::Item::UnifiedRoleAssignmentScheduleInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignmentScheduleRequests property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_schedule_request_item_request_builder
                ## 
                def role_assignment_schedule_requests_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignmentScheduleRequest%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignmentScheduleRequests::Item::UnifiedRoleAssignmentScheduleRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignmentSchedules property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_schedule_item_request_builder
                ## 
                def role_assignment_schedules_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignmentSchedule%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleAssignmentSchedules::Item::UnifiedRoleAssignmentScheduleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleDefinitions property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_definition_item_request_builder
                ## 
                def role_definitions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleDefinition%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleDefinitions::Item::UnifiedRoleDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleEligibilityScheduleInstances property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_eligibility_schedule_instance_item_request_builder
                ## 
                def role_eligibility_schedule_instances_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleEligibilityScheduleInstance%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleEligibilityScheduleInstances::Item::UnifiedRoleEligibilityScheduleInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleEligibilityScheduleRequests property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_eligibility_schedule_request_item_request_builder
                ## 
                def role_eligibility_schedule_requests_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleEligibilityScheduleRequest%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleEligibilityScheduleRequests::Item::UnifiedRoleEligibilityScheduleRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleEligibilitySchedules property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_eligibility_schedule_item_request_builder
                ## 
                def role_eligibility_schedules_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleEligibilitySchedule%2Did"] = id
                    return MicrosoftGraph::RoleManagement::Directory::RoleEligibilitySchedules::Item::UnifiedRoleEligibilityScheduleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete navigation property directory for roleManagement
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
                ## Get directory from roleManagement
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
                ## Update the navigation property directory in roleManagement
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
                class DirectoryRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Get directory from roleManagement
                class DirectoryRequestBuilderGetQueryParameters
                    
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
                class DirectoryRequestBuilderGetRequestConfiguration
                    
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
                class DirectoryRequestBuilderPatchRequestConfiguration
                    
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
