require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/calendar'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../groups'
require_relative '../item'
require_relative './allowed_calendar_sharing_roles_with_user/allowed_calendar_sharing_roles_with_user_request_builder'
require_relative './calendar'
require_relative './calendar_permissions/calendar_permissions_request_builder'
require_relative './calendar_permissions/item/calendar_permission_item_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './calendar_view/item/event_item_request_builder'
require_relative './events/events_request_builder'
require_relative './events/item/event_item_request_builder'
require_relative './get_schedule/get_schedule_request_builder'
require_relative './multi_value_extended_properties/item/multi_value_legacy_extended_property_item_request_builder'
require_relative './multi_value_extended_properties/multi_value_extended_properties_request_builder'
require_relative './single_value_extended_properties/item/single_value_legacy_extended_property_item_request_builder'
require_relative './single_value_extended_properties/single_value_extended_properties_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Calendar
                ## 
                # Provides operations to manage the calendar property of the microsoft.graph.group entity.
                class CalendarRequestBuilder
                    
                    ## 
                    # Provides operations to manage the calendarPermissions property of the microsoft.graph.calendar entity.
                    def calendar_permissions()
                        return MicrosoftGraph::Groups::Item::Calendar::CalendarPermissions::CalendarPermissionsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the calendarView property of the microsoft.graph.calendar entity.
                    def calendar_view()
                        return MicrosoftGraph::Groups::Item::Calendar::CalendarView::CalendarViewRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the events property of the microsoft.graph.calendar entity.
                    def events()
                        return MicrosoftGraph::Groups::Item::Calendar::Events::EventsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getSchedule method.
                    def get_schedule()
                        return MicrosoftGraph::Groups::Item::Calendar::GetSchedule::GetScheduleRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.calendar entity.
                    def multi_value_extended_properties()
                        return MicrosoftGraph::Groups::Item::Calendar::MultiValueExtendedProperties::MultiValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.calendar entity.
                    def single_value_extended_properties()
                        return MicrosoftGraph::Groups::Item::Calendar::SingleValueExtendedProperties::SingleValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Provides operations to call the allowedCalendarSharingRoles method.
                    ## @param User Usage: User='{User}'
                    ## @return a allowed_calendar_sharing_roles_with_user_request_builder
                    ## 
                    def allowed_calendar_sharing_roles_with_user(user)
                        raise StandardError, 'user cannot be null' if user.nil?
                        return AllowedCalendarSharingRolesWithUserRequestBuilder.new(@path_parameters, @request_adapter, User)
                    end
                    ## 
                    ## Provides operations to manage the calendarPermissions property of the microsoft.graph.calendar entity.
                    ## @param id Unique identifier of the item
                    ## @return a calendar_permission_item_request_builder
                    ## 
                    def calendar_permissions_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["calendarPermission%2Did"] = id
                        return MicrosoftGraph::Groups::Item::Calendar::CalendarPermissions::Item::CalendarPermissionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the calendarView property of the microsoft.graph.calendar entity.
                    ## @param id Unique identifier of the item
                    ## @return a event_item_request_builder
                    ## 
                    def calendar_view_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["event%2Did"] = id
                        return MicrosoftGraph::Groups::Item::Calendar::CalendarView::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new CalendarRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/groups/{group%2Did}/calendar{?%24select}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Provides operations to manage the events property of the microsoft.graph.calendar entity.
                    ## @param id Unique identifier of the item
                    ## @return a event_item_request_builder
                    ## 
                    def events_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["event%2Did"] = id
                        return MicrosoftGraph::Groups::Item::Calendar::Events::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## The group's calendar. Read-only.
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of calendar
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.calendar entity.
                    ## @param id Unique identifier of the item
                    ## @return a multi_value_legacy_extended_property_item_request_builder
                    ## 
                    def multi_value_extended_properties_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["multiValueLegacyExtendedProperty%2Did"] = id
                        return MicrosoftGraph::Groups::Item::Calendar::MultiValueExtendedProperties::Item::MultiValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.calendar entity.
                    ## @param id Unique identifier of the item
                    ## @return a single_value_legacy_extended_property_item_request_builder
                    ## 
                    def single_value_extended_properties_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["singleValueLegacyExtendedProperty%2Did"] = id
                        return MicrosoftGraph::Groups::Item::Calendar::SingleValueExtendedProperties::Item::SingleValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## The group's calendar. Read-only.
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
                    # The group's calendar. Read-only.
                    class CalendarRequestBuilderGetQueryParameters
                        
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
                                when "select"
                                    return "%24select"
                                else
                                    return original_name
                            end
                        end
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class CalendarRequestBuilderGetRequestConfiguration
                        
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
                end
            end
        end
    end
end
