require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../../models/schedule'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../team'
require_relative './offer_shift_requests/offer_shift_requests_request_builder'
require_relative './open_shift_change_requests/open_shift_change_requests_request_builder'
require_relative './open_shifts/open_shifts_request_builder'
require_relative './schedule'
require_relative './scheduling_groups/scheduling_groups_request_builder'
require_relative './share/share_request_builder'
require_relative './shifts/shifts_request_builder'
require_relative './swap_shifts_change_requests/swap_shifts_change_requests_request_builder'
require_relative './time_off_reasons/time_off_reasons_request_builder'
require_relative './time_off_requests/time_off_requests_request_builder'
require_relative './times_off/times_off_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Team
                module Schedule
                    ## 
                    # Provides operations to manage the schedule property of the microsoft.graph.team entity.
                    class ScheduleRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the offerShiftRequests property of the microsoft.graph.schedule entity.
                        def offer_shift_requests()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::OfferShiftRequests::OfferShiftRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the openShiftChangeRequests property of the microsoft.graph.schedule entity.
                        def open_shift_change_requests()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::OpenShiftChangeRequests::OpenShiftChangeRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the openShifts property of the microsoft.graph.schedule entity.
                        def open_shifts()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::OpenShifts::OpenShiftsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the schedulingGroups property of the microsoft.graph.schedule entity.
                        def scheduling_groups()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::SchedulingGroups::SchedulingGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the share method.
                        def share()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::Share::ShareRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the shifts property of the microsoft.graph.schedule entity.
                        def shifts()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::Shifts::ShiftsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the swapShiftsChangeRequests property of the microsoft.graph.schedule entity.
                        def swap_shifts_change_requests()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::SwapShiftsChangeRequests::SwapShiftsChangeRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the timeOffReasons property of the microsoft.graph.schedule entity.
                        def time_off_reasons()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::TimeOffReasons::TimeOffReasonsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the timeOffRequests property of the microsoft.graph.schedule entity.
                        def time_off_requests()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::TimeOffRequests::TimeOffRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the timesOff property of the microsoft.graph.schedule entity.
                        def times_off()
                            return MicrosoftGraph::Groups::Item::Team::Schedule::TimesOff::TimesOffRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ScheduleRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/team/schedule{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property schedule for groups
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
                        ## Retrieve the properties and relationships of a schedule object. The schedule creation process conforms to the One API guideline for resource based long running operations (RELO).When clients use the PUT method, if the schedule is provisioned, the operation updates the schedule; otherwise, the operation starts the schedule provisioning process in the background. During schedule provisioning, clients can use the GET method to get the schedule and look at the provisionStatus property for the current state of the provisioning. If the provisioning failed, clients can get additional information from the provisionStatusCode property. Clients can also inspect the configuration of the schedule. This API is available in the following national cloud deployments.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of schedule
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Schedule.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the navigation property schedule in groups
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of schedule
                        ## 
                        def put(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_put_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Schedule.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete navigation property schedule for groups
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
                        ## Retrieve the properties and relationships of a schedule object. The schedule creation process conforms to the One API guideline for resource based long running operations (RELO).When clients use the PUT method, if the schedule is provisioned, the operation updates the schedule; otherwise, the operation starts the schedule provisioning process in the background. During schedule provisioning, clients can use the GET method to get the schedule and look at the provisionStatus property for the current state of the provisioning. If the provisioning failed, clients can get additional information from the provisionStatusCode property. Clients can also inspect the configuration of the schedule. This API is available in the following national cloud deployments.
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
                        ## Update the navigation property schedule in groups
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_put_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :PUT
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a schedule_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ScheduleRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Retrieve the properties and relationships of a schedule object. The schedule creation process conforms to the One API guideline for resource based long running operations (RELO).When clients use the PUT method, if the schedule is provisioned, the operation updates the schedule; otherwise, the operation starts the schedule provisioning process in the background. During schedule provisioning, clients can use the GET method to get the schedule and look at the provisionStatus property for the current state of the provisioning. If the provisioning failed, clients can get additional information from the provisionStatusCode property. Clients can also inspect the configuration of the schedule. This API is available in the following national cloud deployments.
                        class ScheduleRequestBuilderGetQueryParameters
                            
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
