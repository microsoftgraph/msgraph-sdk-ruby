require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../models/workbook_chart_point'
require_relative '../../../../../../../../../../../../models/workbook_chart_point_collection_response'
require_relative '../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../item'
require_relative '../../../../../../../../../items'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../workbook'
require_relative '../../../../../../worksheets'
require_relative '../../../../../item'
require_relative '../../../../charts'
require_relative '../../../item'
require_relative '../../series'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/workbook_chart_point_item_request_builder'
require_relative './item_at_with_index/item_at_with_index_request_builder'
require_relative './points'

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
                                                module Points
                                                    ## 
                                                    # Provides operations to manage the points property of the microsoft.graph.workbookChartSeries entity.
                                                    class PointsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                        
                                                        ## 
                                                        # Provides operations to call the count method.
                                                        def count()
                                                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::Series::Item::Points::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        ## Provides operations to manage the points property of the microsoft.graph.workbookChartSeries entity.
                                                        ## @param workbook_chart_point_id The unique identifier of workbookChartPoint
                                                        ## @return a workbook_chart_point_item_request_builder
                                                        ## 
                                                        def by_workbook_chart_point_id(workbook_chart_point_id)
                                                            raise StandardError, 'workbook_chart_point_id cannot be null' if workbook_chart_point_id.nil?
                                                            url_tpl_params = @path_parameters.clone
                                                            url_tpl_params["workbookChartPoint%2Did"] = workbook_chart_point_id
                                                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::Series::Item::Points::Item::WorkbookChartPointItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                        end
                                                        ## 
                                                        ## Instantiates a new PointsRequestBuilder and sets the default values.
                                                        ## @param path_parameters Path parameters for the request
                                                        ## @param request_adapter The request adapter to use to execute the requests.
                                                        ## @return a void
                                                        ## 
                                                        def initialize(path_parameters, request_adapter)
                                                            super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/{workbookChart%2Did}/series/{workbookChartSeries%2Did}/points{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                                        end
                                                        ## 
                                                        ## Retrieve a list of chartpoints objects.
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of workbook_chart_point_collection_response
                                                        ## 
                                                        def get(request_configuration=nil)
                                                            request_info = self.to_get_request_information(
                                                                request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartPointCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                                        end
                                                        ## 
                                                        ## Provides operations to call the itemAt method.
                                                        ## @param index Usage: index={index}
                                                        ## @return a item_at_with_index_request_builder
                                                        ## 
                                                        def item_at_with_index(index)
                                                            raise StandardError, 'index cannot be null' if index.nil?
                                                            return ItemAtWithIndexRequestBuilder.new(@path_parameters, @request_adapter, index)
                                                        end
                                                        ## 
                                                        ## Use this API to create a new ChartPoints.
                                                        ## @param body The request body
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of workbook_chart_point
                                                        ## 
                                                        def post(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = self.to_post_request_information(
                                                                body, request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartPoint.create_from_discriminator_value(pn) }, error_mapping)
                                                        end
                                                        ## 
                                                        ## Retrieve a list of chartpoints objects.
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
                                                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                                request_info.add_request_options(request_configuration.options)
                                                            end
                                                            return request_info
                                                        end
                                                        ## 
                                                        ## Use this API to create a new ChartPoints.
                                                        ## @param body The request body
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a request_information
                                                        ## 
                                                        def to_post_request_information(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                            request_info.url_template = @url_template
                                                            request_info.path_parameters = @path_parameters
                                                            request_info.http_method = :POST
                                                            request_info.headers.add('Accept', 'application/json')
                                                            unless request_configuration.nil?
                                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                request_info.add_request_options(request_configuration.options)
                                                            end
                                                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                            return request_info
                                                        end

                                                        ## 
                                                        # Retrieve a list of chartpoints objects.
                                                        class PointsRequestBuilderGetQueryParameters
                                                            
                                                            ## 
                                                            # Include count of items
                                                            attr_accessor :count
                                                            ## 
                                                            # Expand related entities
                                                            attr_accessor :expand
                                                            ## 
                                                            # Filter items by property values
                                                            attr_accessor :filter
                                                            ## 
                                                            # Order items by property values
                                                            attr_accessor :orderby
                                                            ## 
                                                            # Search items by search phrases
                                                            attr_accessor :search
                                                            ## 
                                                            # Select properties to be returned
                                                            attr_accessor :select
                                                            ## 
                                                            # Skip the first n items
                                                            attr_accessor :skip
                                                            ## 
                                                            # Show only the first n items
                                                            attr_accessor :top
                                                            ## 
                                                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                            ## @param original_name The original query parameter name in the class.
                                                            ## @return a string
                                                            ## 
                                                            def get_query_parameter(original_name)
                                                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                                case original_name
                                                                    when "count"
                                                                        return "%24count"
                                                                    when "expand"
                                                                        return "%24expand"
                                                                    when "filter"
                                                                        return "%24filter"
                                                                    when "orderby"
                                                                        return "%24orderby"
                                                                    when "search"
                                                                        return "%24search"
                                                                    when "select"
                                                                        return "%24select"
                                                                    when "skip"
                                                                        return "%24skip"
                                                                    when "top"
                                                                        return "%24top"
                                                                    else
                                                                        return original_name
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
        end
    end
end
