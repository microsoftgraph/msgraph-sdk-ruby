require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/on_authentication_method_load_start_handler'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../identity'
require_relative '../../../authentication_events_flows'
require_relative '../../item'
require_relative '../graph_external_users_self_service_sign_up_events_flow'
require_relative './graph_on_authentication_method_load_start_external_users_self_service_sign_up/0d30463e3d6e1fc8d5786c35777f82039ac09c52227259d20e0697eabbc43739'
require_relative './on_authentication_method_load_start'

module MicrosoftGraph
    module Identity
        module AuthenticationEventsFlows
            module Item
                module GraphExternalUsersSelfServiceSignUpEventsFlow
                    module OnAuthenticationMethodLoadStart
                        ## 
                        # Builds and executes requests for operations under \identity\authenticationEventsFlows\{authenticationEventsFlow-id}\graph.externalUsersSelfServiceSignUpEventsFlow\onAuthenticationMethodLoadStart
                        class OnAuthenticationMethodLoadStartRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Casts the previous resource to onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp.
                            def graph_on_authentication_method_load_start_external_users_self_service_sign_up()
                                return MicrosoftGraph::Identity::AuthenticationEventsFlows::Item::GraphExternalUsersSelfServiceSignUpEventsFlow::OnAuthenticationMethodLoadStart::GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp::GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUpRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new OnAuthenticationMethodLoadStartRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/identity/authenticationEventsFlows/{authenticationEventsFlow%2Did}/graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart{?%24expand,%24select}")
                            end
                            ## 
                            ## Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of on_authentication_method_load_start_handler
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::OnAuthenticationMethodLoadStartHandler.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_get_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
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
                            ## @return a on_authentication_method_load_start_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return OnAuthenticationMethodLoadStartRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.
                            class OnAuthenticationMethodLoadStartRequestBuilderGetQueryParameters
                                
                                ## 
                                # Expand related entities
                                attr_accessor :expand
                                ## 
                                # Select properties to be returned
                                attr_accessor :select
                                ## 
                                ## Maps the query parameters names to their encoded names for the URI template parsing.
                                ## @param original_name The original query parameter name in the class.
                                ## @return a string
                                ## 
                                def get_query_parameter(original_name)
                                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                                    case original_name
                                        when "expand"
                                            return "%24expand"
                                        when "select"
                                            return "%24select"
                                        else
                                            return original_name
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
