require 'microsoft_kiota_abstractions'
require_relative '../../../../../identity_governance'
require_relative '../../../../entitlement_management'
require_relative '../../../connected_organizations'
require_relative '../../item'
require_relative '../external_sponsors'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::ExternalSponsors::Item
    ## 
    # Builds and executes requests for operations under \identityGovernance\entitlementManagement\connectedOrganizations\{connectedOrganization-id}\externalSponsors\{directoryObject-id}
    class DirectoryObjectItemRequestBuilder
        
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of identityGovernance entities.
        def ref()
            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::ExternalSponsors::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/identityGovernance/entitlementManagement/connectedOrganizations/{connectedOrganization%2Did}/externalSponsors/{directoryObject%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
