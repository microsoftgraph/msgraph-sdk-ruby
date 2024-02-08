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
require_relative './item'
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
                                    module Item
                                        ## 
                                        # Provides operations to manage the tables property of the microsoft.graph.workbookWorksheet entity.
                                        class WorkbookTableItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
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
                                            # Provides operations to manage the worksheet property of the microsoft.graph.workbookTable entity.
                                            def worksheet()
                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::Item::Worksheet::WorksheetRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new WorkbookTableItemRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/tables/{workbookTable%2Did}{?%24expand,%24select}")
                                            end
                                            ## 
                                            ## Delete navigation property tables for drives
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of void
                                            ## 
                                            def delete(request_configuration=nil)
                                                request_info = self.to_delete_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, nil, error_mapping)
                                            end
                                            ## 
                                            ## Collection of tables that are part of the worksheet. Read-only.
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
                                            ## Update the navigation property tables in drives
                                            ## @param body The request body
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of workbook_table
                                            ## 
                                            def patch(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = self.to_patch_request_information(
                                                    body, request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookTable.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Delete navigation property tables for drives
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a request_information
                                            ## 
                                            def to_delete_request_information(request_configuration=nil)
                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                unless request_configuration.nil?
                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                    request_info.add_request_options(request_configuration.options)
                                                end
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :DELETE
                                                request_info.headers.try_add('Accept', 'application/json')
                                                return request_info
                                            end
                                            ## 
                                            ## Collection of tables that are part of the worksheet. Read-only.
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a request_information
                                            ## 
                                            def to_get_request_information(request_configuration=nil)
                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                unless request_configuration.nil?
                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                    request_info.add_request_options(request_configuration.options)
                                                end
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :GET
                                                request_info.headers.try_add('Accept', 'application/json')
                                                return request_info
                                            end
                                            ## 
                                            ## Update the navigation property tables in drives
                                            ## @param body The request body
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a request_information
                                            ## 
                                            def to_patch_request_information(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                unless request_configuration.nil?
                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                    request_info.add_request_options(request_configuration.options)
                                                end
                                                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :PATCH
                                                request_info.headers.try_add('Accept', 'application/json')
                                                return request_info
                                            end
                                            ## 
                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                            ## @param raw_url The raw URL to use for the request builder.
                                            ## @return a workbook_table_item_request_builder
                                            ## 
                                            def with_url(raw_url)
                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                return WorkbookTableItemRequestBuilder.new(raw_url, @request_adapter)
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
                                                ## @param original_name The original query parameter name in the class.
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
