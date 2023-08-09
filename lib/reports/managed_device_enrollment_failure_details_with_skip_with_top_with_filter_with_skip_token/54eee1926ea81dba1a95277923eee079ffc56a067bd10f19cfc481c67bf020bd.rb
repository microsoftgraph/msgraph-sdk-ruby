require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../../models/report'
require_relative '../reports'
require_relative './managed_device_enrollment_failure_details_with_skip_with_top_with_filter_with_skip_token'

module MicrosoftGraph
    module Reports
        module ManagedDeviceEnrollmentFailureDetailsWithSkipWithTopWithFilterWithSkipToken
            ## 
            # Provides operations to call the managedDeviceEnrollmentFailureDetails method.
            class ManagedDeviceEnrollmentFailureDetailsWithSkipWithTopWithFilterWithSkipTokenRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new ManagedDeviceEnrollmentFailureDetailsWithSkipWithTopWithFilterWithSkipTokenRequestBuilder and sets the default values.
                ## @param filter Usage: filter='{filter}'
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @param skip Usage: skip={skip}
                ## @param skip_token Usage: skipToken='{skipToken}'
                ## @param top Usage: top={top}
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, filter=nil, skip=nil, skip_token=nil, top=nil)
                    super(path_parameters, request_adapter, "{+baseurl}/reports/managedDeviceEnrollmentFailureDetails(skip={skip},top={top},filter='{filter}',skipToken='{skipToken}')")
                end
                ## 
                ## Invoke function managedDeviceEnrollmentFailureDetails
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of report
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Report.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Invoke function managedDeviceEnrollmentFailureDetails
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
                        request_info.add_request_options(request_configuration.options)
                    end
                    return request_info
                end
            end
        end
    end
end
