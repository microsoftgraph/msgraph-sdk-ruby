require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../devices'
require_relative '../../item'
require_relative '../registered_users'
require_relative './graph_app_role_assignment/graph_app_role_assignment_request_builder'
require_relative './graph_endpoint/graph_endpoint_request_builder'
require_relative './graph_service_principal/graph_service_principal_request_builder'
require_relative './graph_user/graph_user_request_builder'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Devices
        module Item
            module RegisteredUsers
                module Item
                    ## 
                    # Builds and executes requests for operations under \devices\{device-id}\registeredUsers\{directoryObject-id}
                    class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Casts the previous resource to appRoleAssignment.
                        def graph_app_role_assignment()
                            return MicrosoftGraph::Devices::Item::RegisteredUsers::Item::GraphAppRoleAssignment::GraphAppRoleAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to endpoint.
                        def graph_endpoint()
                            return MicrosoftGraph::Devices::Item::RegisteredUsers::Item::GraphEndpoint::GraphEndpointRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to servicePrincipal.
                        def graph_service_principal()
                            return MicrosoftGraph::Devices::Item::RegisteredUsers::Item::GraphServicePrincipal::GraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to user.
                        def graph_user()
                            return MicrosoftGraph::Devices::Item::RegisteredUsers::Item::GraphUser::GraphUserRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the collection of device entities.
                        def ref()
                            return MicrosoftGraph::Devices::Item::RegisteredUsers::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/devices/{device%2Did}/registeredUsers/{directoryObject%2Did}")
                        end
                    end
                end
            end
        end
    end
end
