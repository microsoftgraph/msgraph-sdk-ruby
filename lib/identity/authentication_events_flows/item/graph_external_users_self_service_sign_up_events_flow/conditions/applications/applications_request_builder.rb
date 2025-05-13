require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../identity'
require_relative '../../../../authentication_events_flows'
require_relative '../../../item'
require_relative '../../graph_external_users_self_service_sign_up_events_flow'
require_relative '../conditions'
require_relative './applications'
require_relative './include_applications/include_applications_request_builder'

module MicrosoftGraph
    module Identity
        module AuthenticationEventsFlows
            module Item
                module GraphExternalUsersSelfServiceSignUpEventsFlow
                    module Conditions
                        module Applications
                            ## 
                            # Builds and executes requests for operations under \identity\authenticationEventsFlows\{authenticationEventsFlow-id}\graph.externalUsersSelfServiceSignUpEventsFlow\conditions\applications
                            class ApplicationsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the includeApplications property of the microsoft.graph.authenticationConditionsApplications entity.
                                def include_applications()
                                    return MicrosoftGraph::Identity::AuthenticationEventsFlows::Item::GraphExternalUsersSelfServiceSignUpEventsFlow::Conditions::Applications::IncludeApplications::IncludeApplicationsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new ApplicationsRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identity/authenticationEventsFlows/{authenticationEventsFlow%2Did}/graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
