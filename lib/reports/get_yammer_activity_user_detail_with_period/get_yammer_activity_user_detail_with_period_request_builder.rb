require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../reports'
require_relative './get_yammer_activity_user_detail_with_period'

module MicrosoftGraph
    module Reports
        module GetYammerActivityUserDetailWithPeriod
            ## 
            # Provides operations to call the getYammerActivityUserDetail method.
            class GetYammerActivityUserDetailWithPeriodRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new GetYammerActivityUserDetailWithPeriodRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param period Usage: period='{period}'
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, period=nil)
                    super(path_parameters, request_adapter, "{+baseurl}/reports/getYammerActivityUserDetail(period='{period}')")
                end
                ## 
                ## Invoke function getYammerActivityUserDetail
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of binary
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, Binary, error_mapping)
                end
                ## 
                ## Invoke function getYammerActivityUserDetail
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
