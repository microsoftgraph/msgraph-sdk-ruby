require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../drives'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../items'
require_relative '../../../../../../../item'
require_relative '../../../../../../workbook'
require_relative '../../../../../worksheets'
require_relative '../../../../item'
require_relative '../../../tables'
require_relative '../../item'
require_relative '../sort'
require_relative './microsoft_graph_reapply'

module MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Sort::MicrosoftGraphReapply
    ## 
    # Provides operations to call the reapply method.
    class ReapplyRequestBuilder
        
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
        ## Instantiates a new ReapplyRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/tables/{workbookTable%2Did}/sort/microsoft.graph.reapply"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Reapplies the current sorting parameters to the table.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def post(request_configuration=)
            request_info = self.to_post_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Reapplies the current sorting parameters to the table.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_post_request_information(request_configuration=)
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
        class ReapplyRequestBuilderPostRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end