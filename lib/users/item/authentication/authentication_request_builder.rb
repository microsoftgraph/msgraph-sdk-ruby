require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/authentication'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../users'
require_relative '../item'
require_relative './authentication'
require_relative './email_methods/email_methods_request_builder'
require_relative './fido2_methods/fido2_methods_request_builder'
require_relative './methods/methods_request_builder'
require_relative './microsoft_authenticator_methods/microsoft_authenticator_methods_request_builder'
require_relative './operations/operations_request_builder'
require_relative './password_methods/password_methods_request_builder'
require_relative './phone_methods/phone_methods_request_builder'
require_relative './software_oath_methods/software_oath_methods_request_builder'
require_relative './temporary_access_pass_methods/temporary_access_pass_methods_request_builder'
require_relative './windows_hello_for_business_methods/windows_hello_for_business_methods_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module Authentication
                ## 
                # Provides operations to manage the authentication property of the microsoft.graph.user entity.
                class AuthenticationRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the emailMethods property of the microsoft.graph.authentication entity.
                    def email_methods()
                        return MicrosoftGraph::Users::Item::Authentication::EmailMethods::EmailMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the fido2Methods property of the microsoft.graph.authentication entity.
                    def fido2_methods()
                        return MicrosoftGraph::Users::Item::Authentication::Fido2Methods::Fido2MethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the methods property of the microsoft.graph.authentication entity.
                    def methods()
                        return MicrosoftGraph::Users::Item::Authentication::Methods::MethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the microsoftAuthenticatorMethods property of the microsoft.graph.authentication entity.
                    def microsoft_authenticator_methods()
                        return MicrosoftGraph::Users::Item::Authentication::MicrosoftAuthenticatorMethods::MicrosoftAuthenticatorMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the operations property of the microsoft.graph.authentication entity.
                    def operations()
                        return MicrosoftGraph::Users::Item::Authentication::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the passwordMethods property of the microsoft.graph.authentication entity.
                    def password_methods()
                        return MicrosoftGraph::Users::Item::Authentication::PasswordMethods::PasswordMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the phoneMethods property of the microsoft.graph.authentication entity.
                    def phone_methods()
                        return MicrosoftGraph::Users::Item::Authentication::PhoneMethods::PhoneMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the softwareOathMethods property of the microsoft.graph.authentication entity.
                    def software_oath_methods()
                        return MicrosoftGraph::Users::Item::Authentication::SoftwareOathMethods::SoftwareOathMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the temporaryAccessPassMethods property of the microsoft.graph.authentication entity.
                    def temporary_access_pass_methods()
                        return MicrosoftGraph::Users::Item::Authentication::TemporaryAccessPassMethods::TemporaryAccessPassMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the windowsHelloForBusinessMethods property of the microsoft.graph.authentication entity.
                    def windows_hello_for_business_methods()
                        return MicrosoftGraph::Users::Item::Authentication::WindowsHelloForBusinessMethods::WindowsHelloForBusinessMethodsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new AuthenticationRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/authentication{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property authentication for users
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## The authentication methods that are supported for the user.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of authentication
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Authentication.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property authentication in users
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of authentication
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Authentication.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property authentication for users
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## The authentication methods that are supported for the user.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Update the navigation property authentication in users
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_patch_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a authentication_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return AuthenticationRequestBuilder.new(raw_url, @request_adapter)
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
                        ## @param original_name The original query parameter name in the class.
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
                end
            end
        end
    end
end
