require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/meeting_time_suggestions_result'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../me'
require_relative './find_meeting_times'

module MicrosoftGraph
    module Me
        module FindMeetingTimes
            ## 
            # Provides operations to call the findMeetingTimes method.
            class FindMeetingTimesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new FindMeetingTimesRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/me/findMeetingTimes")
                end
                ## 
                ## Suggest meeting times and locations based on organizer and attendee availability, and time or location constraints specified as parameters. If findMeetingTimes cannot return any meeting suggestions, the response would indicate a reason in the emptySuggestionsReason property. Based on this value, you can better adjust the parameters and call findMeetingTimes again. The algorithm used to suggest meeting times and locations undergoes fine-tuning from time to time. In scenarios like test environments where the input parameters and calendar data remain static, expect that the suggested results may differ over time. This API is available in the following national cloud deployments.
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of meeting_time_suggestions_result
                ## 
                def post(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_post_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MeetingTimeSuggestionsResult.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Suggest meeting times and locations based on organizer and attendee availability, and time or location constraints specified as parameters. If findMeetingTimes cannot return any meeting suggestions, the response would indicate a reason in the emptySuggestionsReason property. Based on this value, you can better adjust the parameters and call findMeetingTimes again. The algorithm used to suggest meeting times and locations undergoes fine-tuning from time to time. In scenarios like test environments where the input parameters and calendar data remain static, expect that the suggested results may differ over time. This API is available in the following national cloud deployments.
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_post_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :POST
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a find_meeting_times_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return FindMeetingTimesRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end
