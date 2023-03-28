require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../service_principals'
require_relative '../../item'
require_relative '../home_realm_discovery_policies'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module ServicePrincipals
        module Item
            module HomeRealmDiscoveryPolicies
                module Item
                    ## 
                    # Builds and executes requests for operations under \servicePrincipals\{servicePrincipal-id}\homeRealmDiscoveryPolicies\{homeRealmDiscoveryPolicy-id}
                    class HomeRealmDiscoveryPolicyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the collection of servicePrincipal entities.
                        def ref()
                            return MicrosoftGraph::ServicePrincipals::Item::HomeRealmDiscoveryPolicies::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new HomeRealmDiscoveryPolicyItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/homeRealmDiscoveryPolicies/{homeRealmDiscoveryPolicy%2Did}")
                        end
                    end
                end
            end
        end
    end
end
