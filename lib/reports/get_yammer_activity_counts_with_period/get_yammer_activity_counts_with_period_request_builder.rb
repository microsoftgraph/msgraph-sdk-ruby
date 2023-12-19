require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../reports'
require_relative './get_yammer_activity_counts_with_period'

module MicrosoftGraph
    module Reports
        module GetYammerActivityCountsWithPeriod
            ## 
            # Provides operations to call the getYammerActivityCounts method.
            class GetYammerActivityCountsWithPeriodRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new GetYammerActivityCountsWithPeriodRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param period Usage: period='{period}'
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, period=nil)
                    super(path_parameters, request_adapter, "{+baseurl}/reports/getYammerActivityCounts(period='{period}')")
                end
                ## 
                ## Invoke function getYammerActivityCounts
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of binary
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, Binary, error_mapping)
                end
                ## 
                ## Invoke function getYammerActivityCounts
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :GET
                    request_info.headers.try_add('Accept', 'application/octet-stream, application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a get_yammer_activity_counts_with_period_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return GetYammerActivityCountsWithPeriodRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end
