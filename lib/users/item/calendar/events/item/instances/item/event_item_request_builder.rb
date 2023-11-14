require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/event'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../users'
require_relative '../../../../../item'
require_relative '../../../../calendar'
require_relative '../../../events'
require_relative '../../item'
require_relative '../instances'
require_relative './accept/accept_request_builder'
require_relative './attachments/attachments_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './cancel/cancel_request_builder'
require_relative './decline/decline_request_builder'
require_relative './dismiss_reminder/dismiss_reminder_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './forward/forward_request_builder'
require_relative './item'
require_relative './snooze_reminder/snooze_reminder_request_builder'
require_relative './tentatively_accept/tentatively_accept_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module Calendar
                module Events
                    module Item
                        module Instances
                            module Item
                                ## 
                                # Provides operations to manage the instances property of the microsoft.graph.event entity.
                                class EventItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to call the accept method.
                                    def accept()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::Accept::AcceptRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the attachments property of the microsoft.graph.event entity.
                                    def attachments()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::Attachments::AttachmentsRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the calendar property of the microsoft.graph.event entity.
                                    def calendar()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::Calendar::CalendarRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the cancel method.
                                    def cancel()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::Cancel::CancelRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the decline method.
                                    def decline()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::Decline::DeclineRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the dismissReminder method.
                                    def dismiss_reminder()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::DismissReminder::DismissReminderRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the extensions property of the microsoft.graph.event entity.
                                    def extensions()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the forward method.
                                    def forward()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::Forward::ForwardRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the snoozeReminder method.
                                    def snooze_reminder()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::SnoozeReminder::SnoozeReminderRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the tentativelyAccept method.
                                    def tentatively_accept()
                                        return MicrosoftGraph::Users::Item::Calendar::Events::Item::Instances::Item::TentativelyAccept::TentativelyAcceptRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new EventItemRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/calendar/events/{event%2Did}/instances/{event%2Did1}{?startDateTime*,endDateTime*,%24select}")
                                    end
                                    ## 
                                    ## The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of event
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
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
                                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                    ## @param raw_url The raw URL to use for the request builder.
                                    ## @return a event_item_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return EventItemRequestBuilder.new(raw_url, @request_adapter)
                                    end

                                    ## 
                                    # The occurrences of a recurring series, if the event is a series master. This property includes occurrences that are part of the recurrence pattern, and exceptions that have been modified, but does not include occurrences that have been cancelled from the series. Navigation property. Read-only. Nullable.
                                    class EventItemRequestBuilderGetQueryParameters
                                        
                                        ## 
                                        # The end date and time of the time range, represented in ISO 8601 format. For example, 2019-11-08T20:00:00-08:00
                                        attr_accessor :end_date_time
                                        ## 
                                        # Select properties to be returned
                                        attr_accessor :select
                                        ## 
                                        # The start date and time of the time range, represented in ISO 8601 format. For example, 2019-11-08T19:00:00-08:00
                                        attr_accessor :start_date_time
                                        ## 
                                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                                        ## @param original_name The original query parameter name in the class.
                                        ## @return a string
                                        ## 
                                        def get_query_parameter(original_name)
                                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                                            case original_name
                                                when "end_date_time"
                                                    return "endDateTime"
                                                when "select"
                                                    return "%24select"
                                                when "start_date_time"
                                                    return "startDateTime"
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
