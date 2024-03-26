require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../models/phone_authentication_method'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../authentication'
require_relative '../phone_methods'
require_relative './disable_sms_sign_in/disable_sms_sign_in_request_builder'
require_relative './enable_sms_sign_in/enable_sms_sign_in_request_builder'
require_relative './item'

module MicrosoftGraph
    module Users
        module Item
            module Authentication
                module PhoneMethods
                    module Item
                        ## 
                        # Provides operations to manage the phoneMethods property of the microsoft.graph.authentication entity.
                        class PhoneAuthenticationMethodItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to call the disableSmsSignIn method.
                            def disable_sms_sign_in()
                                return MicrosoftGraph::Users::Item::Authentication::PhoneMethods::Item::DisableSmsSignIn::DisableSmsSignInRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the enableSmsSignIn method.
                            def enable_sms_sign_in()
                                return MicrosoftGraph::Users::Item::Authentication::PhoneMethods::Item::EnableSmsSignIn::EnableSmsSignInRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new PhoneAuthenticationMethodItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/authentication/phoneMethods/{phoneAuthenticationMethod%2Did}{?%24expand,%24select}")
                            end
                            ## 
                            ## Delete a user's phone authentication method. This removes the phone number from the user and they'll no longer be able to use the number for authentication, whether via SMS or voice calls. A user can't have an alternateMobile number without a mobile number. If you want to remove a mobile number from a user that also has an alternateMobile number, first update the mobile number to the new number, then delete the alternateMobile number. If the phone number is the user's default Azure multi-factor authentication (MFA) authentication method, it can't be deleted. Have the user change their default authentication method, and then delete the number.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of void
                            ## 
                            def delete(request_configuration=nil)
                                request_info = self.to_delete_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, nil, error_mapping)
                            end
                            ## 
                            ## Retrieve a single phoneAuthenticationMethod object for a user. This method is available only for standard Microsoft Entra ID and B2B users, but not B2C users.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of phone_authentication_method
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::PhoneAuthenticationMethod.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update a user's phone number associated with a phone authentication method object. You can't change a phone's type. To change a phone's type, add a new number of the desired type and then delete the object with the original type. If a user is enabled by policy to use SMS to sign in and the mobile number is changed, the system will attempt to register the number for use in that system.
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of phone_authentication_method
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::PhoneAuthenticationMethod.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete a user's phone authentication method. This removes the phone number from the user and they'll no longer be able to use the number for authentication, whether via SMS or voice calls. A user can't have an alternateMobile number without a mobile number. If you want to remove a mobile number from a user that also has an alternateMobile number, first update the mobile number to the new number, then delete the alternateMobile number. If the phone number is the user's default Azure multi-factor authentication (MFA) authentication method, it can't be deleted. Have the user change their default authentication method, and then delete the number.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_delete_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.url_template = '{+baseurl}/users/{user%2Did}/authentication/phoneMethods/{phoneAuthenticationMethod%2Did}'
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :DELETE
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Retrieve a single phoneAuthenticationMethod object for a user. This method is available only for standard Microsoft Entra ID and B2B users, but not B2C users.
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
                            ## Update a user's phone number associated with a phone authentication method object. You can't change a phone's type. To change a phone's type, add a new number of the desired type and then delete the object with the original type. If a user is enabled by policy to use SMS to sign in and the mobile number is changed, the system will attempt to register the number for use in that system.
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
                                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                request_info.url_template = '{+baseurl}/users/{user%2Did}/authentication/phoneMethods/{phoneAuthenticationMethod%2Did}'
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :PATCH
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a phone_authentication_method_item_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return PhoneAuthenticationMethodItemRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # Retrieve a single phoneAuthenticationMethod object for a user. This method is available only for standard Microsoft Entra ID and B2B users, but not B2C users.
                            class PhoneAuthenticationMethodItemRequestBuilderGetQueryParameters
                                
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
    end
end
