require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../domains'
require_relative '../item'
require_relative './force_delete'

module MicrosoftGraph
    module Domains
        module Item
            module ForceDelete
                ## 
                # Provides operations to call the forceDelete method.
                class ForceDeleteRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new ForceDeleteRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/domains/{domain%2Did}/forceDelete")
                    end
                    ## 
                    ## Deletes a domain using an asynchronous long-running operation. Prior to calling forceDelete, you must update or remove any references to Exchange as the provisioning service. The following actions are performed as part of this operation: After the domain deletion completes, API operations for the deleted domain will return an HTTP 404 status code. To verify deletion of a domain, you can perform a get domain operation.
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
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Deletes a domain using an asynchronous long-running operation. Prior to calling forceDelete, you must update or remove any references to Exchange as the provisioning service. The following actions are performed as part of this operation: After the domain deletion completes, API operations for the deleted domain will return an HTTP 404 status code. To verify deletion of a domain, you can perform a get domain operation.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_post_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :POST
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a force_delete_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return ForceDeleteRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
