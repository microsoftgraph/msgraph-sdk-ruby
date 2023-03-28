require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../service_principals'
require_relative '../../item'
require_relative '../claims_mapping_policies'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module ServicePrincipals
        module Item
            module ClaimsMappingPolicies
                module Item
                    ## 
                    # Builds and executes requests for operations under \servicePrincipals\{servicePrincipal-id}\claimsMappingPolicies\{claimsMappingPolicy-id}
                    class ClaimsMappingPolicyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the collection of servicePrincipal entities.
                        def ref()
                            return MicrosoftGraph::ServicePrincipals::Item::ClaimsMappingPolicies::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ClaimsMappingPolicyItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/claimsMappingPolicies/{claimsMappingPolicy%2Did}")
                        end
                    end
                end
            end
        end
    end
end
