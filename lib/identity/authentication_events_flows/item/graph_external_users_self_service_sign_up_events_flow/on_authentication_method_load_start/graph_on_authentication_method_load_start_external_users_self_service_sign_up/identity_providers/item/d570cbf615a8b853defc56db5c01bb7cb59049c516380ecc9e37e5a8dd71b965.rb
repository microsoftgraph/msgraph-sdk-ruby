require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../identity'
require_relative '../../../../../../authentication_events_flows'
require_relative '../../../../../item'
require_relative '../../../../graph_external_users_self_service_sign_up_events_flow'
require_relative '../../../on_authentication_method_load_start'
require_relative '../../58488316f8253acf7a8e4a86532a399e446b9575e28151ed7acba97a24342341'
require_relative '../5ef97b175e346a8a0842479b1c9b93af12b8f8b5d9e34a375b2f5bdba802eafc'
require_relative './4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3'
require_relative './ref/063bcda814bc1411a3ac6fc7b73d84ae5397049f0f02a2c01f46ee12ba28304b'

module MicrosoftGraph
    module Identity
        module AuthenticationEventsFlows
            module Item
                module GraphExternalUsersSelfServiceSignUpEventsFlow
                    module OnAuthenticationMethodLoadStart
                        module GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp
                            module IdentityProviders
                                module Item
                                    ## 
                                    # Builds and executes requests for operations under \identity\authenticationEventsFlows\{authenticationEventsFlow-id}\graph.externalUsersSelfServiceSignUpEventsFlow\onAuthenticationMethodLoadStart\graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp\identityProviders\{identityProviderBase-id}
                                    class IdentityProviderBaseItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to manage the collection of identityContainer entities.
                                        def ref()
                                            return MicrosoftGraph::Identity::AuthenticationEventsFlows::Item::GraphExternalUsersSelfServiceSignUpEventsFlow::OnAuthenticationMethodLoadStart::GraphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp::IdentityProviders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new IdentityProviderBaseItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/identity/authenticationEventsFlows/{authenticationEventsFlow%2Did}/graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/{identityProviderBase%2Did}")
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
