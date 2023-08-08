require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../users'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../calendar_groups'
require_relative '../../../../../../item'
require_relative '../../../../../calendars'
require_relative '../../../../item'
require_relative '../../../events'
require_relative '../../item'
require_relative '../instances'
require_relative './delta'

module MicrosoftGraph
    module Users
        module Item
            module CalendarGroups
                module Item
                    module Calendars
                        module Item
                            module Events
                                module Item
                                    module Instances
                                        module Delta
                                            ## 
                                            # Provides operations to call the delta method.
                                            class DeltaRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                
                                                ## 
                                                ## Instantiates a new DeltaRequestBuilder and sets the default values.
                                                ## @param path_parameters Path parameters for the request
                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter)
                                                    super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/calendarGroups/{calendarGroup%2Did}/calendars/{calendar%2Did}/events/{event%2Did}/instances/delta(){?startDateTime*,endDateTime*,%24top,%24skip,%24search,%24filter,%24count,%24select,%24orderby}")
                                                end
                                                ## 
                                                ## Get a set of event resources that have been added, deleted, or updated in a calendarView (a range of events defined by start and end dates) of the user's primary calendar. Typically, synchronizing events in a calendarView in a local store entails a round of multiple delta function calls. The initial call is a full synchronization, and every subsequent delta call in the same round gets the incremental changes (additions, deletions, or updates). This allows you to maintain and synchronize a local store of events in the specified calendarView, without having to fetch all the events of that calendar from the server every time.
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of delta_response
                                                ## 
                                                def get(request_configuration=nil)
                                                    request_info = self.to_get_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Users::Item::CalendarGroups::Item::Calendars::Item::Events::Item::Instances::Delta::DeltaResponse.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Get a set of event resources that have been added, deleted, or updated in a calendarView (a range of events defined by start and end dates) of the user's primary calendar. Typically, synchronizing events in a calendarView in a local store entails a round of multiple delta function calls. The initial call is a full synchronization, and every subsequent delta call in the same round gets the incremental changes (additions, deletions, or updates). This allows you to maintain and synchronize a local store of events in the specified calendarView, without having to fetch all the events of that calendar from the server every time.
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
                                                # Get a set of event resources that have been added, deleted, or updated in a calendarView (a range of events defined by start and end dates) of the user's primary calendar. Typically, synchronizing events in a calendarView in a local store entails a round of multiple delta function calls. The initial call is a full synchronization, and every subsequent delta call in the same round gets the incremental changes (additions, deletions, or updates). This allows you to maintain and synchronize a local store of events in the specified calendarView, without having to fetch all the events of that calendar from the server every time.
                                                class DeltaRequestBuilderGetQueryParameters
                                                    
                                                    ## 
                                                    # Include count of items
                                                    attr_accessor :count
                                                    ## 
                                                    # The end date and time of the time range in the function, represented in ISO 8601 format. For example, 2019-11-08T20:00:00-08:00
                                                    attr_accessor :end_date_time
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
                                                    # The start date and time of the time range in the function, represented in ISO 8601 format. For example, 2019-11-08T20:00:00-08:00
                                                    attr_accessor :start_date_time
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
                                                            when "end_date_time"
                                                                return "endDateTime"
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
                                                            when "start_date_time"
                                                                return "startDateTime"
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
                        end
                    end
                end
            end
        end
    end
end
