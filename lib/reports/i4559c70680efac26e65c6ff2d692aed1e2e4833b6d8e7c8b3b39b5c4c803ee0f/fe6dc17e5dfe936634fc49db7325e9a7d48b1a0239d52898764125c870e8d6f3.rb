require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/report'
require_relative '../reports'
require_relative './i4559c70680efac26e65c6ff2d692aed1e2e4833b6d8e7c8b3b39b5c4c803ee0f'

module MicrosoftGraph::Reports::I4559c70680efac26e65c6ff2d692aed1e2e4833b6d8e7c8b3b39b5c4c803ee0f
    ## 
    # Provides operations to call the managedDeviceEnrollmentFailureDetails method.
    class MicrosoftGraphManagedDeviceEnrollmentFailureDetailsWithSkipWithTopWithFilterWithSkipTokenRequestBuilder
        
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
        ## Instantiates a new MicrosoftGraphManagedDeviceEnrollmentFailureDetailsWithSkipWithTopWithFilterWithSkipTokenRequestBuilder and sets the default values.
        ## @param filter Usage: filter='{filter}'
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @param skip Usage: skip={skip}
        ## @param skipToken Usage: skipToken='{skipToken}'
        ## @param top Usage: top={top}
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter, filter=nil, skip=nil, skip_token=nil, top=nil)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/reports/microsoft.graph.managedDeviceEnrollmentFailureDetails(skip={skip},top={top},filter='{filter}',skipToken='{skipToken}')"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Invoke function managedDeviceEnrollmentFailureDetails
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of report
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Report.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Invoke function managedDeviceEnrollmentFailureDetails
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
        class MicrosoftGraphManagedDeviceEnrollmentFailureDetailsWithSkipWithTopWithFilterWithSkipTokenRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
