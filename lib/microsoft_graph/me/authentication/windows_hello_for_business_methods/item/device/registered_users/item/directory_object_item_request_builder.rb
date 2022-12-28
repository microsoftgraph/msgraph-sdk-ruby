require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../models/directory_object'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../me'
require_relative '../../../../../authentication'
require_relative '../../../../windows_hello_for_business_methods'
require_relative '../../../item'
require_relative '../../device'
require_relative '../registered_users'
require_relative './app_role_assignment/app_role_assignment_request_builder'
require_relative './endpoint/endpoint_request_builder'
require_relative './item'
require_relative './service_principal/service_principal_request_builder'
require_relative './user/user_request_builder'

module MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredUsers::Item
    ## 
    # Provides operations to manage the registeredUsers property of the microsoft.graph.device entity.
    class DirectoryObjectItemRequestBuilder
        
        ## 
        # Casts the previous resource to appRoleAssignment.
        def app_role_assignment()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredUsers::Item::AppRoleAssignment::AppRoleAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to endpoint.
        def endpoint()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredUsers::Item::Endpoint::EndpointRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Casts the previous resource to servicePrincipal.
        def service_principal()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredUsers::Item::ServicePrincipal::ServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Casts the previous resource to user.
        def user()
            return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::Device::RegisteredUsers::Item::User::UserRequestBuilder.new(@path_parameters, @request_adapter)
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
            @url_template = "{+baseurl}/me/authentication/windowsHelloForBusinessMethods/{windowsHelloForBusinessAuthenticationMethod%2Did}/device/registeredUsers/{directoryObject%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of directory_object
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }, error_mapping)
        end

        ## 
        # Collection of registered users of the device. For cloud joined devices and registered personal devices, registered users are set to the same value as registered owners at the time of registration. Read-only. Nullable. Supports $expand.
        class DirectoryObjectItemRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
            ## @return a string
            ## 
            def get_query_parameter(original_name)
                raise StandardError, 'original_name cannot be null' if original_name.nil?
                case original_name
                    when "expand"
                        return "%24expand"
                    when "select"
                        return "%24select"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DirectoryObjectItemRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end
    end
end