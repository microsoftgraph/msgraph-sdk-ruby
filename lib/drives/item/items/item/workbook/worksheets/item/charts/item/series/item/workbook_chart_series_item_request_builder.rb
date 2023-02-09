require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../models/workbook_chart_series'
require_relative '../../../../../../../../../../drives'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../items'
require_relative '../../../../../../../item'
require_relative '../../../../../../workbook'
require_relative '../../../../../worksheets'
require_relative '../../../../item'
require_relative '../../../charts'
require_relative '../../item'
require_relative '../series'
require_relative './format/format_request_builder'
require_relative './item'
require_relative './points/item/workbook_chart_point_item_request_builder'
require_relative './points/points_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Charts
                                    module Item
                                        module Series
                                            module Item
                                                ## 
                                                # Provides operations to manage the series property of the microsoft.graph.workbookChart entity.
                                                class WorkbookChartSeriesItemRequestBuilder
                                                    
                                                    ## 
                                                    # Provides operations to manage the format property of the microsoft.graph.workbookChartSeries entity.
                                                    def format()
                                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::Series::Item::Format::FormatRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Path parameters for the request
                                                    @path_parameters
                                                    ## 
                                                    # Provides operations to manage the points property of the microsoft.graph.workbookChartSeries entity.
                                                    def points()
                                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::Series::Item::Points::PointsRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # The request adapter to use to execute the requests.
                                                    @request_adapter
                                                    ## 
                                                    # Url template to use to build the URL for the current request builder
                                                    @url_template
                                                    ## 
                                                    ## Instantiates a new WorkbookChartSeriesItemRequestBuilder and sets the default values.
                                                    ## @param pathParameters Path parameters for the request
                                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                        @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/{workbookChart%2Did}/series/{workbookChartSeries%2Did}{?%24select,%24expand}"
                                                        @request_adapter = request_adapter
                                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                    end
                                                    ## 
                                                    ## Delete navigation property series for drives
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of void
                                                    ## 
                                                    def delete(request_configuration=nil)
                                                        request_info = self.to_delete_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, nil, error_mapping)
                                                    end
                                                    ## 
                                                    ## Represents either a single series or collection of series in the chart. Read-only.
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of workbook_chart_series
                                                    ## 
                                                    def get(request_configuration=nil)
                                                        request_info = self.to_get_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartSeries.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Update the navigation property series in drives
                                                    ## @param body The request body
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of workbook_chart_series
                                                    ## 
                                                    def patch(body, request_configuration=nil)
                                                        raise StandardError, 'body cannot be null' if body.nil?
                                                        request_info = self.to_patch_request_information(
                                                            body, request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartSeries.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Provides operations to manage the points property of the microsoft.graph.workbookChartSeries entity.
                                                    ## @param id Unique identifier of the item
                                                    ## @return a workbook_chart_point_item_request_builder
                                                    ## 
                                                    def points_by_id(id)
                                                        raise StandardError, 'id cannot be null' if id.nil?
                                                        url_tpl_params = @path_parameters.clone
                                                        url_tpl_params["workbookChartPoint%2Did"] = id
                                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::Series::Item::Points::Item::WorkbookChartPointItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                    end
                                                    ## 
                                                    ## Delete navigation property series for drives
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a request_information
                                                    ## 
                                                    def to_delete_request_information(request_configuration=nil)
                                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                        request_info.url_template = @url_template
                                                        request_info.path_parameters = @path_parameters
                                                        request_info.http_method = :DELETE
                                                        unless request_configuration.nil?
                                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                                            request_info.add_request_options(request_configuration.options)
                                                        end
                                                        return request_info
                                                    end
                                                    ## 
                                                    ## Represents either a single series or collection of series in the chart. Read-only.
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
                                                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                            request_info.add_request_options(request_configuration.options)
                                                        end
                                                        return request_info
                                                    end
                                                    ## 
                                                    ## Update the navigation property series in drives
                                                    ## @param body The request body
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a request_information
                                                    ## 
                                                    def to_patch_request_information(body, request_configuration=nil)
                                                        raise StandardError, 'body cannot be null' if body.nil?
                                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                        request_info.url_template = @url_template
                                                        request_info.path_parameters = @path_parameters
                                                        request_info.http_method = :PATCH
                                                        request_info.headers.add('Accept', 'application/json')
                                                        unless request_configuration.nil?
                                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                                            request_info.add_request_options(request_configuration.options)
                                                        end
                                                        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                                        return request_info
                                                    end

                                                    ## 
                                                    # Configuration for the request such as headers, query parameters, and middleware options.
                                                    class WorkbookChartSeriesItemRequestBuilderDeleteRequestConfiguration
                                                        
                                                        ## 
                                                        # Request headers
                                                        attr_accessor :headers
                                                        ## 
                                                        # Request options
                                                        attr_accessor :options
                                                    end

                                                    ## 
                                                    # Represents either a single series or collection of series in the chart. Read-only.
                                                    class WorkbookChartSeriesItemRequestBuilderGetQueryParameters
                                                        
                                                        ## 
                                                        # Expand related entities
                                                        attr_accessor :expand
                                                        ## 
                                                        # Select properties to be returned
                                                        attr_accessor :select
                                                        ## 
                                                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                        ## @param originalName The original query parameter name in the class.
                                                        ## @return a string
                                                        ## 
                                                        def get_query_parameter(original_name)
                                                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                            case original_name
                                                                when "expand"
                                                                    return "%24expand"
                                                                when "select"
                                                                    return "%24select"
                                                                else
                                                                    return original_name
                                                            end
                                                        end
                                                    end

                                                    ## 
                                                    # Configuration for the request such as headers, query parameters, and middleware options.
                                                    class WorkbookChartSeriesItemRequestBuilderGetRequestConfiguration
                                                        
                                                        ## 
                                                        # Request headers
                                                        attr_accessor :headers
                                                        ## 
                                                        # Request options
                                                        attr_accessor :options
                                                        ## 
                                                        # Request query parameters
                                                        attr_accessor :query_parameters
                                                    end

                                                    ## 
                                                    # Configuration for the request such as headers, query parameters, and middleware options.
                                                    class WorkbookChartSeriesItemRequestBuilderPatchRequestConfiguration
                                                        
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
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
