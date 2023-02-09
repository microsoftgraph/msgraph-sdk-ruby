require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/authentication'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../me'
require_relative './authentication'
require_relative './email_methods/email_methods_request_builder'
require_relative './email_methods/item/email_authentication_method_item_request_builder'
require_relative './fido2_methods/fido2_methods_request_builder'
require_relative './fido2_methods/item/fido2_authentication_method_item_request_builder'
require_relative './methods/item/authentication_method_item_request_builder'
require_relative './methods/methods_request_builder'
require_relative './microsoft_authenticator_methods/item/microsoft_authenticator_authentication_method_item_request_builder'
require_relative './microsoft_authenticator_methods/microsoft_authenticator_methods_request_builder'
require_relative './operations/item/long_running_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './password_methods/item/password_authentication_method_item_request_builder'
require_relative './password_methods/password_methods_request_builder'
require_relative './phone_methods/item/phone_authentication_method_item_request_builder'
require_relative './phone_methods/phone_methods_request_builder'
require_relative './software_oath_methods/item/software_oath_authentication_method_item_request_builder'
require_relative './software_oath_methods/software_oath_methods_request_builder'
require_relative './temporary_access_pass_methods/item/temporary_access_pass_authentication_method_item_request_builder'
require_relative './temporary_access_pass_methods/temporary_access_pass_methods_request_builder'
require_relative './windows_hello_for_business_methods/item/windows_hello_for_business_authentication_method_item_request_builder'
require_relative './windows_hello_for_business_methods/windows_hello_for_business_methods_request_builder'

module MicrosoftGraph
    module Me
        module Authentication
            ## 
            # Provides operations to manage the authentication property of the microsoft.graph.user entity.
            class AuthenticationRequestBuilder
                
                ## 
                # Provides operations to manage the emailMethods property of the microsoft.graph.authentication entity.
                def email_methods()
                    return MicrosoftGraph::Me::Authentication::EmailMethods::EmailMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the fido2Methods property of the microsoft.graph.authentication entity.
                def fido2_methods()
                    return MicrosoftGraph::Me::Authentication::Fido2Methods::Fido2MethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the methods property of the microsoft.graph.authentication entity.
                def methods()
                    return MicrosoftGraph::Me::Authentication::Methods::MethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the microsoftAuthenticatorMethods property of the microsoft.graph.authentication entity.
                def microsoft_authenticator_methods()
                    return MicrosoftGraph::Me::Authentication::MicrosoftAuthenticatorMethods::MicrosoftAuthenticatorMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the operations property of the microsoft.graph.authentication entity.
                def operations()
                    return MicrosoftGraph::Me::Authentication::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the passwordMethods property of the microsoft.graph.authentication entity.
                def password_methods()
                    return MicrosoftGraph::Me::Authentication::PasswordMethods::PasswordMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Path parameters for the request
                @path_parameters
                ## 
                # Provides operations to manage the phoneMethods property of the microsoft.graph.authentication entity.
                def phone_methods()
                    return MicrosoftGraph::Me::Authentication::PhoneMethods::PhoneMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The request adapter to use to execute the requests.
                @request_adapter
                ## 
                # Provides operations to manage the softwareOathMethods property of the microsoft.graph.authentication entity.
                def software_oath_methods()
                    return MicrosoftGraph::Me::Authentication::SoftwareOathMethods::SoftwareOathMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the temporaryAccessPassMethods property of the microsoft.graph.authentication entity.
                def temporary_access_pass_methods()
                    return MicrosoftGraph::Me::Authentication::TemporaryAccessPassMethods::TemporaryAccessPassMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                # Provides operations to manage the windowsHelloForBusinessMethods property of the microsoft.graph.authentication entity.
                def windows_hello_for_business_methods()
                    return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::WindowsHelloForBusinessMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new AuthenticationRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/me/authentication{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Delete navigation property authentication for me
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Provides operations to manage the emailMethods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a email_authentication_method_item_request_builder
                ## 
                def email_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["emailAuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::EmailMethods::Item::EmailAuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the fido2Methods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a fido2_authentication_method_item_request_builder
                ## 
                def fido2_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["fido2AuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::Fido2Methods::Item::Fido2AuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## The authentication methods that are supported for the user.
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of authentication
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Authentication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the methods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a authentication_method_item_request_builder
                ## 
                def methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["authenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::Methods::Item::AuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the microsoftAuthenticatorMethods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a microsoft_authenticator_authentication_method_item_request_builder
                ## 
                def microsoft_authenticator_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["microsoftAuthenticatorAuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::MicrosoftAuthenticatorMethods::Item::MicrosoftAuthenticatorAuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the operations property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a long_running_operation_item_request_builder
                ## 
                def operations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["longRunningOperation%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::Operations::Item::LongRunningOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the passwordMethods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a password_authentication_method_item_request_builder
                ## 
                def password_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["passwordAuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::PasswordMethods::Item::PasswordAuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update the navigation property authentication in me
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of authentication
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Authentication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the phoneMethods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a phone_authentication_method_item_request_builder
                ## 
                def phone_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["phoneAuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::PhoneMethods::Item::PhoneAuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the softwareOathMethods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a software_oath_authentication_method_item_request_builder
                ## 
                def software_oath_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["softwareOathAuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::SoftwareOathMethods::Item::SoftwareOathAuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the temporaryAccessPassMethods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a temporary_access_pass_authentication_method_item_request_builder
                ## 
                def temporary_access_pass_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["temporaryAccessPassAuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::TemporaryAccessPassMethods::Item::TemporaryAccessPassAuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete navigation property authentication for me
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    return request_info
                end
                ## 
                ## The authentication methods that are supported for the user.
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
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
                ## Update the navigation property authentication in me
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_patch_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.add('Accept', 'application/json')
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                    return request_info
                end
                ## 
                ## Provides operations to manage the windowsHelloForBusinessMethods property of the microsoft.graph.authentication entity.
                ## @param id Unique identifier of the item
                ## @return a windows_hello_for_business_authentication_method_item_request_builder
                ## 
                def windows_hello_for_business_methods_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["windowsHelloForBusinessAuthenticationMethod%2Did"] = id
                    return MicrosoftGraph::Me::Authentication::WindowsHelloForBusinessMethods::Item::WindowsHelloForBusinessAuthenticationMethodItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class AuthenticationRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # The authentication methods that are supported for the user.
                class AuthenticationRequestBuilderGetQueryParameters
                    
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
                class AuthenticationRequestBuilderGetRequestConfiguration
                    
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

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class AuthenticationRequestBuilderPatchRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end
            end
        end
    end
end
