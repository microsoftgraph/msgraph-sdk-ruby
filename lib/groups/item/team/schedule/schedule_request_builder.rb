require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../../models/schedule'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../team'
require_relative './offer_shift_requests/item/offer_shift_request_item_request_builder'
require_relative './offer_shift_requests/offer_shift_requests_request_builder'
require_relative './open_shift_change_requests/item/open_shift_change_request_item_request_builder'
require_relative './open_shift_change_requests/open_shift_change_requests_request_builder'
require_relative './open_shifts/item/open_shift_item_request_builder'
require_relative './open_shifts/open_shifts_request_builder'
require_relative './schedule'
require_relative './scheduling_groups/item/scheduling_group_item_request_builder'
require_relative './scheduling_groups/scheduling_groups_request_builder'
require_relative './share/share_request_builder'
require_relative './shifts/item/shift_item_request_builder'
require_relative './shifts/shifts_request_builder'
require_relative './swap_shifts_change_requests/item/swap_shifts_change_request_item_request_builder'
require_relative './swap_shifts_change_requests/swap_shifts_change_requests_request_builder'
require_relative './time_off_reasons/item/time_off_reason_item_request_builder'
require_relative './time_off_reasons/time_off_reasons_request_builder'
require_relative './time_off_requests/item/time_off_request_item_request_builder'
require_relative './time_off_requests/time_off_requests_request_builder'
require_relative './times_off/item/time_off_item_request_builder'
require_relative './times_off/times_off_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Team
                module Schedule
                    ## 
                    # Provides operations to manage the schedule property of the microsoft.graph.team entity.
                    class ScheduleRequestBuilder
                        
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
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
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
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Instantiates a new ScheduleRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/groups/{group%2Did}/team/schedule{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Delete navigation property schedule for groups
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
                        ## Retrieve the properties and relationships of a schedule object. The schedule creation process conforms to the One API guideline for resource based long running operations (RELO).When clients use the PUT method, if the schedule is provisioned, the operation updates the schedule; otherwise, the operation starts the schedule provisioning process in the background. During schedule provisioning, clients can use the GET method to get the schedule and look at the `provisionStatus` property for the current state of the provisioning. If the provisioning failed, clients can get additional information from the `provisionStatusCode` property. Clients can also inspect the configuration of the schedule.
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of schedule
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Schedule.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the offerShiftRequests property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a offer_shift_request_item_request_builder
                        ## 
                        def offer_shift_requests_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["offerShiftRequest%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::OfferShiftRequests::Item::OfferShiftRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the openShiftChangeRequests property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a open_shift_change_request_item_request_builder
                        ## 
                        def open_shift_change_requests_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["openShiftChangeRequest%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::OpenShiftChangeRequests::Item::OpenShiftChangeRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the openShifts property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a open_shift_item_request_builder
                        ## 
                        def open_shifts_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["openShift%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::OpenShifts::Item::OpenShiftItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Update the navigation property schedule in groups
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of schedule
                        ## 
                        def put(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_put_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Schedule.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the schedulingGroups property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a scheduling_group_item_request_builder
                        ## 
                        def scheduling_groups_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["schedulingGroup%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::SchedulingGroups::Item::SchedulingGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the shifts property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a shift_item_request_builder
                        ## 
                        def shifts_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["shift%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::Shifts::Item::ShiftItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the swapShiftsChangeRequests property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a swap_shifts_change_request_item_request_builder
                        ## 
                        def swap_shifts_change_requests_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["swapShiftsChangeRequest%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::SwapShiftsChangeRequests::Item::SwapShiftsChangeRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the timeOffReasons property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a time_off_reason_item_request_builder
                        ## 
                        def time_off_reasons_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["timeOffReason%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::TimeOffReasons::Item::TimeOffReasonItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the timeOffRequests property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a time_off_request_item_request_builder
                        ## 
                        def time_off_requests_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["timeOffRequest%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::TimeOffRequests::Item::TimeOffRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the timesOff property of the microsoft.graph.schedule entity.
                        ## @param id Unique identifier of the item
                        ## @return a time_off_item_request_builder
                        ## 
                        def times_off_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["timeOff%2Did"] = id
                            return MicrosoftGraph::Groups::Item::Team::Schedule::TimesOff::Item::TimeOffItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property schedule for groups
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
                        ## Retrieve the properties and relationships of a schedule object. The schedule creation process conforms to the One API guideline for resource based long running operations (RELO).When clients use the PUT method, if the schedule is provisioned, the operation updates the schedule; otherwise, the operation starts the schedule provisioning process in the background. During schedule provisioning, clients can use the GET method to get the schedule and look at the `provisionStatus` property for the current state of the provisioning. If the provisioning failed, clients can get additional information from the `provisionStatusCode` property. Clients can also inspect the configuration of the schedule.
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
                        ## Update the navigation property schedule in groups
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_put_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :PUT
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
                        class ScheduleRequestBuilderDeleteRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                        end

                        ## 
                        # Retrieve the properties and relationships of a schedule object. The schedule creation process conforms to the One API guideline for resource based long running operations (RELO).When clients use the PUT method, if the schedule is provisioned, the operation updates the schedule; otherwise, the operation starts the schedule provisioning process in the background. During schedule provisioning, clients can use the GET method to get the schedule and look at the `provisionStatus` property for the current state of the provisioning. If the provisioning failed, clients can get additional information from the `provisionStatusCode` property. Clients can also inspect the configuration of the schedule.
                        class ScheduleRequestBuilderGetQueryParameters
                            
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
                        class ScheduleRequestBuilderGetRequestConfiguration
                            
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
                        class ScheduleRequestBuilderPutRequestConfiguration
                            
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
