require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/event_collection_response'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../calendars'
require_relative '../item'
require_relative './calendar_view'
require_relative './count/count_request_builder'
require_relative './delta/delta_request_builder'

module MicrosoftGraph::Users::Item::Calendars::Item::CalendarView
    ## 
    # Provides operations to manage the calendarView property of the microsoft.graph.calendar entity.
    class CalendarViewRequestBuilder
        
        ## 
        # Provides operations to count the resources in the collection.
        def count()
            return MicrosoftGraph::Users::Item::Calendars::Item::CalendarView::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new CalendarViewRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/users/{user%2Did}/calendars/{calendar%2Did}/calendarView{?startDateTime*,endDateTime*,%24top,%24skip,%24filter,%24count,%24orderby,%24select}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to call the delta method.
        ## @return a delta_request_builder
        ## 
        def delta()
            return DeltaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## The calendar view for the calendar. Navigation property. Read-only.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of event_collection_response
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EventCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## The calendar view for the calendar. Navigation property. Read-only.
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
        # The calendar view for the calendar. Navigation property. Read-only.
        class CalendarViewRequestBuilderGetQueryParameters
            
            ## 
            # Include count of items
            attr_accessor :count
            ## 
            # The end date and time of the time range, represented in ISO 8601 format. For example, 2019-11-08T20:00:00-08:00
            attr_accessor :end_date_time
            ## 
            # Filter items by property values
            attr_accessor :filter
            ## 
            # Order items by property values
            attr_accessor :orderby
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            # Skip the first n items
            attr_accessor :skip
            ## 
            # The start date and time of the time range, represented in ISO 8601 format. For example, 2019-11-08T19:00:00-08:00
            attr_accessor :start_date_time
            ## 
            # Show only the first n items
            attr_accessor :top
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
            ## @return a string
            ## 
            def get_query_parameter(original_name)
                raise StandardError, 'original_name cannot be null' if original_name.nil?
                case original_name
                    when "count"
                        return "%24count"
                    when "filter"
                        return "%24filter"
                    when "orderby"
                        return "%24orderby"
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class CalendarViewRequestBuilderGetRequestConfiguration
            
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
