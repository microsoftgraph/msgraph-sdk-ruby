require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../identity'
require_relative './authentication_context_class_references/authentication_context_class_references_request_builder'
require_relative './authentication_strength/authentication_strength_request_builder'
require_relative './conditional_access'
require_relative './named_locations/named_locations_request_builder'
require_relative './policies/policies_request_builder'
require_relative './templates/templates_request_builder'

module MicrosoftGraph
    module Identity
        module ConditionalAccess
            ## 
            # Builds and executes requests for operations under \identity\conditionalAccess
            class ConditionalAccessRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the authenticationContextClassReferences property of the microsoft.graph.conditionalAccessRoot entity.
                def authentication_context_class_references()
                    return MicrosoftGraph::Identity::ConditionalAccess::AuthenticationContextClassReferences::AuthenticationContextClassReferencesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the authenticationStrength property of the microsoft.graph.conditionalAccessRoot entity.
                def authentication_strength()
                    return MicrosoftGraph::Identity::ConditionalAccess::AuthenticationStrength::AuthenticationStrengthRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the namedLocations property of the microsoft.graph.conditionalAccessRoot entity.
                def named_locations()
                    return MicrosoftGraph::Identity::ConditionalAccess::NamedLocations::NamedLocationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the policies property of the microsoft.graph.conditionalAccessRoot entity.
                def policies()
                    return MicrosoftGraph::Identity::ConditionalAccess::Policies::PoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the templates property of the microsoft.graph.conditionalAccessRoot entity.
                def templates()
                    return MicrosoftGraph::Identity::ConditionalAccess::Templates::TemplatesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new ConditionalAccessRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/identity/conditionalAccess")
                end
            end
        end
    end
end
