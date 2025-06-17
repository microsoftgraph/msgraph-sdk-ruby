require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../identity'
require_relative '../../../../../../authentication_events_flows'
require_relative '../../../../../item'
require_relative '../../../../graph_external_users_self_service_sign_up_events_flow'
require_relative '../../../on_attribute_collection'
require_relative '../../f024c257001096dd92a7acdfc2e3732ad4ca2d3fce6fa8a836886e7189548c1b'
require_relative '../attributes'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Identity
        module AuthenticationEventsFlows
            module Item
                module GraphExternalUsersSelfServiceSignUpEventsFlow
                    module OnAttributeCollection
                        module GraphOnAttributeCollectionExternalUsersSelfServiceSignUp
                            module Attributes
                                module Item
                                    ## 
                                    # Builds and executes requests for operations under \identity\authenticationEventsFlows\{authenticationEventsFlow-id}\graph.externalUsersSelfServiceSignUpEventsFlow\onAttributeCollection\graph.onAttributeCollectionExternalUsersSelfServiceSignUp\attributes\{identityUserFlowAttribute-id}
                                    class IdentityUserFlowAttributeItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to manage the collection of identityContainer entities.
                                        def ref()
                                            return MicrosoftGraph::Identity::AuthenticationEventsFlows::Item::GraphExternalUsersSelfServiceSignUpEventsFlow::OnAttributeCollection::GraphOnAttributeCollectionExternalUsersSelfServiceSignUp::Attributes::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new IdentityUserFlowAttributeItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/identity/authenticationEventsFlows/{authenticationEventsFlow%2Did}/graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/{identityUserFlowAttribute%2Did}")
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
