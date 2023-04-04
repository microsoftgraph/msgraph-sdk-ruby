require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/identity_container'
require_relative '../models/o_data_errors/o_data_error'
require_relative './api_connectors/api_connectors_request_builder'
require_relative './api_connectors/item/identity_api_connector_item_request_builder'
require_relative './b2x_user_flows/b2x_user_flows_request_builder'
require_relative './b2x_user_flows/item/b2x_identity_user_flow_item_request_builder'
require_relative './conditional_access/conditional_access_request_builder'
require_relative './identity'
require_relative './identity_providers/identity_providers_request_builder'
require_relative './identity_providers/item/identity_provider_base_item_request_builder'
require_relative './user_flow_attributes/item/identity_user_flow_attribute_item_request_builder'
require_relative './user_flow_attributes/user_flow_attributes_request_builder'

module MicrosoftGraph
    module Identity
        ## 
        # Provides operations to manage the identityContainer singleton.
        class IdentityRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the apiConnectors property of the microsoft.graph.identityContainer entity.
            def api_connectors()
                return MicrosoftGraph::Identity::ApiConnectors::ApiConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the b2xUserFlows property of the microsoft.graph.identityContainer entity.
            def b2x_user_flows()
                return MicrosoftGraph::Identity::B2xUserFlows::B2xUserFlowsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the conditionalAccess property of the microsoft.graph.identityContainer entity.
            def conditional_access()
                return MicrosoftGraph::Identity::ConditionalAccess::ConditionalAccessRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the identityProviders property of the microsoft.graph.identityContainer entity.
            def identity_providers()
                return MicrosoftGraph::Identity::IdentityProviders::IdentityProvidersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userFlowAttributes property of the microsoft.graph.identityContainer entity.
            def user_flow_attributes()
                return MicrosoftGraph::Identity::UserFlowAttributes::UserFlowAttributesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Provides operations to manage the apiConnectors property of the microsoft.graph.identityContainer entity.
            ## @param id Unique identifier of the item
            ## @return a identity_api_connector_item_request_builder
            ## 
            def api_connectors_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["identityApiConnector%2Did"] = id
                return MicrosoftGraph::Identity::ApiConnectors::Item::IdentityApiConnectorItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the b2xUserFlows property of the microsoft.graph.identityContainer entity.
            ## @param id Unique identifier of the item
            ## @return a b2x_identity_user_flow_item_request_builder
            ## 
            def b2x_user_flows_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["b2xIdentityUserFlow%2Did"] = id
                return MicrosoftGraph::Identity::B2xUserFlows::Item::B2xIdentityUserFlowItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new IdentityRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/identity{?%24select,%24expand}")
            end
            ## 
            ## Get identity
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of identity_container
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityContainer.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the identityProviders property of the microsoft.graph.identityContainer entity.
            ## @param id Unique identifier of the item
            ## @return a identity_provider_base_item_request_builder
            ## 
            def identity_providers_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["identityProviderBase%2Did"] = id
                return MicrosoftGraph::Identity::IdentityProviders::Item::IdentityProviderBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update identity
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of identity_container
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityContainer.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get identity
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
            ## Update identity
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
            ## Provides operations to manage the userFlowAttributes property of the microsoft.graph.identityContainer entity.
            ## @param id Unique identifier of the item
            ## @return a identity_user_flow_attribute_item_request_builder
            ## 
            def user_flow_attributes_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["identityUserFlowAttribute%2Did"] = id
                return MicrosoftGraph::Identity::UserFlowAttributes::Item::IdentityUserFlowAttributeItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end

            ## 
            # Get identity
            class IdentityRequestBuilderGetQueryParameters
                
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
