require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/o_data_errors_o_data_error'
require_relative '../models/policy_root'
require_relative './activity_based_timeout_policies/activity_based_timeout_policies_request_builder'
require_relative './admin_consent_request_policy/admin_consent_request_policy_request_builder'
require_relative './app_management_policies/app_management_policies_request_builder'
require_relative './authentication_flows_policy/authentication_flows_policy_request_builder'
require_relative './authentication_methods_policy/authentication_methods_policy_request_builder'
require_relative './authentication_strength_policies/authentication_strength_policies_request_builder'
require_relative './authorization_policy/authorization_policy_request_builder'
require_relative './claims_mapping_policies/claims_mapping_policies_request_builder'
require_relative './conditional_access_policies/conditional_access_policies_request_builder'
require_relative './cross_tenant_access_policy/cross_tenant_access_policy_request_builder'
require_relative './default_app_management_policy/default_app_management_policy_request_builder'
require_relative './feature_rollout_policies/feature_rollout_policies_request_builder'
require_relative './home_realm_discovery_policies/home_realm_discovery_policies_request_builder'
require_relative './identity_security_defaults_enforcement_policy/identity_security_defaults_enforcement_policy_request_builder'
require_relative './permission_grant_policies/permission_grant_policies_request_builder'
require_relative './policies'
require_relative './role_management_policies/role_management_policies_request_builder'
require_relative './role_management_policy_assignments/role_management_policy_assignments_request_builder'
require_relative './token_issuance_policies/token_issuance_policies_request_builder'
require_relative './token_lifetime_policies/token_lifetime_policies_request_builder'

module MicrosoftGraph
    module Policies
        ## 
        # Provides operations to manage the policyRoot singleton.
        class PoliciesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the activityBasedTimeoutPolicies property of the microsoft.graph.policyRoot entity.
            def activity_based_timeout_policies()
                return MicrosoftGraph::Policies::ActivityBasedTimeoutPolicies::ActivityBasedTimeoutPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the adminConsentRequestPolicy property of the microsoft.graph.policyRoot entity.
            def admin_consent_request_policy()
                return MicrosoftGraph::Policies::AdminConsentRequestPolicy::AdminConsentRequestPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the appManagementPolicies property of the microsoft.graph.policyRoot entity.
            def app_management_policies()
                return MicrosoftGraph::Policies::AppManagementPolicies::AppManagementPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the authenticationFlowsPolicy property of the microsoft.graph.policyRoot entity.
            def authentication_flows_policy()
                return MicrosoftGraph::Policies::AuthenticationFlowsPolicy::AuthenticationFlowsPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the authenticationMethodsPolicy property of the microsoft.graph.policyRoot entity.
            def authentication_methods_policy()
                return MicrosoftGraph::Policies::AuthenticationMethodsPolicy::AuthenticationMethodsPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the authenticationStrengthPolicies property of the microsoft.graph.policyRoot entity.
            def authentication_strength_policies()
                return MicrosoftGraph::Policies::AuthenticationStrengthPolicies::AuthenticationStrengthPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the authorizationPolicy property of the microsoft.graph.policyRoot entity.
            def authorization_policy()
                return MicrosoftGraph::Policies::AuthorizationPolicy::AuthorizationPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the claimsMappingPolicies property of the microsoft.graph.policyRoot entity.
            def claims_mapping_policies()
                return MicrosoftGraph::Policies::ClaimsMappingPolicies::ClaimsMappingPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the conditionalAccessPolicies property of the microsoft.graph.policyRoot entity.
            def conditional_access_policies()
                return MicrosoftGraph::Policies::ConditionalAccessPolicies::ConditionalAccessPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the crossTenantAccessPolicy property of the microsoft.graph.policyRoot entity.
            def cross_tenant_access_policy()
                return MicrosoftGraph::Policies::CrossTenantAccessPolicy::CrossTenantAccessPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the defaultAppManagementPolicy property of the microsoft.graph.policyRoot entity.
            def default_app_management_policy()
                return MicrosoftGraph::Policies::DefaultAppManagementPolicy::DefaultAppManagementPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the featureRolloutPolicies property of the microsoft.graph.policyRoot entity.
            def feature_rollout_policies()
                return MicrosoftGraph::Policies::FeatureRolloutPolicies::FeatureRolloutPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the homeRealmDiscoveryPolicies property of the microsoft.graph.policyRoot entity.
            def home_realm_discovery_policies()
                return MicrosoftGraph::Policies::HomeRealmDiscoveryPolicies::HomeRealmDiscoveryPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the identitySecurityDefaultsEnforcementPolicy property of the microsoft.graph.policyRoot entity.
            def identity_security_defaults_enforcement_policy()
                return MicrosoftGraph::Policies::IdentitySecurityDefaultsEnforcementPolicy::IdentitySecurityDefaultsEnforcementPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the permissionGrantPolicies property of the microsoft.graph.policyRoot entity.
            def permission_grant_policies()
                return MicrosoftGraph::Policies::PermissionGrantPolicies::PermissionGrantPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the roleManagementPolicies property of the microsoft.graph.policyRoot entity.
            def role_management_policies()
                return MicrosoftGraph::Policies::RoleManagementPolicies::RoleManagementPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the roleManagementPolicyAssignments property of the microsoft.graph.policyRoot entity.
            def role_management_policy_assignments()
                return MicrosoftGraph::Policies::RoleManagementPolicyAssignments::RoleManagementPolicyAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the tokenIssuancePolicies property of the microsoft.graph.policyRoot entity.
            def token_issuance_policies()
                return MicrosoftGraph::Policies::TokenIssuancePolicies::TokenIssuancePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the tokenLifetimePolicies property of the microsoft.graph.policyRoot entity.
            def token_lifetime_policies()
                return MicrosoftGraph::Policies::TokenLifetimePolicies::TokenLifetimePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new PoliciesRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/policies{?%24select,%24expand}")
            end
            ## 
            ## Get policies
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of policy_root
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::PolicyRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update policies
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of policy_root
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::PolicyRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get policies
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
            ## Update policies
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
            ## @return a policies_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return PoliciesRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Get policies
            class PoliciesRequestBuilderGetQueryParameters
                
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
