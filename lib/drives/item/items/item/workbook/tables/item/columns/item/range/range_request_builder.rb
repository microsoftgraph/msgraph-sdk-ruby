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
require_relative '../../columns'
require_relative '../item'
require_relative './range'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Tables
                            module Item
                                module Columns
                                    module Item
                                        module Range
                                            ## 
                                            # Provides operations to call the range method.
                                            class RangeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                
                                                ## 
                                                ## Instantiates a new RangeRequestBuilder and sets the default values.
                                                ## @param path_parameters Path parameters for the request
                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter)
                                                    super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/tables/{workbookTable%2Did}/columns/{workbookTableColumn%2Did}/range()")
                                                end
                                                ## 
                                                ## Gets the range object associated with the entire column.
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of workbook_range
                                                ## 
                                                def get(request_configuration=nil)
                                                    request_info = self.to_get_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookRange.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Gets the range object associated with the entire column.
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
                                                        request_info.add_request_options(request_configuration.options)
                                                    end
                                                    return request_info
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
