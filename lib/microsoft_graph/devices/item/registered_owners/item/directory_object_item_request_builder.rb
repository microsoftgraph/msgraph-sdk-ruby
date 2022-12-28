require 'microsoft_kiota_abstractions'
require_relative '../../../devices'
require_relative '../../item'
require_relative '../registered_owners'
require_relative './app_role_assignment/app_role_assignment_request_builder'
require_relative './endpoint/endpoint_request_builder'
require_relative './item'
require_relative './ref/ref_request_builder'
require_relative './service_principal/service_principal_request_builder'
require_relative './user/user_request_builder'

module MicrosoftGraph::Devices::Item::RegisteredOwners::Item
    ## 
    # Builds and executes requests for operations under \devices\{device-id}\registeredOwners\{directoryObject-id}
    class DirectoryObjectItemRequestBuilder
        
        ## 
        # Casts the previous resource to appRoleAssignment.
        def app_role_assignment()
            return MicrosoftGraph::Devices::Item::RegisteredOwners::Item::AppRoleAssignment::AppRoleAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to endpoint.
        def endpoint()
            return MicrosoftGraph::Devices::Item::RegisteredOwners::Item::Endpoint::EndpointRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of device entities.
        def ref()
            return MicrosoftGraph::Devices::Item::RegisteredOwners::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Casts the previous resource to servicePrincipal.
        def service_principal()
            return MicrosoftGraph::Devices::Item::RegisteredOwners::Item::ServicePrincipal::ServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Casts the previous resource to user.
        def user()
            return MicrosoftGraph::Devices::Item::RegisteredOwners::Item::User::UserRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/devices/{device%2Did}/registeredOwners/{directoryObject%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
