require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../directory'
require_relative '../../../administrative_units'
require_relative '../../item'
require_relative '../members'
require_relative './graph_application/graph_application_request_builder'
require_relative './graph_device/graph_device_request_builder'
require_relative './graph_group/graph_group_request_builder'
require_relative './graph_org_contact/graph_org_contact_request_builder'
require_relative './graph_service_principal/graph_service_principal_request_builder'
require_relative './graph_user/graph_user_request_builder'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraph
    module Directory
        module AdministrativeUnits
            module Item
                module Members
                    module Item
                        ## 
                        # Builds and executes requests for operations under \directory\administrativeUnits\{administrativeUnit-id}\members\{directoryObject-id}
                        class DirectoryObjectItemRequestBuilder
                            
                            ## 
                            # Casts the previous resource to application.
                            def graph_application()
                                return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::GraphApplication::GraphApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to device.
                            def graph_device()
                                return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::GraphDevice::GraphDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to group.
                            def graph_group()
                                return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::GraphGroup::GraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to orgContact.
                            def graph_org_contact()
                                return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::GraphOrgContact::GraphOrgContactRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to servicePrincipal.
                            def graph_service_principal()
                                return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::GraphServicePrincipal::GraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to user.
                            def graph_user()
                                return MicrosoftGraph::Directory::AdministrativeUnits::Item::Members::Item::GraphUser::GraphUserRequestBuilder.new(@path_parameters, @request_adapter)
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
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/directory/administrativeUnits/{administrativeUnit%2Did}/members/{directoryObject%2Did}"
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
