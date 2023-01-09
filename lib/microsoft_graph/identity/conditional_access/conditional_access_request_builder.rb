require 'microsoft_kiota_abstractions'
require_relative '../../models/conditional_access_root'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../identity'
require_relative './authentication_context_class_references/authentication_context_class_references_request_builder'
require_relative './authentication_context_class_references/item/authentication_context_class_reference_item_request_builder'
require_relative './conditional_access'
require_relative './named_locations/item/named_location_item_request_builder'
require_relative './named_locations/named_locations_request_builder'
require_relative './policies/item/conditional_access_policy_item_request_builder'
require_relative './policies/policies_request_builder'
require_relative './templates/item/conditional_access_template_item_request_builder'
require_relative './templates/templates_request_builder'

module MicrosoftGraph::Identity::ConditionalAccess
    ## 
    # Provides operations to manage the conditionalAccess property of the microsoft.graph.identityContainer entity.
    class ConditionalAccessRequestBuilder
        
        ## 
        # Provides operations to manage the authenticationContextClassReferences property of the microsoft.graph.conditionalAccessRoot entity.
        def authentication_context_class_references()
            return MicrosoftGraph::Identity::ConditionalAccess::AuthenticationContextClassReferences::AuthenticationContextClassReferencesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the namedLocations property of the microsoft.graph.conditionalAccessRoot entity.
        def named_locations()
            return MicrosoftGraph::Identity::ConditionalAccess::NamedLocations::NamedLocationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the policies property of the microsoft.graph.conditionalAccessRoot entity.
        def policies()
            return MicrosoftGraph::Identity::ConditionalAccess::Policies::PoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the templates property of the microsoft.graph.conditionalAccessRoot entity.
        def templates()
            return MicrosoftGraph::Identity::ConditionalAccess::Templates::TemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the authenticationContextClassReferences property of the microsoft.graph.conditionalAccessRoot entity.
        ## @param id Unique identifier of the item
        ## @return a authentication_context_class_reference_item_request_builder
        ## 
        def authentication_context_class_references_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["authenticationContextClassReference%2Did"] = id
            return MicrosoftGraph::Identity::ConditionalAccess::AuthenticationContextClassReferences::Item::AuthenticationContextClassReferenceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new ConditionalAccessRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/identity/conditionalAccess{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property conditionalAccess for identity
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
        ## the entry point for the Conditional Access (CA) object model.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of conditional_access_root
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ConditionalAccessRoot.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the namedLocations property of the microsoft.graph.conditionalAccessRoot entity.
        ## @param id Unique identifier of the item
        ## @return a named_location_item_request_builder
        ## 
        def named_locations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["namedLocation%2Did"] = id
            return MicrosoftGraph::Identity::ConditionalAccess::NamedLocations::Item::NamedLocationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property conditionalAccess in identity
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of conditional_access_root
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ConditionalAccessRoot.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the policies property of the microsoft.graph.conditionalAccessRoot entity.
        ## @param id Unique identifier of the item
        ## @return a conditional_access_policy_item_request_builder
        ## 
        def policies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["conditionalAccessPolicy%2Did"] = id
            return MicrosoftGraph::Identity::ConditionalAccess::Policies::Item::ConditionalAccessPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the templates property of the microsoft.graph.conditionalAccessRoot entity.
        ## @param id Unique identifier of the item
        ## @return a conditional_access_template_item_request_builder
        ## 
        def templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["conditionalAccessTemplate%2Did"] = id
            return MicrosoftGraph::Identity::ConditionalAccess::Templates::Item::ConditionalAccessTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property conditionalAccess for identity
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
        ## the entry point for the Conditional Access (CA) object model.
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
        ## Update the navigation property conditionalAccess in identity
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
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ConditionalAccessRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # the entry point for the Conditional Access (CA) object model.
        class ConditionalAccessRequestBuilderGetQueryParameters
            
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
        class ConditionalAccessRequestBuilderGetRequestConfiguration
            
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
        class ConditionalAccessRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
