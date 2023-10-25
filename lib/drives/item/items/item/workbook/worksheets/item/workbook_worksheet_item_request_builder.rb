require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../models/workbook_worksheet'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../worksheets'
require_relative './cell_with_row_with_column/cell_with_row_with_column_request_builder'
require_relative './charts/charts_request_builder'
require_relative './item'
require_relative './names/names_request_builder'
require_relative './pivot_tables/pivot_tables_request_builder'
require_relative './protection/protection_request_builder'
require_relative './range/range_request_builder'
require_relative './range_with_address/range_with_address_request_builder'
require_relative './tables/tables_request_builder'
require_relative './used_range/used_range_request_builder'
require_relative './used_range_with_values_only/used_range_with_values_only_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                ## 
                                # Provides operations to manage the worksheets property of the microsoft.graph.workbook entity.
                                class WorkbookWorksheetItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to manage the charts property of the microsoft.graph.workbookWorksheet entity.
                                    def charts()
                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::ChartsRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the names property of the microsoft.graph.workbookWorksheet entity.
                                    def names()
                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Names::NamesRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the pivotTables property of the microsoft.graph.workbookWorksheet entity.
                                    def pivot_tables()
                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::PivotTables::PivotTablesRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the protection property of the microsoft.graph.workbookWorksheet entity.
                                    def protection()
                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Protection::ProtectionRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the range method.
                                    def range()
                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Range::RangeRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to manage the tables property of the microsoft.graph.workbookWorksheet entity.
                                    def tables()
                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Tables::TablesRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the usedRange method.
                                    def used_range()
                                        return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::UsedRange::UsedRangeRequestBuilder.new(@path_parameters, @request_adapter)
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
                                    ## Instantiates a new WorkbookWorksheetItemRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}{?%24select,%24expand}")
                                    end
                                    ## 
                                    ## Deletes the worksheet from the workbook. This API is available in the following national cloud deployments.
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
                                    ## Retrieve the properties and relationships of worksheet object. This API is available in the following national cloud deployments.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of workbook_worksheet
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Update the properties of worksheet object. This API is available in the following national cloud deployments.
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of workbook_worksheet
                                    ## 
                                    def patch(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_patch_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheet.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Provides operations to call the range method.
                                    ## @param address Usage: address='{address}'
                                    ## @return a range_with_address_request_builder
                                    ## 
                                    def range_with_address(address)
                                        raise StandardError, 'address cannot be null' if address.nil?
                                        return RangeWithAddressRequestBuilder.new(@path_parameters, @request_adapter, address)
                                    end
                                    ## 
                                    ## Deletes the worksheet from the workbook. This API is available in the following national cloud deployments.
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
                                        request_info.headers.try_add('Accept', 'application/json, application/json')
                                        return request_info
                                    end
                                    ## 
                                    ## Retrieve the properties and relationships of worksheet object. This API is available in the following national cloud deployments.
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
                                        request_info.headers.try_add('Accept', 'application/json;q=1')
                                        return request_info
                                    end
                                    ## 
                                    ## Update the properties of worksheet object. This API is available in the following national cloud deployments.
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
                                        request_info.headers.try_add('Accept', 'application/json;q=1')
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
                                    ## @return a workbook_worksheet_item_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return WorkbookWorksheetItemRequestBuilder.new(raw_url, @request_adapter)
                                    end

                                    ## 
                                    # Retrieve the properties and relationships of worksheet object. This API is available in the following national cloud deployments.
                                    class WorkbookWorksheetItemRequestBuilderGetQueryParameters
                                        
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
