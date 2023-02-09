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
                    class HomeRealmDiscoveryPolicyItemRequestBuilder
                        
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # Provides operations to manage the collection of servicePrincipal entities.
                        def ref()
                            return MicrosoftGraph::ServicePrincipals::Item::HomeRealmDiscoveryPolicies::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Instantiates a new HomeRealmDiscoveryPolicyItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/homeRealmDiscoveryPolicies/{homeRealmDiscoveryPolicy%2Did}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                    end
                end
            end
        end
    end
end
