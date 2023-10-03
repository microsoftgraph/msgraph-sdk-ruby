require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../../../item'
require_relative '../../../../../../../../../../../items'
require_relative '../../../../../../../../../../item'
require_relative '../../../../../../../../../workbook'
require_relative '../../../../../../../../worksheets'
require_relative '../../../../../../../item'
require_relative '../../../../../../charts'
require_relative '../../../../../item'
require_relative '../../../../series'
require_relative '../../../item'
require_relative '../../format'
require_relative '../fill'
require_relative './clear'

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
                                                module Format
                                                    module Fill
                                                        module Clear
                                                            ## 
                                                            # Provides operations to call the clear method.
                                                            class ClearRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                                
                                                                ## 
                                                                ## Instantiates a new ClearRequestBuilder and sets the default values.
                                                                ## @param path_parameters Path parameters for the request
                                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                                ## @return a void
                                                                ## 
                                                                def initialize(path_parameters, request_adapter)
                                                                    super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/{workbookChart%2Did}/series/{workbookChartSeries%2Did}/format/fill/clear")
                                                                end
                                                                ## 
                                                                ## Clear the fill color of a chart element. This API is supported in the following national cloud deployments.
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a Fiber of void
                                                                ## 
                                                                def post(request_configuration=nil)
                                                                    request_info = self.to_post_request_information(
                                                                        request_configuration
                                                                    )
                                                                    error_mapping = Hash.new
                                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                                                end
                                                                ## 
                                                                ## Clear the fill color of a chart element. This API is supported in the following national cloud deployments.
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a request_information
                                                                ## 
                                                                def to_post_request_information(request_configuration=nil)
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
                                                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                                ## @param raw_url The raw URL to use for the request builder.
                                                                ## @return a clear_request_builder
                                                                ## 
                                                                def with_url(raw_url)
                                                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                                    return ClearRequestBuilder.new(raw_url, @request_adapter)
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
