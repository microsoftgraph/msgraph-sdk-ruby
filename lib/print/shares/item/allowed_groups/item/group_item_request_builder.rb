require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../print'
require_relative '../../../shares'
require_relative '../../item'
require_relative '../allowed_groups'
require_relative './item'
require_relative './ref/ref_request_builder'
require_relative './service_provisioning_errors/service_provisioning_errors_request_builder'

module MicrosoftGraph
    module Print
        module Shares
            module Item
                module AllowedGroups
                    module Item
                        ## 
                        # Builds and executes requests for operations under \print\shares\{printerShare-id}\allowedGroups\{group-id}
                        class GroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of print entities.
                            def ref()
                                return MicrosoftGraph::Print::Shares::Item::AllowedGroups::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The serviceProvisioningErrors property
                            def service_provisioning_errors()
                                return MicrosoftGraph::Print::Shares::Item::AllowedGroups::Item::ServiceProvisioningErrors::ServiceProvisioningErrorsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new GroupItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/print/shares/{printerShare%2Did}/allowedGroups/{group%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
