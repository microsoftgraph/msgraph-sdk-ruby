require 'microsoft_kiota_abstractions'
require_relative '../../../../identity'
require_relative '../../../b2x_user_flows'
require_relative '../../item'
require_relative '../user_flow_identity_providers'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph::Identity::B2xUserFlows::Item::UserFlowIdentityProviders::Item
    ## 
    # Builds and executes requests for operations under \identity\b2xUserFlows\{b2xIdentityUserFlow-id}\userFlowIdentityProviders\{identityProviderBase-id}
    class IdentityProviderBaseItemRequestBuilder
        
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of identityContainer entities.
        def ref()
            return MicrosoftGraph::Identity::B2xUserFlows::Item::UserFlowIdentityProviders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new IdentityProviderBaseItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/identity/b2xUserFlows/{b2xIdentityUserFlow%2Did}/userFlowIdentityProviders/{identityProviderBase%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
