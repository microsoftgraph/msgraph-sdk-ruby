require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/on_authentication_method_load_start_external_users_self_service_sign_up'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../identity'
require_relative '../../../../authentication_events_flows'
require_relative '../../../item'
require_relative '../../graph_external_users_self_service_sign_up_events_flow'
require_relative '../on_authentication_method_load_start'
require_relative './58488316f8253acf7a8e4a86532a399e446b9575e28151ed7acba97a24342341'
require_relative './identity_providers/2088f24069c31169b499380234b3747c456f1ba1815c4dd80711955dfa01e61a'

module MicrosoftGraph
    module Identity
        module AuthenticationEventsFlows
            module Item
                module GraphExternalUsersSelfServiceSignUpEventsFlow
                    module OnAuthenticationMethodLoadStart
                        module GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp
                            ## 
                            # Casts the previous resource to onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp.
                            class GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUpRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the identityProviders property of the microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp entity.
                                def identity_providers()
                                    return MicrosoftGraph::Identity::AuthenticationEventsFlows::Item::GraphExternalUsersSelfServiceSignUpEventsFlow::OnAuthenticationMethodLoadStart::GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp::IdentityProviders::IdentityProvidersRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUpRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identity/authenticationEventsFlows/{authenticationEventsFlow%2Did}/graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp")
                                end
                                ## 
                                ## Get the item of type microsoft.graph.onAuthenticationMethodLoadStartHandler as microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of on_authentication_method_load_start_external_users_self_service_sign_up
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Get the item of type microsoft.graph.onAuthenticationMethodLoadStartHandler as microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp
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
                                ## @return a graph_on_authentication_method_load_start_external_users_self_service_sign_up_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUpRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
