require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../models/access_package_resource_scope'
require_relative '../../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../../../resource_requests'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../catalog'
require_relative '../../../../../../../resource_scopes'
require_relative '../../../../../../item'
require_relative '../../../../../resource'
require_relative '../../../../roles'
require_relative '../../../item'
require_relative '../../resource'
require_relative '../scopes'
require_relative './item'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module ResourceRequests
                module Item
                    module Catalog
                        module ResourceScopes
                            module Item
                                module Resource
                                    module Roles
                                        module Item
                                            module Resource
                                                module Scopes
                                                    module Item
                                                        ## 
                                                        # Provides operations to manage the scopes property of the microsoft.graph.accessPackageResource entity.
                                                        class AccessPackageResourceScopeItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                            
                                                            ## 
                                                            ## Instantiates a new AccessPackageResourceScopeItemRequestBuilder and sets the default values.
                                                            ## @param path_parameters Path parameters for the request
                                                            ## @param request_adapter The request adapter to use to execute the requests.
                                                            ## @return a void
                                                            ## 
                                                            def initialize(path_parameters, request_adapter)
                                                                super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/resourceRequests/{accessPackageResourceRequest%2Did}/catalog/resourceScopes/{accessPackageResourceScope%2Did}/resource/roles/{accessPackageResourceRole%2Did}/resource/scopes/{accessPackageResourceScope%2Did1}{?%24expand,%24select}")
                                                            end
                                                            ## 
                                                            ## Delete navigation property scopes for identityGovernance
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
                                                            ## Read-only. Nullable. Supports $expand.
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of access_package_resource_scope
                                                            ## 
                                                            def get(request_configuration=nil)
                                                                request_info = self.to_get_request_information(
                                                                    request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Update the navigation property scopes in identityGovernance
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of access_package_resource_scope
                                                            ## 
                                                            def patch(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = self.to_patch_request_information(
                                                                    body, request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Delete navigation property scopes for identityGovernance
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a request_information
                                                            ## 
                                                            def to_delete_request_information(request_configuration=nil)
                                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                unless request_configuration.nil?
                                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                    request_info.add_request_options(request_configuration.options)
                                                                end
                                                                request_info.url_template = '{+baseurl}/identityGovernance/entitlementManagement/resourceRequests/{accessPackageResourceRequest%2Did}/catalog/resourceScopes/{accessPackageResourceScope%2Did}/resource/roles/{accessPackageResourceRole%2Did}/resource/scopes/{accessPackageResourceScope%2Did1}'
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :DELETE
                                                                request_info.headers.try_add('Accept', 'application/json')
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Read-only. Nullable. Supports $expand.
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
                                                            ## Update the navigation property scopes in identityGovernance
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
                                                                request_info.url_template = '{+baseurl}/identityGovernance/entitlementManagement/resourceRequests/{accessPackageResourceRequest%2Did}/catalog/resourceScopes/{accessPackageResourceScope%2Did}/resource/roles/{accessPackageResourceRole%2Did}/resource/scopes/{accessPackageResourceScope%2Did1}'
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :PATCH
                                                                request_info.headers.try_add('Accept', 'application/json')
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                            ## @param raw_url The raw URL to use for the request builder.
                                                            ## @return a access_package_resource_scope_item_request_builder
                                                            ## 
                                                            def with_url(raw_url)
                                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                                return AccessPackageResourceScopeItemRequestBuilder.new(raw_url, @request_adapter)
                                                            end

                                                            ## 
                                                            # Read-only. Nullable. Supports $expand.
                                                            class AccessPackageResourceScopeItemRequestBuilderGetQueryParameters
                                                                
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
                            end
                        end
                    end
                end
            end
        end
    end
end
