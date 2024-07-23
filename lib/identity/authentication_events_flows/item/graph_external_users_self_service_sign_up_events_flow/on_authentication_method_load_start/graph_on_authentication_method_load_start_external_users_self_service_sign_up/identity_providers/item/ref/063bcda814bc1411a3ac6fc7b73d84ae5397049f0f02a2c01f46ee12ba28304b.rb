require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../identity'
require_relative '../../../../../../../authentication_events_flows'
require_relative '../../../../../../item'
require_relative '../../../../../graph_external_users_self_service_sign_up_events_flow'
require_relative '../../../../on_authentication_method_load_start'
require_relative '../../../58488316f8253acf7a8e4a86532a399e446b9575e28151ed7acba97a24342341'
require_relative '../../5ef97b175e346a8a0842479b1c9b93af12b8f8b5d9e34a375b2f5bdba802eafc'
require_relative '../4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3'
require_relative './3ff6c05723bb069d19953340320fa9512f0be584742703e60226ded28bb43861'

module MicrosoftGraph
    module Identity
        module AuthenticationEventsFlows
            module Item
                module GraphExternalUsersSelfServiceSignUpEventsFlow
                    module OnAuthenticationMethodLoadStart
                        module GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp
                            module IdentityProviders
                                module Item
                                    module Ref
                                        ## 
                                        # Provides operations to manage the collection of identityContainer entities.
                                        class RefRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            ## Instantiates a new RefRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/identity/authenticationEventsFlows/{authenticationEventsFlow%2Did}/graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/{identityProviderBase%2Did}/$ref")
                                            end
                                            ## 
                                            ## Delete ref of navigation property identityProviders for identity
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of void
                                            ## 
                                            def delete(request_configuration=nil)
                                                request_info = self.to_delete_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, nil, error_mapping)
                                            end
                                            ## 
                                            ## Delete ref of navigation property identityProviders for identity
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a request_information
                                            ## 
                                            def to_delete_request_information(request_configuration=nil)
                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                unless request_configuration.nil?
                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                    request_info.add_request_options(request_configuration.options)
                                                end
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :DELETE
                                                request_info.headers.try_add('Accept', 'application/json')
                                                return request_info
                                            end
                                            ## 
                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                            ## @param raw_url The raw URL to use for the request builder.
                                            ## @return a ref_request_builder
                                            ## 
                                            def with_url(raw_url)
                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                return RefRequestBuilder.new(raw_url, @request_adapter)
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
