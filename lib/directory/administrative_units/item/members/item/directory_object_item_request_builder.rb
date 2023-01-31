require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../directory'
require_relative '../../../administrative_units'
require_relative '../../item'
require_relative '../members'
require_relative './item'
require_relative './microsoft_graph_application/application_request_builder'
require_relative './microsoft_graph_device/device_request_builder'
require_relative './microsoft_graph_group/group_request_builder'
require_relative './microsoft_graph_org_contact/org_contact_request_builder'
require_relative './microsoft_graph_service_principal/service_principal_request_builder'
require_relative './microsoft_graph_user/user_request_builder'
require_relative './ref/ref_request_builder'

module MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item
    ## 
    # Builds and executes requests for operations under \directory\administrativeUnits\{administrativeUnit-id}\members\{directoryObject-id}
    class DirectoryObjectItemRequestBuilder
        
        ## 
        # Casts the previous resource to application.
        def microsoft_graph_application()
            return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::MicrosoftGraphApplication::ApplicationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to device.
        def microsoft_graph_device()
            return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::MicrosoftGraphDevice::DeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to group.
        def microsoft_graph_group()
            return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::MicrosoftGraphGroup::GroupRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to orgContact.
        def microsoft_graph_org_contact()
            return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::MicrosoftGraphOrgContact::OrgContactRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to servicePrincipal.
        def microsoft_graph_service_principal()
            return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::MicrosoftGraphServicePrincipal::ServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to user.
        def microsoft_graph_user()
            return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::MicrosoftGraphUser::UserRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of directory entities.
        def ref()
            return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
        ## @param directoryObjectId key: id of directoryObject
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter, directory_object_id=)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/directory/administrativeUnits/{administrativeUnit%2Did}/members/{directoryObject%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
