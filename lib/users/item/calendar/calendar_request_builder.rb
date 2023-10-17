require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/calendar'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../users'
require_relative '../item'
require_relative './allowed_calendar_sharing_roles_with_user/allowed_calendar_sharing_roles_with_user_request_builder'
require_relative './calendar'
require_relative './calendar_permissions/calendar_permissions_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './events/events_request_builder'
require_relative './get_schedule/get_schedule_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module Calendar
                ## 
                # Provides operations to manage the calendar property of the microsoft.graph.user entity.
                class CalendarRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the calendarPermissions property of the microsoft.graph.calendar entity.
                    def calendar_permissions()
                        return MicrosoftGraph::Users::Item::Calendar::CalendarPermissions::CalendarPermissionsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the calendarView property of the microsoft.graph.calendar entity.
                    def calendar_view()
                        return MicrosoftGraph::Users::Item::Calendar::CalendarView::CalendarViewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the events property of the microsoft.graph.calendar entity.
                    def events()
                        return MicrosoftGraph::Users::Item::Calendar::Events::EventsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getSchedule method.
                    def get_schedule()
                        return MicrosoftGraph::Users::Item::Calendar::GetSchedule::GetScheduleRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to call the allowedCalendarSharingRoles method.
                    ## @param user Usage: User='{User}'
                    ## @return a allowed_calendar_sharing_roles_with_user_request_builder
                    ## 
                    def allowed_calendar_sharing_roles_with_user(user)
                        raise StandardError, 'user cannot be null' if user.nil?
                        return AllowedCalendarSharingRolesWithUserRequestBuilder.new(@path_parameters, @request_adapter, User)
                    end
                    ## 
                    ## Instantiates a new CalendarRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/calendar{?%24select}")
                    end
                    ## 
                    ## Get the properties and relationships of a calendar object. The calendar can be one for a user, or the default calendar of a Microsoft 365 group. There are two scenarios where an app can get another user's calendar: This API is available in the following national cloud deployments.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of calendar
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the properties of a calendar object. The calendar can be one for a user, or the default calendar of a Microsoft 365 group. This API is available in the following national cloud deployments.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of calendar
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Get the properties and relationships of a calendar object. The calendar can be one for a user, or the default calendar of a Microsoft 365 group. There are two scenarios where an app can get another user's calendar: This API is available in the following national cloud deployments.
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
                    ## Update the properties of a calendar object. The calendar can be one for a user, or the default calendar of a Microsoft 365 group. This API is available in the following national cloud deployments.
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
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a calendar_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return CalendarRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Get the properties and relationships of a calendar object. The calendar can be one for a user, or the default calendar of a Microsoft 365 group. There are two scenarios where an app can get another user's calendar: This API is available in the following national cloud deployments.
                    class CalendarRequestBuilderGetQueryParameters
                        
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
