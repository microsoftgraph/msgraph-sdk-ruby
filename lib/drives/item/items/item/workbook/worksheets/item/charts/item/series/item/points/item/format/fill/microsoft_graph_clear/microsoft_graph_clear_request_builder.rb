require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../../../../../item'
require_relative '../../../../../../../../../../../../../items'
require_relative '../../../../../../../../../../../../item'
require_relative '../../../../../../../../../../../workbook'
require_relative '../../../../../../../../../../worksheets'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../charts'
require_relative '../../../../../../../item'
require_relative '../../../../../../series'
require_relative '../../../../../item'
require_relative '../../../../points'
require_relative '../../../item'
require_relative '../../format'
require_relative '../fill'
require_relative './microsoft_graph_clear'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::Series::Item::Points::Item::Format::Fill::MicrosoftGraphClear
    ## 
    # Provides operations to call the clear method.
    class MicrosoftGraphClearRequestBuilder
        
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
        ## Instantiates a new MicrosoftGraphClearRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/{workbookChart%2Did}/series/{workbookChartSeries%2Did}/points/{workbookChartPoint%2Did}/format/fill/microsoft.graph.clear"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Clear the fill color of a chart element.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def post(request_configuration=nil)
            request_info = self.to_post_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Clear the fill color of a chart element.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_post_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :POST
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class MicrosoftGraphClearRequestBuilderPostRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
