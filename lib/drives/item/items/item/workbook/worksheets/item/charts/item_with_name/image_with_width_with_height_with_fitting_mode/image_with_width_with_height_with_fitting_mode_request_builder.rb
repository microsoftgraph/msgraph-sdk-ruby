require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../drives'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../items'
require_relative '../../../../../../item'
require_relative '../../../../../workbook'
require_relative '../../../../worksheets'
require_relative '../../../item'
require_relative '../../charts'
require_relative '../item_with_name'
require_relative './image_with_width_with_height_with_fitting_mode'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Charts
                                    module ItemWithName
                                        module ImageWithWidthWithHeightWithFittingMode
                                            ## 
                                            # Provides operations to call the image method.
                                            class ImageWithWidthWithHeightWithFittingModeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                
                                                ## 
                                                ## Instantiates a new ImageWithWidthWithHeightWithFittingModeRequestBuilder and sets the default values.
                                                ## @param fitting_mode Usage: fittingMode='{fittingMode}'
                                                ## @param height Usage: height={height}
                                                ## @param path_parameters Path parameters for the request
                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                ## @param width Usage: width={width}
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter, fitting_mode=nil, height=nil, width=nil)
                                                    super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/item(name='{name}')/image(width={width},height={height},fittingMode='{fittingMode}')")
                                                end
                                                ## 
                                                ## Invoke function image
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of image_with_width_with_height_with_fitting_mode_get_response
                                                ## 
                                                def get(request_configuration=nil)
                                                    request_info = self.to_get_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::ItemWithName::ImageWithWidthWithHeightWithFittingMode::ImageWithWidthWithHeightWithFittingModeGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Invoke function image
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
                                                ## @return a image_with_width_with_height_with_fitting_mode_request_builder
                                                ## 
                                                def with_url(raw_url)
                                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                    return ImageWithWidthWithHeightWithFittingModeRequestBuilder.new(raw_url, @request_adapter)
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
