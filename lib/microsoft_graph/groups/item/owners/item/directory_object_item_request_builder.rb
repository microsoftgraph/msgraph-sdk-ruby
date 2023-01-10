require 'microsoft_kiota_abstractions'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../owners'
require_relative './application/application_request_builder'
require_relative './device/device_request_builder'
require_relative './group/group_request_builder'
require_relative './item'
require_relative './org_contact/org_contact_request_builder'
require_relative './ref/ref_request_builder'
require_relative './service_principal/service_principal_request_builder'
require_relative './user/user_request_builder'

module MicrosoftGraph::Groups::Item::Owners::Item
    ## 
    # Builds and executes requests for operations under \groups\{group-id}\owners\{directoryObject-id}
    class DirectoryObjectItemRequestBuilder
        
        ## 
        # Casts the previous resource to application.
        def application()
            return MicrosoftGraph::Groups::Item::Owners::Item::Application::ApplicationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to device.
        def device()
            return MicrosoftGraph::Groups::Item::Owners::Item::Device::DeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to group.
        def group()
            return MicrosoftGraph::Groups::Item::Owners::Item::Group::GroupRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to orgContact.
        def org_contact()
            return MicrosoftGraph::Groups::Item::Owners::Item::OrgContact::OrgContactRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of group entities.
        def ref()
            return MicrosoftGraph::Groups::Item::Owners::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Casts the previous resource to servicePrincipal.
        def service_principal()
            return MicrosoftGraph::Groups::Item::Owners::Item::ServicePrincipal::ServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Casts the previous resource to user.
        def user()
            return MicrosoftGraph::Groups::Item::Owners::Item::User::UserRequestBuilder.new(@path_parameters, @request_adapter)
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
            @url_template = "{+baseurl}/groups/{group%2Did}/owners/{directoryObject%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
