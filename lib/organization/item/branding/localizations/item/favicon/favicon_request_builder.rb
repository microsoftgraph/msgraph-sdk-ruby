require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../organization'
require_relative '../../../../item'
require_relative '../../../branding'
require_relative '../../localizations'
require_relative '../item'
require_relative './favicon'

module MicrosoftGraph
    module Organization
        module Item
            module Branding
                module Localizations
                    module Item
                        module Favicon
                            ## 
                            # Provides operations to manage the media for the organization entity.
                            class FaviconRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new FaviconRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/organization/{organization%2Did}/branding/localizations/{organizationalBrandingLocalization%2Did}/favicon")
                                end
                                ## 
                                ## A custom icon (favicon) to replace a default Microsoft product favicon on a Microsoft Entra tenant.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of binary
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, Binary, error_mapping)
                                end
                                ## 
                                ## A custom icon (favicon) to replace a default Microsoft product favicon on a Microsoft Entra tenant.
                                ## @param body Binary request body
                                ## @param content_type The request body content type.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of binary
                                ## 
                                def put(body, content_type, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    raise StandardError, 'content_type cannot be null' if content_type.nil?
                                    request_info = self.to_put_request_information(
                                        body, content_type, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, Binary, error_mapping)
                                end
                                ## 
                                ## A custom icon (favicon) to replace a default Microsoft product favicon on a Microsoft Entra tenant.
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
                                    request_info.headers.try_add('Accept', 'image/bmp, image/jpg, image/jpeg, image/gif, image/vnd.microsoft.icon, image/png, image/tiff, application/json')
                                    return request_info
                                end
                                ## 
                                ## A custom icon (favicon) to replace a default Microsoft product favicon on a Microsoft Entra tenant.
                                ## @param body Binary request body
                                ## @param content_type The request body content type.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_put_request_information(body, content_type, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    raise StandardError, 'content_type cannot be null' if content_type.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, '', body)
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PUT
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a favicon_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return FaviconRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
