require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/service_principal'
require_relative '../service_principals'
require_relative './add_key/add_key_request_builder'
require_relative './add_password/add_password_request_builder'
require_relative './add_token_signing_certificate/add_token_signing_certificate_request_builder'
require_relative './app_management_policies/app_management_policies_request_builder'
require_relative './app_management_policies/item/app_management_policy_item_request_builder'
require_relative './app_role_assigned_to/app_role_assigned_to_request_builder'
require_relative './app_role_assigned_to/item/app_role_assignment_item_request_builder'
require_relative './app_role_assignments/app_role_assignments_request_builder'
require_relative './app_role_assignments/item/app_role_assignment_item_request_builder'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './claims_mapping_policies/claims_mapping_policies_request_builder'
require_relative './claims_mapping_policies/item/claims_mapping_policy_item_request_builder'
require_relative './created_objects/created_objects_request_builder'
require_relative './created_objects/item/directory_object_item_request_builder'
require_relative './delegated_permission_classifications/delegated_permission_classifications_request_builder'
require_relative './delegated_permission_classifications/item/delegated_permission_classification_item_request_builder'
require_relative './endpoints/endpoints_request_builder'
require_relative './endpoints/item/endpoint_item_request_builder'
require_relative './federated_identity_credentials/federated_identity_credentials_request_builder'
require_relative './federated_identity_credentials/item/federated_identity_credential_item_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './home_realm_discovery_policies/home_realm_discovery_policies_request_builder'
require_relative './home_realm_discovery_policies/item/home_realm_discovery_policy_item_request_builder'
require_relative './item'
require_relative './member_of/item/directory_object_item_request_builder'
require_relative './member_of/member_of_request_builder'
require_relative './oauth2_permission_grants/item/o_auth2_permission_grant_item_request_builder'
require_relative './oauth2_permission_grants/oauth2_permission_grants_request_builder'
require_relative './owned_objects/item/directory_object_item_request_builder'
require_relative './owned_objects/owned_objects_request_builder'
require_relative './owners/item/directory_object_item_request_builder'
require_relative './owners/owners_request_builder'
require_relative './remove_key/remove_key_request_builder'
require_relative './remove_password/remove_password_request_builder'
require_relative './restore/restore_request_builder'
require_relative './token_issuance_policies/item/token_issuance_policy_item_request_builder'
require_relative './token_issuance_policies/token_issuance_policies_request_builder'
require_relative './token_lifetime_policies/item/token_lifetime_policy_item_request_builder'
require_relative './token_lifetime_policies/token_lifetime_policies_request_builder'
require_relative './transitive_member_of/item/directory_object_item_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'

module MicrosoftGraph
    module ServicePrincipals
        module Item
            ## 
            # Provides operations to manage the collection of servicePrincipal entities.
            class ServicePrincipalItemRequestBuilder
                
                ## 
                # Provides operations to call the addKey method.
                def add_key()
                    return MicrosoftGraph::ServicePrincipals::Item::AddKey::AddKeyRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the addPassword method.
                def add_password()
                    return MicrosoftGraph::ServicePrincipals::Item::AddPassword::AddPasswordRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the addTokenSigningCertificate method.
                def add_token_signing_certificate()
                    return MicrosoftGraph::ServicePrincipals::Item::AddTokenSigningCertificate::AddTokenSigningCertificateRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the appManagementPolicies property of the microsoft.graph.servicePrincipal entity.
                def app_management_policies()
                    return MicrosoftGraph::ServicePrincipals::Item::AppManagementPolicies::AppManagementPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the appRoleAssignedTo property of the microsoft.graph.servicePrincipal entity.
                def app_role_assigned_to()
                    return MicrosoftGraph::ServicePrincipals::Item::AppRoleAssignedTo::AppRoleAssignedToRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the appRoleAssignments property of the microsoft.graph.servicePrincipal entity.
                def app_role_assignments()
                    return MicrosoftGraph::ServicePrincipals::Item::AppRoleAssignments::AppRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberGroups method.
                def check_member_groups()
                    return MicrosoftGraph::ServicePrincipals::Item::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberObjects method.
                def check_member_objects()
                    return MicrosoftGraph::ServicePrincipals::Item::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the claimsMappingPolicies property of the microsoft.graph.servicePrincipal entity.
                def claims_mapping_policies()
                    return MicrosoftGraph::ServicePrincipals::Item::ClaimsMappingPolicies::ClaimsMappingPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the createdObjects property of the microsoft.graph.servicePrincipal entity.
                def created_objects()
                    return MicrosoftGraph::ServicePrincipals::Item::CreatedObjects::CreatedObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the delegatedPermissionClassifications property of the microsoft.graph.servicePrincipal entity.
                def delegated_permission_classifications()
                    return MicrosoftGraph::ServicePrincipals::Item::DelegatedPermissionClassifications::DelegatedPermissionClassificationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the endpoints property of the microsoft.graph.servicePrincipal entity.
                def endpoints()
                    return MicrosoftGraph::ServicePrincipals::Item::Endpoints::EndpointsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the federatedIdentityCredentials property of the microsoft.graph.servicePrincipal entity.
                def federated_identity_credentials()
                    return MicrosoftGraph::ServicePrincipals::Item::FederatedIdentityCredentials::FederatedIdentityCredentialsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberGroups method.
                def get_member_groups()
                    return MicrosoftGraph::ServicePrincipals::Item::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberObjects method.
                def get_member_objects()
                    return MicrosoftGraph::ServicePrincipals::Item::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the homeRealmDiscoveryPolicies property of the microsoft.graph.servicePrincipal entity.
                def home_realm_discovery_policies()
                    return MicrosoftGraph::ServicePrincipals::Item::HomeRealmDiscoveryPolicies::HomeRealmDiscoveryPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the memberOf property of the microsoft.graph.servicePrincipal entity.
                def member_of()
                    return MicrosoftGraph::ServicePrincipals::Item::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the oauth2PermissionGrants property of the microsoft.graph.servicePrincipal entity.
                def oauth2_permission_grants()
                    return MicrosoftGraph::ServicePrincipals::Item::Oauth2PermissionGrants::Oauth2PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the ownedObjects property of the microsoft.graph.servicePrincipal entity.
                def owned_objects()
                    return MicrosoftGraph::ServicePrincipals::Item::OwnedObjects::OwnedObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the owners property of the microsoft.graph.servicePrincipal entity.
                def owners()
                    return MicrosoftGraph::ServicePrincipals::Item::Owners::OwnersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Path parameters for the request
                @path_parameters
                ## 
                # Provides operations to call the removeKey method.
                def remove_key()
                    return MicrosoftGraph::ServicePrincipals::Item::RemoveKey::RemoveKeyRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the removePassword method.
                def remove_password()
                    return MicrosoftGraph::ServicePrincipals::Item::RemovePassword::RemovePasswordRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The request adapter to use to execute the requests.
                @request_adapter
                ## 
                # Provides operations to call the restore method.
                def restore()
                    return MicrosoftGraph::ServicePrincipals::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the tokenIssuancePolicies property of the microsoft.graph.servicePrincipal entity.
                def token_issuance_policies()
                    return MicrosoftGraph::ServicePrincipals::Item::TokenIssuancePolicies::TokenIssuancePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the tokenLifetimePolicies property of the microsoft.graph.servicePrincipal entity.
                def token_lifetime_policies()
                    return MicrosoftGraph::ServicePrincipals::Item::TokenLifetimePolicies::TokenLifetimePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.servicePrincipal entity.
                def transitive_member_of()
                    return MicrosoftGraph::ServicePrincipals::Item::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                ## Provides operations to manage the appManagementPolicies property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a app_management_policy_item_request_builder
                ## 
                def app_management_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["appManagementPolicy%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::AppManagementPolicies::Item::AppManagementPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the appRoleAssignedTo property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a app_role_assignment_item_request_builder
                ## 
                def app_role_assigned_to_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["appRoleAssignment%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::AppRoleAssignedTo::Item::AppRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the appRoleAssignments property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a app_role_assignment_item_request_builder
                ## 
                def app_role_assignments_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["appRoleAssignment%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::AppRoleAssignments::Item::AppRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Gets an item from the MicrosoftGraph.servicePrincipals.item.claimsMappingPolicies.item collection
                ## @param id Unique identifier of the item
                ## @return a claims_mapping_policy_item_request_builder
                ## 
                def claims_mapping_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["claimsMappingPolicy%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::ClaimsMappingPolicies::Item::ClaimsMappingPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new ServicePrincipalItemRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Provides operations to manage the createdObjects property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def created_objects_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::CreatedObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the delegatedPermissionClassifications property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a delegated_permission_classification_item_request_builder
                ## 
                def delegated_permission_classifications_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["delegatedPermissionClassification%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::DelegatedPermissionClassifications::Item::DelegatedPermissionClassificationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete a servicePrincipal object.
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
                ## Provides operations to manage the endpoints property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a endpoint_item_request_builder
                ## 
                def endpoints_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["endpoint%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::Endpoints::Item::EndpointItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the federatedIdentityCredentials property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a federated_identity_credential_item_request_builder
                ## 
                def federated_identity_credentials_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["federatedIdentityCredential%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::FederatedIdentityCredentials::Item::FederatedIdentityCredentialItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Retrieve the properties and relationships of a servicePrincipal object.
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_principal
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ServicePrincipal.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Gets an item from the MicrosoftGraph.servicePrincipals.item.homeRealmDiscoveryPolicies.item collection
                ## @param id Unique identifier of the item
                ## @return a home_realm_discovery_policy_item_request_builder
                ## 
                def home_realm_discovery_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["homeRealmDiscoveryPolicy%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::HomeRealmDiscoveryPolicies::Item::HomeRealmDiscoveryPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the memberOf property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def member_of_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::MemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the oauth2PermissionGrants property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a o_auth2_permission_grant_item_request_builder
                ## 
                def oauth2_permission_grants_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["oAuth2PermissionGrant%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::Oauth2PermissionGrants::Item::OAuth2PermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the ownedObjects property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def owned_objects_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::OwnedObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Gets an item from the MicrosoftGraph.servicePrincipals.item.owners.item collection
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def owners_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::Owners::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update entity in servicePrincipals
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_principal
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ServicePrincipal.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete a servicePrincipal object.
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
                ## Retrieve the properties and relationships of a servicePrincipal object.
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
                ## Provides operations to manage the tokenIssuancePolicies property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a token_issuance_policy_item_request_builder
                ## 
                def token_issuance_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["tokenIssuancePolicy%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::TokenIssuancePolicies::Item::TokenIssuancePolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the tokenLifetimePolicies property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a token_lifetime_policy_item_request_builder
                ## 
                def token_lifetime_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["tokenLifetimePolicy%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::TokenLifetimePolicies::Item::TokenLifetimePolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update entity in servicePrincipals
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
                ## Provides operations to manage the transitiveMemberOf property of the microsoft.graph.servicePrincipal entity.
                ## @param id Unique identifier of the item
                ## @return a directory_object_item_request_builder
                ## 
                def transitive_member_of_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = id
                    return MicrosoftGraph::ServicePrincipals::Item::TransitiveMemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class ServicePrincipalItemRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Retrieve the properties and relationships of a servicePrincipal object.
                class ServicePrincipalItemRequestBuilderGetQueryParameters
                    
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
                class ServicePrincipalItemRequestBuilderGetRequestConfiguration
                    
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
                class ServicePrincipalItemRequestBuilderPatchRequestConfiguration
                    
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
