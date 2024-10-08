require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/device_compliance_policy'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../device_management'
require_relative '../device_compliance_policies'
require_relative './assign/assign_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './device_setting_state_summaries/device_setting_state_summaries_request_builder'
require_relative './device_statuses/device_statuses_request_builder'
require_relative './device_status_overview/device_status_overview_request_builder'
require_relative './item'
require_relative './schedule_actions_for_rules/schedule_actions_for_rules_request_builder'
require_relative './scheduled_actions_for_rule/scheduled_actions_for_rule_request_builder'
require_relative './user_statuses/user_statuses_request_builder'
require_relative './user_status_overview/user_status_overview_request_builder'

module MicrosoftGraph
    module DeviceManagement
        module DeviceCompliancePolicies
            module Item
                ## 
                # Provides operations to manage the deviceCompliancePolicies property of the microsoft.graph.deviceManagement entity.
                class DeviceCompliancePolicyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the assign method.
                    def assign()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::Assign::AssignRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the assignments property of the microsoft.graph.deviceCompliancePolicy entity.
                    def assignments()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceSettingStateSummaries property of the microsoft.graph.deviceCompliancePolicy entity.
                    def device_setting_state_summaries()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::DeviceSettingStateSummaries::DeviceSettingStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceStatuses property of the microsoft.graph.deviceCompliancePolicy entity.
                    def device_statuses()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::DeviceStatuses::DeviceStatusesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceStatusOverview property of the microsoft.graph.deviceCompliancePolicy entity.
                    def device_status_overview()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::DeviceStatusOverview::DeviceStatusOverviewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the scheduleActionsForRules method.
                    def schedule_actions_for_rules()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::ScheduleActionsForRules::ScheduleActionsForRulesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the scheduledActionsForRule property of the microsoft.graph.deviceCompliancePolicy entity.
                    def scheduled_actions_for_rule()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::ScheduledActionsForRule::ScheduledActionsForRuleRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the userStatuses property of the microsoft.graph.deviceCompliancePolicy entity.
                    def user_statuses()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::UserStatuses::UserStatusesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the userStatusOverview property of the microsoft.graph.deviceCompliancePolicy entity.
                    def user_status_overview()
                        return MicrosoftGraph::DeviceManagement::DeviceCompliancePolicies::Item::UserStatusOverview::UserStatusOverviewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new DeviceCompliancePolicyItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicy%2Did}{?%24expand,%24select}")
                    end
                    ## 
                    ## Deletes a windows81CompliancePolicy.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Read properties and relationships of the windowsPhone81CompliancePolicy object.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_compliance_policy
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceCompliancePolicy.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the properties of a iosCompliancePolicy object.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_compliance_policy
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceCompliancePolicy.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Deletes a windows81CompliancePolicy.
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
                    ## Read properties and relationships of the windowsPhone81CompliancePolicy object.
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
                    ## Update the properties of a iosCompliancePolicy object.
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
                        request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a device_compliance_policy_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return DeviceCompliancePolicyItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Read properties and relationships of the windowsPhone81CompliancePolicy object.
                    class DeviceCompliancePolicyItemRequestBuilderGetQueryParameters
                        
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
