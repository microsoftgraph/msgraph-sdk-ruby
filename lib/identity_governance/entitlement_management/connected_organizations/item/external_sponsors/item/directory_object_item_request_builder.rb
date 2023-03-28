require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../identity_governance'
require_relative '../../../../entitlement_management'
require_relative '../../../connected_organizations'
require_relative '../../item'
require_relative '../external_sponsors'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module ConnectedOrganizations
                module Item
                    module ExternalSponsors
                        module Item
                            ## 
                            # Builds and executes requests for operations under \identityGovernance\entitlementManagement\connectedOrganizations\{connectedOrganization-id}\externalSponsors\{directoryObject-id}
                            class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the collection of identityGovernance entities.
                                def ref()
                                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::ExternalSponsors::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/connectedOrganizations/{connectedOrganization%2Did}/externalSponsors/{directoryObject%2Did}")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
