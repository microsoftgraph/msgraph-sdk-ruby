require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../models/workbook_range'
require_relative '../../../../../../../../../drives'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../items'
require_relative '../../../../../../item'
require_relative '../../../../../workbook'
require_relative '../../../../tables'
require_relative '../../../item'
require_relative '../../rows'
require_relative '../item'
require_relative './bounding_rect_with_another_range/bounding_rect_with_another_range_request_builder'
require_relative './cell_with_row_with_column/cell_with_row_with_column_request_builder'
require_relative './clear/clear_request_builder'
require_relative './columns_after/columns_after_request_builder'
require_relative './columns_after_with_count/columns_after_with_count_request_builder'
require_relative './columns_before/columns_before_request_builder'
require_relative './columns_before_with_count/columns_before_with_count_request_builder'
require_relative './column_with_column/column_with_column_request_builder'
require_relative './delete/delete_request_builder'
require_relative './entire_column/entire_column_request_builder'
require_relative './entire_row/entire_row_request_builder'
require_relative './format/format_request_builder'
require_relative './insert/insert_request_builder'
require_relative './intersection_with_another_range/intersection_with_another_range_request_builder'
require_relative './last_cell/last_cell_request_builder'
require_relative './last_column/last_column_request_builder'
require_relative './last_row/last_row_request_builder'
require_relative './merge/merge_request_builder'
require_relative './offset_range_with_row_offset_with_column_offset/offset_range_with_row_offset_with_column_offset_request_builder'
require_relative './range'
require_relative './resized_range_with_delta_rows_with_delta_columns/resized_range_with_delta_rows_with_delta_columns_request_builder'
require_relative './rows_above/rows_above_request_builder'
require_relative './rows_above_with_count/rows_above_with_count_request_builder'
require_relative './rows_below/rows_below_request_builder'
require_relative './rows_below_with_count/rows_below_with_count_request_builder'
require_relative './row_with_row/row_with_row_request_builder'
require_relative './sort/sort_request_builder'
require_relative './unmerge/unmerge_request_builder'
require_relative './used_range/used_range_request_builder'
require_relative './used_range_with_values_only/used_range_with_values_only_request_builder'
require_relative './visible_view/visible_view_request_builder'
require_relative './worksheet/worksheet_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Tables
                            module Item
                                module Rows
                                    module Item
                                        module Range
                                            ## 
                                            # Provides operations to call the range method.
                                            class RangeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                
                                                ## 
                                                # Provides operations to call the clear method.
                                                def clear()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Clear::ClearRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the columnsAfter method.
                                                def columns_after()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::ColumnsAfter::ColumnsAfterRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the columnsBefore method.
                                                def columns_before()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::ColumnsBefore::ColumnsBeforeRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the delete method.
                                                def delete_path()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Delete::DeleteRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the entireColumn method.
                                                def entire_column()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::EntireColumn::EntireColumnRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the entireRow method.
                                                def entire_row()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::EntireRow::EntireRowRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to manage the format property of the microsoft.graph.workbookRange entity.
                                                def format()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Format::FormatRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the insert method.
                                                def insert()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Insert::InsertRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the lastCell method.
                                                def last_cell()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::LastCell::LastCellRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the lastColumn method.
                                                def last_column()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::LastColumn::LastColumnRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the lastRow method.
                                                def last_row()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::LastRow::LastRowRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the merge method.
                                                def merge()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Merge::MergeRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the rowsAbove method.
                                                def rows_above()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::RowsAbove::RowsAboveRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the rowsBelow method.
                                                def rows_below()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::RowsBelow::RowsBelowRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to manage the sort property of the microsoft.graph.workbookRange entity.
                                                def sort()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Sort::SortRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the unmerge method.
                                                def unmerge()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Unmerge::UnmergeRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the usedRange method.
                                                def used_range()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::UsedRange::UsedRangeRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to call the visibleView method.
                                                def visible_view()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::VisibleView::VisibleViewRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                # Provides operations to manage the worksheet property of the microsoft.graph.workbookRange entity.
                                                def worksheet()
                                                    return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Rows::Item::Range::Worksheet::WorksheetRequestBuilder.new(@path_parameters, @request_adapter)
                                                end
                                                ## 
                                                ## Provides operations to call the boundingRect method.
                                                ## @param another_range Usage: anotherRange='{anotherRange}'
                                                ## @return a bounding_rect_with_another_range_request_builder
                                                ## 
                                                def bounding_rect_with_another_range(another_range)
                                                    raise StandardError, 'another_range cannot be null' if another_range.nil?
                                                    return BoundingRectWithAnotherRangeRequestBuilder.new(@path_parameters, @request_adapter, anotherRange)
                                                end
                                                ## 
                                                ## Provides operations to call the cell method.
                                                ## @param column Usage: column={column}
                                                ## @param row Usage: row={row}
                                                ## @return a cell_with_row_with_column_request_builder
                                                ## 
                                                def cell_with_row_with_column(column, row)
                                                    raise StandardError, 'column cannot be null' if column.nil?
                                                    raise StandardError, 'row cannot be null' if row.nil?
                                                    return CellWithRowWithColumnRequestBuilder.new(@path_parameters, @request_adapter, column, row)
                                                end
                                                ## 
                                                ## Provides operations to call the columnsAfter method.
                                                ## @param count Usage: count={count}
                                                ## @return a columns_after_with_count_request_builder
                                                ## 
                                                def columns_after_with_count(count)
                                                    raise StandardError, 'count cannot be null' if count.nil?
                                                    return ColumnsAfterWithCountRequestBuilder.new(@path_parameters, @request_adapter, count)
                                                end
                                                ## 
                                                ## Provides operations to call the columnsBefore method.
                                                ## @param count Usage: count={count}
                                                ## @return a columns_before_with_count_request_builder
                                                ## 
                                                def columns_before_with_count(count)
                                                    raise StandardError, 'count cannot be null' if count.nil?
                                                    return ColumnsBeforeWithCountRequestBuilder.new(@path_parameters, @request_adapter, count)
                                                end
                                                ## 
                                                ## Provides operations to call the column method.
                                                ## @param column Usage: column={column}
                                                ## @return a column_with_column_request_builder
                                                ## 
                                                def column_with_column(column)
                                                    raise StandardError, 'column cannot be null' if column.nil?
                                                    return ColumnWithColumnRequestBuilder.new(@path_parameters, @request_adapter, column)
                                                end
                                                ## 
                                                ## Instantiates a new RangeRequestBuilder and sets the default values.
                                                ## @param path_parameters Path parameters for the request
                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter)
                                                    super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/tables/{workbookTable%2Did}/rows/{workbookTableRow%2Did}/range()")
                                                end
                                                ## 
                                                ## Invoke function range
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of workbook_range
                                                ## 
                                                def get(request_configuration=nil)
                                                    request_info = self.to_get_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookRange.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Provides operations to call the intersection method.
                                                ## @param another_range Usage: anotherRange='{anotherRange}'
                                                ## @return a intersection_with_another_range_request_builder
                                                ## 
                                                def intersection_with_another_range(another_range)
                                                    raise StandardError, 'another_range cannot be null' if another_range.nil?
                                                    return IntersectionWithAnotherRangeRequestBuilder.new(@path_parameters, @request_adapter, anotherRange)
                                                end
                                                ## 
                                                ## Provides operations to call the offsetRange method.
                                                ## @param column_offset Usage: columnOffset={columnOffset}
                                                ## @param row_offset Usage: rowOffset={rowOffset}
                                                ## @return a offset_range_with_row_offset_with_column_offset_request_builder
                                                ## 
                                                def offset_range_with_row_offset_with_column_offset(column_offset, row_offset)
                                                    raise StandardError, 'column_offset cannot be null' if column_offset.nil?
                                                    raise StandardError, 'row_offset cannot be null' if row_offset.nil?
                                                    return OffsetRangeWithRowOffsetWithColumnOffsetRequestBuilder.new(@path_parameters, @request_adapter, columnOffset, rowOffset)
                                                end
                                                ## 
                                                ## Provides operations to call the resizedRange method.
                                                ## @param delta_columns Usage: deltaColumns={deltaColumns}
                                                ## @param delta_rows Usage: deltaRows={deltaRows}
                                                ## @return a resized_range_with_delta_rows_with_delta_columns_request_builder
                                                ## 
                                                def resized_range_with_delta_rows_with_delta_columns(delta_columns, delta_rows)
                                                    raise StandardError, 'delta_columns cannot be null' if delta_columns.nil?
                                                    raise StandardError, 'delta_rows cannot be null' if delta_rows.nil?
                                                    return ResizedRangeWithDeltaRowsWithDeltaColumnsRequestBuilder.new(@path_parameters, @request_adapter, deltaColumns, deltaRows)
                                                end
                                                ## 
                                                ## Provides operations to call the rowsAbove method.
                                                ## @param count Usage: count={count}
                                                ## @return a rows_above_with_count_request_builder
                                                ## 
                                                def rows_above_with_count(count)
                                                    raise StandardError, 'count cannot be null' if count.nil?
                                                    return RowsAboveWithCountRequestBuilder.new(@path_parameters, @request_adapter, count)
                                                end
                                                ## 
                                                ## Provides operations to call the rowsBelow method.
                                                ## @param count Usage: count={count}
                                                ## @return a rows_below_with_count_request_builder
                                                ## 
                                                def rows_below_with_count(count)
                                                    raise StandardError, 'count cannot be null' if count.nil?
                                                    return RowsBelowWithCountRequestBuilder.new(@path_parameters, @request_adapter, count)
                                                end
                                                ## 
                                                ## Provides operations to call the row method.
                                                ## @param row Usage: row={row}
                                                ## @return a row_with_row_request_builder
                                                ## 
                                                def row_with_row(row)
                                                    raise StandardError, 'row cannot be null' if row.nil?
                                                    return RowWithRowRequestBuilder.new(@path_parameters, @request_adapter, row)
                                                end
                                                ## 
                                                ## Invoke function range
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
                                                ## Provides operations to call the usedRange method.
                                                ## @param values_only Usage: valuesOnly={valuesOnly}
                                                ## @return a used_range_with_values_only_request_builder
                                                ## 
                                                def used_range_with_values_only(values_only)
                                                    raise StandardError, 'values_only cannot be null' if values_only.nil?
                                                    return UsedRangeWithValuesOnlyRequestBuilder.new(@path_parameters, @request_adapter, valuesOnly)
                                                end
                                                ## 
                                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                ## @param raw_url The raw URL to use for the request builder.
                                                ## @return a range_request_builder
                                                ## 
                                                def with_url(raw_url)
                                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                    return RangeRequestBuilder.new(raw_url, @request_adapter)
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
