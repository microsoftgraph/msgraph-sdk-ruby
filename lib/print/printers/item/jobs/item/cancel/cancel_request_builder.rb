require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../print'
require_relative '../../../../printers'
require_relative '../../../item'
require_relative '../../jobs'
require_relative '../item'
require_relative './cancel'

module MicrosoftGraph
    module Print
        module Printers
            module Item
                module Jobs
                    module Item
                        module Cancel
                            ## 
                            # Provides operations to call the cancel method.
                            class CancelRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new CancelRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/print/printers/{printer%2Did}/jobs/{printJob%2Did}/cancel")
                                end
                                ## 
                                ## Cancel a print job. Print jobs can be canceled only on behalf of a user, using delegated permissions.
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
                                ## Cancel a print job. Print jobs can be canceled only on behalf of a user, using delegated permissions.
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
                            end
                        end
                    end
                end
            end
        end
    end
end
