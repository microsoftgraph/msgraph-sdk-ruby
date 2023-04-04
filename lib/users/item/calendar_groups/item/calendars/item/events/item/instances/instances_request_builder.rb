require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/event_collection_response'
require_relative '../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../users'
require_relative '../../../../../../../item'
require_relative '../../../../../../calendar_groups'
require_relative '../../../../../item'
require_relative '../../../../calendars'
require_relative '../../../item'
require_relative '../../events'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './delta/delta_request_builder'
require_relative './instances'

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
                                        ## 
                                        # Provides operations to manage the instances property of the microsoft.graph.event entity.
                                        class InstancesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            # Provides operations to count the resources in the collection.
                                            def count()
                                                return MicrosoftGraph::Users::Item::CalendarGroups::Item::Calendars::Item::Events::Item::Instances::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the delta method.
                                            def delta()
                                                return MicrosoftGraph::Users::Item::CalendarGroups::Item::Calendars::Item::Events::Item::Instances::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new InstancesRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/calendarGroups/{calendarGroup%2Did}/calendars/{calendar%2Did}/events/{event%2Did}/instances{?startDateTime*,endDateTime*,%24top,%24skip,%24filter,%24count,%24orderby,%24select}")
                                            end
                                            ## 
                                            ## The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                            ## The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
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
                                            # The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
                                            class InstancesRequestBuilderGetQueryParameters
                                                
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
                                                ## @param original_name The original query parameter name in the class.
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
