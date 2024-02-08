require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/o_data_errors_o_data_error'
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
require_relative './convert_to_range/convert_to_range_request_builder'
require_relative './data_body_range/data_body_range_request_builder'
require_relative './header_row_range/header_row_range_request_builder'
require_relative './item_at_with_index'
require_relative './range/range_request_builder'
require_relative './reapply_filters/reapply_filters_request_builder'
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
                                    module ItemAtWithIndex
                                        ## 
                                        # Provides operations to call the itemAt method.
                                        class ItemAtWithIndexRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            # Provides operations to call the clearFilters method.
                                            def clear_filters()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::ClearFilters::ClearFiltersRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the columns property of the microsoft.graph.workbookTable entity.
                                            def columns()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the convertToRange method.
                                            def convert_to_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::ConvertToRange::ConvertToRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the dataBodyRange method.
                                            def data_body_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::DataBodyRange::DataBodyRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the headerRowRange method.
                                            def header_row_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::HeaderRowRange::HeaderRowRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the range method.
                                            def range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::Range::RangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the reapplyFilters method.
                                            def reapply_filters()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::ReapplyFilters::ReapplyFiltersRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the rows property of the microsoft.graph.workbookTable entity.
                                            def rows()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::Rows::RowsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the sort property of the microsoft.graph.workbookTable entity.
                                            def sort()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::Sort::SortRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to call the totalRowRange method.
                                            def total_row_range()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::TotalRowRange::TotalRowRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the worksheet property of the microsoft.graph.workbookTable entity.
                                            def worksheet()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::ItemAtWithIndex::Worksheet::WorksheetRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new ItemAtWithIndexRequestBuilder and sets the default values.
                                            ## @param index Usage: index={index}
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter, index=nil)
                                                super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/tables/itemAt(index={index})")
                                            end
                                            ## 
                                            ## Invoke function itemAt
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of workbook_table
                                            ## 
                                            def get(request_configuration=nil)
                                                request_info = self.to_get_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookTable.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Invoke function itemAt
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
                                                request_info.headers.try_add('Accept', 'application/json')
                                                return request_info
                                            end
                                            ## 
                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                            ## @param raw_url The raw URL to use for the request builder.
                                            ## @return a item_at_with_index_request_builder
                                            ## 
                                            def with_url(raw_url)
                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                return ItemAtWithIndexRequestBuilder.new(raw_url, @request_adapter)
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
