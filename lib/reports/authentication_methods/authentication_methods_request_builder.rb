require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/authentication_methods_root'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../reports'
require_relative './authentication_methods'
require_relative './user_registration_details/user_registration_details_request_builder'
require_relative './users_registered_by_feature/users_registered_by_feature_request_builder'
require_relative './users_registered_by_feature_with_included_user_types_with_included_user_roles/users_registered_by_feature_with_included_user_types_with_included_user_roles_request_builder'
require_relative './users_registered_by_method/users_registered_by_method_request_builder'
require_relative './users_registered_by_method_with_included_user_types_with_included_user_roles/users_registered_by_method_with_included_user_types_with_included_user_roles_request_builder'

module MicrosoftGraph
    module Reports
        module AuthenticationMethods
            ## 
            # Provides operations to manage the authenticationMethods property of the microsoft.graph.reportRoot entity.
            class AuthenticationMethodsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the userRegistrationDetails property of the microsoft.graph.authenticationMethodsRoot entity.
                def user_registration_details()
                    return MicrosoftGraph::Reports::AuthenticationMethods::UserRegistrationDetails::UserRegistrationDetailsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the usersRegisteredByFeature method.
                def users_registered_by_feature()
                    return MicrosoftGraph::Reports::AuthenticationMethods::UsersRegisteredByFeature::UsersRegisteredByFeatureRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the usersRegisteredByMethod method.
                def users_registered_by_method()
                    return MicrosoftGraph::Reports::AuthenticationMethods::UsersRegisteredByMethod::UsersRegisteredByMethodRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new AuthenticationMethodsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/reports/authenticationMethods{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property authenticationMethods for reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Get authenticationMethods from reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of authentication_methods_root
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodsRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property authenticationMethods in reports
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of authentication_methods_root
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodsRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property authenticationMethods for reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Get authenticationMethods from reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Update the navigation property authenticationMethods in reports
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    return request_info
                end
                ## 
                ## Provides operations to call the usersRegisteredByFeature method.
                ## @param included_user_roles Usage: includedUserRoles='{includedUserRoles}'
                ## @param included_user_types Usage: includedUserTypes='{includedUserTypes}'
                ## @return a users_registered_by_feature_with_included_user_types_with_included_user_roles_request_builder
                ## 
                def users_registered_by_feature_with_included_user_types_with_included_user_roles(included_user_roles, included_user_types)
                    raise StandardError, 'included_user_roles cannot be null' if included_user_roles.nil?
                    raise StandardError, 'included_user_types cannot be null' if included_user_types.nil?
                    return UsersRegisteredByFeatureWithIncludedUserTypesWithIncludedUserRolesRequestBuilder.new(@path_parameters, @request_adapter, includedUserRoles, includedUserTypes)
                end
                ## 
                ## Provides operations to call the usersRegisteredByMethod method.
                ## @param included_user_roles Usage: includedUserRoles='{includedUserRoles}'
                ## @param included_user_types Usage: includedUserTypes='{includedUserTypes}'
                ## @return a users_registered_by_method_with_included_user_types_with_included_user_roles_request_builder
                ## 
                def users_registered_by_method_with_included_user_types_with_included_user_roles(included_user_roles, included_user_types)
                    raise StandardError, 'included_user_roles cannot be null' if included_user_roles.nil?
                    raise StandardError, 'included_user_types cannot be null' if included_user_types.nil?
                    return UsersRegisteredByMethodWithIncludedUserTypesWithIncludedUserRolesRequestBuilder.new(@path_parameters, @request_adapter, includedUserRoles, includedUserTypes)
                end

                ## 
                # Get authenticationMethods from reports
                class AuthenticationMethodsRequestBuilderGetQueryParameters
                    
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
