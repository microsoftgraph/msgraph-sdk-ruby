require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../reports'
require_relative './get_share_point_activity_pages_with_period'

module MicrosoftGraph
    module Reports
        module GetSharePointActivityPagesWithPeriod
            ## 
            # Provides operations to call the getSharePointActivityPages method.
            class GetSharePointActivityPagesWithPeriodRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new GetSharePointActivityPagesWithPeriodRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param period Usage: period='{period}'
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, period=nil)
                    super(path_parameters, request_adapter, "{+baseurl}/reports/getSharePointActivityPages(period='{period}')")
                end
                ## 
                ## Invoke function getSharePointActivityPages
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
                ## Invoke function getSharePointActivityPages
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :GET
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
