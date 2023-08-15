require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/access_package'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../identity_governance'
require_relative '../../entitlement_management'
require_relative '../access_packages'
require_relative './access_packages_incompatible_with/access_packages_incompatible_with_request_builder'
require_relative './assignment_policies/assignment_policies_request_builder'
require_relative './catalog/catalog_request_builder'
require_relative './get_applicable_policy_requirements/get_applicable_policy_requirements_request_builder'
require_relative './incompatible_access_packages/incompatible_access_packages_request_builder'
require_relative './incompatible_groups/incompatible_groups_request_builder'
require_relative './item'
require_relative './resource_role_scopes/resource_role_scopes_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackages
                module Item
                    ## 
                    # Provides operations to manage the accessPackages property of the microsoft.graph.entitlementManagement entity.
                    class AccessPackageItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the accessPackagesIncompatibleWith property of the microsoft.graph.accessPackage entity.
                        def access_packages_incompatible_with()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::AccessPackagesIncompatibleWith::AccessPackagesIncompatibleWithRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the assignmentPolicies property of the microsoft.graph.accessPackage entity.
                        def assignment_policies()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::AssignmentPolicies::AssignmentPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the catalog property of the microsoft.graph.accessPackage entity.
                        def catalog()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::Catalog::CatalogRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getApplicablePolicyRequirements method.
                        def get_applicable_policy_requirements()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::GetApplicablePolicyRequirements::GetApplicablePolicyRequirementsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the incompatibleAccessPackages property of the microsoft.graph.accessPackage entity.
                        def incompatible_access_packages()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::IncompatibleAccessPackages::IncompatibleAccessPackagesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the incompatibleGroups property of the microsoft.graph.accessPackage entity.
                        def incompatible_groups()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::IncompatibleGroups::IncompatibleGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the resourceRoleScopes property of the microsoft.graph.accessPackage entity.
                        def resource_role_scopes()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::ResourceRoleScopes::ResourceRoleScopesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new AccessPackageItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackages/{accessPackage%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete an accessPackage object. You cannot delete an access package if it has any accessPackageAssignment.
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
                        ## Retrieve the properties and relationships of an accessPackage object.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of access_package
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update an existing accessPackage object to change one or more of its properties, such as the display name or description.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of access_package
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AccessPackage.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete an accessPackage object. You cannot delete an access package if it has any accessPackageAssignment.
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
                        ## Retrieve the properties and relationships of an accessPackage object.
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
                        ## Update an existing accessPackage object to change one or more of its properties, such as the display name or description.
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
                        # Retrieve the properties and relationships of an accessPackage object.
                        class AccessPackageItemRequestBuilderGetQueryParameters
                            
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
