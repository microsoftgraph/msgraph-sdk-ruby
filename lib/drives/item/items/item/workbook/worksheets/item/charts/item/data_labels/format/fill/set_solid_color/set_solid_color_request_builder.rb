require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../../item'
require_relative '../../../../../../../../../../items'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../workbook'
require_relative '../../../../../../../worksheets'
require_relative '../../../../../../item'
require_relative '../../../../../charts'
require_relative '../../../../item'
require_relative '../../../data_labels'
require_relative '../../format'
require_relative '../fill'
require_relative './set_solid_color'

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
                                                    module SetSolidColor
                                                        ## 
                                                        # Provides operations to call the setSolidColor method.
                                                        class SetSolidColorRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                            
                                                            ## 
                                                            ## Instantiates a new SetSolidColorRequestBuilder and sets the default values.
                                                            ## @param path_parameters Path parameters for the request
                                                            ## @param request_adapter The request adapter to use to execute the requests.
                                                            ## @return a void
                                                            ## 
                                                            def initialize(path_parameters, request_adapter)
                                                                super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/{workbookChart%2Did}/dataLabels/format/fill/setSolidColor")
                                                            end
                                                            ## 
                                                            ## Sets the fill formatting of a chart element to a uniform color.
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of void
                                                            ## 
                                                            def post(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = self.to_post_request_information(
                                                                    body, request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, nil, error_mapping)
                                                            end
                                                            ## 
                                                            ## Sets the fill formatting of a chart element to a uniform color.
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a request_information
                                                            ## 
                                                            def to_post_request_information(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                request_info.url_template = @url_template
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :POST
                                                                unless request_configuration.nil?
                                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                    request_info.add_request_options(request_configuration.options)
                                                                end
                                                                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
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
        end
    end
end
