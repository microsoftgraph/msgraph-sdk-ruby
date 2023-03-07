require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/device_and_app_management_data'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../me'
require_relative './export_device_and_app_management_data_with_skip_with_top'

module MicrosoftGraph
    module Me
        module ExportDeviceAndAppManagementDataWithSkipWithTop
            ## 
            # Provides operations to call the exportDeviceAndAppManagementData method.
            class ExportDeviceAndAppManagementDataWithSkipWithTopRequestBuilder
                
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
                ## Instantiates a new ExportDeviceAndAppManagementDataWithSkipWithTopRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @param skip Usage: skip={skip}
                ## @param top Usage: top={top}
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, skip=nil, top=nil)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/me/exportDeviceAndAppManagementData(skip={skip},top={top})"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Invoke function exportDeviceAndAppManagementData
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of device_and_app_management_data
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DeviceAndAppManagementData.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Invoke function exportDeviceAndAppManagementData
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
                        request_info.add_request_options(request_configuration.options)
                    end
                    return request_info
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class ExportDeviceAndAppManagementDataWithSkipWithTopRequestBuilderGetRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end
            end
        end
    end
end
