require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../../models/security_deployment_access_key_type'
require_relative '../../../security'
require_relative '../../identities'
require_relative '../sensors'
require_relative './microsoft_graph_security_regenerate_deployment_access_key'

module MicrosoftGraph
    module Security
        module Identities
            module Sensors
                module MicrosoftGraphSecurityRegenerateDeploymentAccessKey
                    ## 
                    # Provides operations to call the regenerateDeploymentAccessKey method.
                    class MicrosoftGraphSecurityRegenerateDeploymentAccessKeyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new MicrosoftGraphSecurityRegenerateDeploymentAccessKeyRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/security/identities/sensors/microsoft.graph.security.regenerateDeploymentAccessKey")
                        end
                        ## 
                        ## Generate a new deployment access key that can be used to install a sensor associated with the workspace.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of security_deployment_access_key_type
                        ## 
                        def post(request_configuration=nil)
                            request_info = self.to_post_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityDeploymentAccessKeyType.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Generate a new deployment access key that can be used to install a sensor associated with the workspace.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_post_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :POST
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a microsoft_graph_security_regenerate_deployment_access_key_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return MicrosoftGraphSecurityRegenerateDeploymentAccessKeyRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
