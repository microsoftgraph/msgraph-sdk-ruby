require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../applications'
require_relative '../../item'
require_relative '../token_lifetime_policies'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Applications
        module Item
            module TokenLifetimePolicies
                module Item
                    ## 
                    # Builds and executes requests for operations under \applications\{application-id}\tokenLifetimePolicies\{tokenLifetimePolicy-id}
                    class TokenLifetimePolicyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the collection of application entities.
                        def ref()
                            return MicrosoftGraph::Applications::Item::TokenLifetimePolicies::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new TokenLifetimePolicyItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/applications/{application%2Did}/tokenLifetimePolicies/{tokenLifetimePolicy%2Did}")
                        end
                    end
                end
            end
        end
    end
end
