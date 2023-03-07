require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../applications'
require_relative '../../item'
require_relative '../owners'
require_relative './graph_app_role_assignment/graph_app_role_assignment_request_builder'
require_relative './graph_endpoint/graph_endpoint_request_builder'
require_relative './graph_service_principal/graph_service_principal_request_builder'
require_relative './graph_user/graph_user_request_builder'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Applications
        module Item
            module Owners
                module Item
                    ## 
                    # Builds and executes requests for operations under \applications\{application-id}\owners\{directoryObject-id}
                    class DirectoryObjectItemRequestBuilder
                        
                        ## 
                        # Casts the previous resource to appRoleAssignment.
                        def graph_app_role_assignment()
                            return MicrosoftGraph::Applications::Item::Owners::Item::GraphAppRoleAssignment::GraphAppRoleAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to endpoint.
                        def graph_endpoint()
                            return MicrosoftGraph::Applications::Item::Owners::Item::GraphEndpoint::GraphEndpointRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to servicePrincipal.
                        def graph_service_principal()
                            return MicrosoftGraph::Applications::Item::Owners::Item::GraphServicePrincipal::GraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to user.
                        def graph_user()
                            return MicrosoftGraph::Applications::Item::Owners::Item::GraphUser::GraphUserRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # Provides operations to manage the collection of application entities.
                        def ref()
                            return MicrosoftGraph::Applications::Item::Owners::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
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
                            @url_template = "{+baseurl}/applications/{application%2Did}/owners/{directoryObject%2Did}"
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
