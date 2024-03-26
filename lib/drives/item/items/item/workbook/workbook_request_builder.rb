require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../models/workbook'
require_relative '../../../../drives'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './application/application_request_builder'
require_relative './close_session/close_session_request_builder'
require_relative './comments/comments_request_builder'
require_relative './create_session/create_session_request_builder'
require_relative './functions/functions_request_builder'
require_relative './names/names_request_builder'
require_relative './operations/operations_request_builder'
require_relative './refresh_session/refresh_session_request_builder'
require_relative './session_info_resource_with_key/session_info_resource_with_key_request_builder'
require_relative './table_row_operation_result_with_key/table_row_operation_result_with_key_request_builder'
require_relative './tables/tables_request_builder'
require_relative './workbook'
require_relative './worksheets/worksheets_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        ## 
                        # Provides operations to manage the workbook property of the microsoft.graph.driveItem entity.
                        class WorkbookRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the application property of the microsoft.graph.workbook entity.
                            def application()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Application::ApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the closeSession method.
                            def close_session()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::CloseSession::CloseSessionRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the comments property of the microsoft.graph.workbook entity.
                            def comments()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Comments::CommentsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the createSession method.
                            def create_session()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::CreateSession::CreateSessionRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the functions property of the microsoft.graph.workbook entity.
                            def functions()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Functions::FunctionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the names property of the microsoft.graph.workbook entity.
                            def names()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Names::NamesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the operations property of the microsoft.graph.workbook entity.
                            def operations()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the refreshSession method.
                            def refresh_session()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::RefreshSession::RefreshSessionRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the tables property of the microsoft.graph.workbook entity.
                            def tables()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::TablesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the worksheets property of the microsoft.graph.workbook entity.
                            def worksheets()
                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::WorksheetsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WorkbookRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook{?%24expand,%24select}")
                            end
                            ## 
                            ## Delete navigation property workbook for drives
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of void
                            ## 
                            def delete(request_configuration=nil)
                                request_info = self.to_delete_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, nil, error_mapping)
                            end
                            ## 
                            ## For files that are Excel spreadsheets, access to the workbook API to work with the spreadsheet's contents. Nullable.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of workbook
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Workbook.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update the navigation property workbook in drives
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of workbook
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Workbook.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Provides operations to call the sessionInfoResource method.
                            ## @param key Usage: key='{key}'
                            ## @return a session_info_resource_with_key_request_builder
                            ## 
                            def session_info_resource_with_key(key)
                                raise StandardError, 'key cannot be null' if key.nil?
                                return SessionInfoResourceWithKeyRequestBuilder.new(@path_parameters, @request_adapter, key)
                            end
                            ## 
                            ## Provides operations to call the tableRowOperationResult method.
                            ## @param key Usage: key='{key}'
                            ## @return a table_row_operation_result_with_key_request_builder
                            ## 
                            def table_row_operation_result_with_key(key)
                                raise StandardError, 'key cannot be null' if key.nil?
                                return TableRowOperationResultWithKeyRequestBuilder.new(@path_parameters, @request_adapter, key)
                            end
                            ## 
                            ## Delete navigation property workbook for drives
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_delete_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.url_template = '{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook'
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :DELETE
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## For files that are Excel spreadsheets, access to the workbook API to work with the spreadsheet's contents. Nullable.
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
                            ## Update the navigation property workbook in drives
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
                                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                request_info.url_template = '{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook'
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :PATCH
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a workbook_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return WorkbookRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # For files that are Excel spreadsheets, access to the workbook API to work with the spreadsheet's contents. Nullable.
                            class WorkbookRequestBuilderGetQueryParameters
                                
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
