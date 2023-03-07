require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../models/workbook_table'
require_relative '../../../../../../../../drives'
require_relative '../../../../../../../item'
require_relative '../../../../../../items'
require_relative '../../../../../item'
require_relative '../../../../workbook'
require_relative '../../../worksheets'
require_relative '../../item'
require_relative '../tables'
require_relative './clear_filters/clear_filters_request_builder'
require_relative './columns/columns_request_builder'
require_relative './columns/item/workbook_table_column_item_request_builder'
require_relative './convert_to_range/convert_to_range_request_builder'
require_relative './data_body_range/data_body_range_request_builder'
require_relative './header_row_range/header_row_range_request_builder'
require_relative './item'
require_relative './range/range_request_builder'
require_relative './reapply_filters/reapply_filters_request_builder'
require_relative './rows/item/workbook_table_row_item_request_builder'
require_relative './rows/rows_request_builder'
require_relative './sort/sort_request_builder'
require_relative './total_row_range/total_row_range_request_builder'
require_relative './worksheet/worksheet_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Tables
                                    module Item
                                        ## 
                                        # Provides operations to manage the tables property of the microsoft.graph.workbookWorksheet entity.
                                        class WorkbookTableItemRequestBuilder
                                            
                                            ## 
                                            # Provides operations to call the clearFilters method.
                                            def clear_filters()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::ClearFilters::ClearFiltersRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the columns property of the microsoft.graph.workbookTable entity.
                                            def columns()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the convertToRange method.
                                            def convert_to_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::ConvertToRange::ConvertToRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the dataBodyRange method.
                                            def data_body_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::DataBodyRange::DataBodyRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the headerRowRange method.
                                            def header_row_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::HeaderRowRange::HeaderRowRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Path parameters for the request
                                            @path_parameters
                                            ## 
                                            # Provides operations to call the range method.
                                            def range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Range::RangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the reapplyFilters method.
                                            def reapply_filters()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::ReapplyFilters::ReapplyFiltersRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # The request adapter to use to execute the requests.
                                            @request_adapter
                                            ## 
                                            # Provides operations to manage the rows property of the microsoft.graph.workbookTable entity.
                                            def rows()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Rows::RowsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the sort property of the microsoft.graph.workbookTable entity.
                                            def sort()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Sort::SortRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the totalRowRange method.
                                            def total_row_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::TotalRowRange::TotalRowRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Url template to use to build the URL for the current request builder
                                            @url_template
                                            ## 
                                            # Provides operations to manage the worksheet property of the microsoft.graph.workbookTable entity.
                                            def worksheet()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Worksheet::WorksheetRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            ## Provides operations to manage the columns property of the microsoft.graph.workbookTable entity.
                                            ## @param id Unique identifier of the item
                                            ## @return a workbook_table_column_item_request_builder
                                            ## 
                                            def columns_by_id(id)
                                                raise StandardError, 'id cannot be null' if id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["workbookTableColumn%2Did"] = id
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Columns::Item::WorkbookTableColumnItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new WorkbookTableItemRequestBuilder and sets the default values.
                                            ## @param pathParameters Path parameters for the request
                                            ## @param requestAdapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/tables/{workbookTable%2Did}{?%24select,%24expand}"
                                                @request_adapter = request_adapter
                                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                                            end
                                            ## 
                                            ## Delete navigation property tables for drives
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
                                            ## Collection of tables that are part of the worksheet. Read-only.
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of workbook_table
                                            ## 
                                            def get(request_configuration=nil)
                                                request_info = self.to_get_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookTable.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Update the navigation property tables in drives
                                            ## @param body The request body
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of workbook_table
                                            ## 
                                            def patch(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = self.to_patch_request_information(
                                                    body, request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookTable.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Provides operations to manage the rows property of the microsoft.graph.workbookTable entity.
                                            ## @param id Unique identifier of the item
                                            ## @return a workbook_table_row_item_request_builder
                                            ## 
                                            def rows_by_id(id)
                                                raise StandardError, 'id cannot be null' if id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["workbookTableRow%2Did"] = id
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Rows::Item::WorkbookTableRowItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Delete navigation property tables for drives
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
                                            ## Collection of tables that are part of the worksheet. Read-only.
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
                                            ## Update the navigation property tables in drives
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
                                            class WorkbookTableItemRequestBuilderDeleteRequestConfiguration
                                                
                                                ## 
                                                # Request headers
                                                attr_accessor :headers
                                                ## 
                                                # Request options
                                                attr_accessor :options
                                            end

                                            ## 
                                            # Collection of tables that are part of the worksheet. Read-only.
                                            class WorkbookTableItemRequestBuilderGetQueryParameters
                                                
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
                                            class WorkbookTableItemRequestBuilderGetRequestConfiguration
                                                
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
                                            class WorkbookTableItemRequestBuilderPatchRequestConfiguration
                                                
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
