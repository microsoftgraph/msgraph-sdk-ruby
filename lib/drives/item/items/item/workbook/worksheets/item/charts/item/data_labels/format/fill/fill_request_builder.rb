require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../models/workbook_chart_fill'
require_relative '../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../item'
require_relative '../../../../../../../../../items'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../workbook'
require_relative '../../../../../../worksheets'
require_relative '../../../../../item'
require_relative '../../../../charts'
require_relative '../../../item'
require_relative '../../data_labels'
require_relative '../format'
require_relative './clear/clear_request_builder'
require_relative './fill'
require_relative './set_solid_color/set_solid_color_request_builder'

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
                                        module DataLabels
                                            module Format
                                                module Fill
                                                    ## 
                                                    # Provides operations to manage the fill property of the microsoft.graph.workbookChartDataLabelFormat entity.
                                                    class FillRequestBuilder
                                                        
                                                        ## 
                                                        # Provides operations to call the clear method.
                                                        def clear()
                                                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::DataLabels::Format::Fill::Clear::ClearRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Path parameters for the request
                                                        @path_parameters
                                                        ## 
                                                        # The request adapter to use to execute the requests.
                                                        @request_adapter
                                                        ## 
                                                        # Provides operations to call the setSolidColor method.
                                                        def set_solid_color()
                                                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::DataLabels::Format::Fill::SetSolidColor::SetSolidColorRequestBuilder.new(@path_parameters, @request_adapter)
                                                        end
                                                        ## 
                                                        # Url template to use to build the URL for the current request builder
                                                        @url_template
                                                        ## 
                                                        ## Instantiates a new FillRequestBuilder and sets the default values.
                                                        ## @param pathParameters Path parameters for the request
                                                        ## @param requestAdapter The request adapter to use to execute the requests.
                                                        ## @return a void
                                                        ## 
                                                        def initialize(path_parameters, request_adapter)
                                                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                            @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/{workbookChart%2Did}/dataLabels/format/fill{?%24select,%24expand}"
                                                            @request_adapter = request_adapter
                                                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                        end
                                                        ## 
                                                        ## Delete navigation property fill for drives
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
                                                        ## Represents the fill format of the current chart data label. Read-only.
                                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of workbook_chart_fill
                                                        ## 
                                                        def get(request_configuration=nil)
                                                            request_info = self.to_get_request_information(
                                                                request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartFill.create_from_discriminator_value(pn) }, error_mapping)
                                                        end
                                                        ## 
                                                        ## Update the navigation property fill in drives
                                                        ## @param body The request body
                                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of workbook_chart_fill
                                                        ## 
                                                        def patch(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = self.to_patch_request_information(
                                                                body, request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartFill.create_from_discriminator_value(pn) }, error_mapping)
                                                        end
                                                        ## 
                                                        ## Delete navigation property fill for drives
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
                                                        ## Represents the fill format of the current chart data label. Read-only.
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
                                                        ## Update the navigation property fill in drives
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
                                                        class FillRequestBuilderDeleteRequestConfiguration
                                                            
                                                            ## 
                                                            # Request headers
                                                            attr_accessor :headers
                                                            ## 
                                                            # Request options
                                                            attr_accessor :options
                                                        end

                                                        ## 
                                                        # Represents the fill format of the current chart data label. Read-only.
                                                        class FillRequestBuilderGetQueryParameters
                                                            
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
                                                        class FillRequestBuilderGetRequestConfiguration
                                                            
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
                                                        class FillRequestBuilderPatchRequestConfiguration
                                                            
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
end
