require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/o_data_errors/o_data_error'
require_relative '../models/tenant_relationship'
require_relative './delegated_admin_customers/delegated_admin_customers_request_builder'
require_relative './delegated_admin_customers/item/delegated_admin_customer_item_request_builder'
require_relative './delegated_admin_relationships/delegated_admin_relationships_request_builder'
require_relative './delegated_admin_relationships/item/delegated_admin_relationship_item_request_builder'
require_relative './tenant_relationships'

module MicrosoftGraph
    module TenantRelationships
        ## 
        # Provides operations to manage the tenantRelationship singleton.
        class TenantRelationshipsRequestBuilder
            
            ## 
            # Provides operations to manage the delegatedAdminCustomers property of the microsoft.graph.tenantRelationship entity.
            def delegated_admin_customers()
                return MicrosoftGraph::TenantRelationships::DelegatedAdminCustomers::DelegatedAdminCustomersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the delegatedAdminRelationships property of the microsoft.graph.tenantRelationship entity.
            def delegated_admin_relationships()
                return MicrosoftGraph::TenantRelationships::DelegatedAdminRelationships::DelegatedAdminRelationshipsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            ## Instantiates a new TenantRelationshipsRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/tenantRelationships{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the delegatedAdminCustomers property of the microsoft.graph.tenantRelationship entity.
            ## @param id Unique identifier of the item
            ## @return a delegated_admin_customer_item_request_builder
            ## 
            def delegated_admin_customers_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["delegatedAdminCustomer%2Did"] = id
                return MicrosoftGraph::TenantRelationships::DelegatedAdminCustomers::Item::DelegatedAdminCustomerItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the delegatedAdminRelationships property of the microsoft.graph.tenantRelationship entity.
            ## @param id Unique identifier of the item
            ## @return a delegated_admin_relationship_item_request_builder
            ## 
            def delegated_admin_relationships_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["delegatedAdminRelationship%2Did"] = id
                return MicrosoftGraph::TenantRelationships::DelegatedAdminRelationships::Item::DelegatedAdminRelationshipItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get tenantRelationships
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of tenant_relationship
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TenantRelationship.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update tenantRelationships
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of tenant_relationship
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TenantRelationship.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get tenantRelationships
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
            ## Update tenantRelationships
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
            # Get tenantRelationships
            class TenantRelationshipsRequestBuilderGetQueryParameters
                
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
            class TenantRelationshipsRequestBuilderGetRequestConfiguration
                
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
            class TenantRelationshipsRequestBuilderPatchRequestConfiguration
                
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
