require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../identity_governance'
require_relative '../../../../entitlement_management'
require_relative '../../../access_packages'
require_relative '../../item'
require_relative '../incompatible_groups'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackages
                module Item
                    module IncompatibleGroups
                        module Item
                            ## 
                            # Builds and executes requests for operations under \identityGovernance\entitlementManagement\accessPackages\{accessPackage-id}\incompatibleGroups\{group-id}
                            class GroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the collection of identityGovernance entities.
                                def ref()
                                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::IncompatibleGroups::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new GroupItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackages/{accessPackage%2Did}/incompatibleGroups/{group%2Did}")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
