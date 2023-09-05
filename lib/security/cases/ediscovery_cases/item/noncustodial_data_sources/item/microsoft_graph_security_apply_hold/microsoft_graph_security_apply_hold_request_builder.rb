require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../security'
require_relative '../../../../../cases'
require_relative '../../../../ediscovery_cases'
require_relative '../../../item'
require_relative '../../noncustodial_data_sources'
require_relative '../item'
require_relative './microsoft_graph_security_apply_hold'

module MicrosoftGraph
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module NoncustodialDataSources
                        module Item
                            module MicrosoftGraphSecurityApplyHold
                                ## 
                                # Provides operations to call the applyHold method.
                                class MicrosoftGraphSecurityApplyHoldRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    ## Instantiates a new MicrosoftGraphSecurityApplyHoldRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/noncustodialDataSources/{ediscoveryNoncustodialDataSource%2Did}/microsoft.graph.security.applyHold")
                                    end
                                    ## 
                                    ## Start the process of applying hold on eDiscovery non-custodial data sources. After the operation is created, you can get the status by retrieving the Location parameter from the response headers. The location provides a URL that will return an eDiscoveryHoldOperation object.
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
                                    ## Start the process of applying hold on eDiscovery non-custodial data sources. After the operation is created, you can get the status by retrieving the Location parameter from the response headers. The location provides a URL that will return an eDiscoveryHoldOperation object.
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
                                    ## @return a microsoft_graph_security_apply_hold_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return MicrosoftGraphSecurityApplyHoldRequestBuilder.new(raw_url, @request_adapter)
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
