require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/application'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../applications'
require_relative './add_key/add_key_request_builder'
require_relative './add_password/add_password_request_builder'
require_relative './app_management_policies/app_management_policies_request_builder'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './created_on_behalf_of/created_on_behalf_of_request_builder'
require_relative './extension_properties/extension_properties_request_builder'
require_relative './federated_identity_credentials/federated_identity_credentials_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './home_realm_discovery_policies/home_realm_discovery_policies_request_builder'
require_relative './item'
require_relative './logo/logo_request_builder'
require_relative './owners/owners_request_builder'
require_relative './remove_key/remove_key_request_builder'
require_relative './remove_password/remove_password_request_builder'
require_relative './restore/restore_request_builder'
require_relative './set_verified_publisher/set_verified_publisher_request_builder'
require_relative './synchronization/synchronization_request_builder'
require_relative './token_issuance_policies/token_issuance_policies_request_builder'
require_relative './token_lifetime_policies/token_lifetime_policies_request_builder'
require_relative './unset_verified_publisher/unset_verified_publisher_request_builder'

module MicrosoftGraph
    module Applications
        module Item
            ## 
            # Provides operations to manage the collection of application entities.
            class ApplicationItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to call the addKey method.
                def add_key()
                    return MicrosoftGraph::Applications::Item::AddKey::AddKeyRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the addPassword method.
                def add_password()
                    return MicrosoftGraph::Applications::Item::AddPassword::AddPasswordRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the appManagementPolicies property of the microsoft.graph.application entity.
                def app_management_policies()
                    return MicrosoftGraph::Applications::Item::AppManagementPolicies::AppManagementPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberGroups method.
                def check_member_groups()
                    return MicrosoftGraph::Applications::Item::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberObjects method.
                def check_member_objects()
                    return MicrosoftGraph::Applications::Item::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the createdOnBehalfOf property of the microsoft.graph.application entity.
                def created_on_behalf_of()
                    return MicrosoftGraph::Applications::Item::CreatedOnBehalfOf::CreatedOnBehalfOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the extensionProperties property of the microsoft.graph.application entity.
                def extension_properties()
                    return MicrosoftGraph::Applications::Item::ExtensionProperties::ExtensionPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the federatedIdentityCredentials property of the microsoft.graph.application entity.
                def federated_identity_credentials()
                    return MicrosoftGraph::Applications::Item::FederatedIdentityCredentials::FederatedIdentityCredentialsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberGroups method.
                def get_member_groups()
                    return MicrosoftGraph::Applications::Item::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberObjects method.
                def get_member_objects()
                    return MicrosoftGraph::Applications::Item::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the homeRealmDiscoveryPolicies property of the microsoft.graph.application entity.
                def home_realm_discovery_policies()
                    return MicrosoftGraph::Applications::Item::HomeRealmDiscoveryPolicies::HomeRealmDiscoveryPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the media for the application entity.
                def logo()
                    return MicrosoftGraph::Applications::Item::Logo::LogoRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the owners property of the microsoft.graph.application entity.
                def owners()
                    return MicrosoftGraph::Applications::Item::Owners::OwnersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the removeKey method.
                def remove_key()
                    return MicrosoftGraph::Applications::Item::RemoveKey::RemoveKeyRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the removePassword method.
                def remove_password()
                    return MicrosoftGraph::Applications::Item::RemovePassword::RemovePasswordRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the restore method.
                def restore()
                    return MicrosoftGraph::Applications::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the setVerifiedPublisher method.
                def set_verified_publisher()
                    return MicrosoftGraph::Applications::Item::SetVerifiedPublisher::SetVerifiedPublisherRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the synchronization property of the microsoft.graph.application entity.
                def synchronization()
                    return MicrosoftGraph::Applications::Item::Synchronization::SynchronizationRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the tokenIssuancePolicies property of the microsoft.graph.application entity.
                def token_issuance_policies()
                    return MicrosoftGraph::Applications::Item::TokenIssuancePolicies::TokenIssuancePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the tokenLifetimePolicies property of the microsoft.graph.application entity.
                def token_lifetime_policies()
                    return MicrosoftGraph::Applications::Item::TokenLifetimePolicies::TokenLifetimePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the unsetVerifiedPublisher method.
                def unset_verified_publisher()
                    return MicrosoftGraph::Applications::Item::UnsetVerifiedPublisher::UnsetVerifiedPublisherRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new ApplicationItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/applications/{application%2Did}{?%24expand,%24select}")
                end
                ## 
                ## Delete an application object. When deleted, apps are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted.
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
                ## Get the properties and relationships of an application object.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of application
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Application.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the properties of an application object.
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of application
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Application.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete an application object. When deleted, apps are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = '{+baseurl}/applications/{application%2Did}'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Get the properties and relationships of an application object.
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
                ## Update the properties of an application object.
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
                    request_info.url_template = '{+baseurl}/applications/{application%2Did}'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a application_item_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ApplicationItemRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Get the properties and relationships of an application object.
                class ApplicationItemRequestBuilderGetQueryParameters
                    
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
