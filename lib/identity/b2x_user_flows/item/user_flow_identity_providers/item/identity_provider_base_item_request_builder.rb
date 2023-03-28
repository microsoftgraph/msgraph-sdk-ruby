require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../identity'
require_relative '../../../b2x_user_flows'
require_relative '../../item'
require_relative '../user_flow_identity_providers'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Identity
        module B2xUserFlows
            module Item
                module UserFlowIdentityProviders
                    module Item
                        ## 
                        # Builds and executes requests for operations under \identity\b2xUserFlows\{b2xIdentityUserFlow-id}\userFlowIdentityProviders\{identityProviderBase-id}
                        class IdentityProviderBaseItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of identityContainer entities.
                            def ref()
                                return MicrosoftGraph::Identity::B2xUserFlows::Item::UserFlowIdentityProviders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new IdentityProviderBaseItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/identity/b2xUserFlows/{b2xIdentityUserFlow%2Did}/userFlowIdentityProviders/{identityProviderBase%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
