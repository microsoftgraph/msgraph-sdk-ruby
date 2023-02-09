require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../identity_governance'
require_relative '../../../../../../entitlement_management'
require_relative '../../../../../catalogs'
require_relative '../../../../item'
require_relative '../../../access_packages'
require_relative '../../item'
require_relative '../incompatible_access_packages'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module Catalogs
                module Item
                    module AccessPackages
                        module Item
                            module IncompatibleAccessPackages
                                module Item
                                    ## 
                                    # Builds and executes requests for operations under \identityGovernance\entitlementManagement\catalogs\{accessPackageCatalog-id}\accessPackages\{accessPackage-id}\incompatibleAccessPackages\{accessPackage-id1}
                                    class AccessPackageItemRequestBuilder
                                        
                                        ## 
                                        # Path parameters for the request
                                        @path_parameters
                                        ## 
                                        # Provides operations to manage the collection of identityGovernance entities.
                                        def ref()
                                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::Catalogs::Item::AccessPackages::Item::IncompatibleAccessPackages::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # The request adapter to use to execute the requests.
                                        @request_adapter
                                        ## 
                                        # Url template to use to build the URL for the current request builder
                                        @url_template
                                        ## 
                                        ## Instantiates a new AccessPackageItemRequestBuilder and sets the default values.
                                        ## @param pathParameters Path parameters for the request
                                        ## @param requestAdapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                            @url_template = "{+baseurl}/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalog%2Did}/accessPackages/{accessPackage%2Did}/incompatibleAccessPackages/{accessPackage%2Did1}"
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
            end
        end
    end
end
