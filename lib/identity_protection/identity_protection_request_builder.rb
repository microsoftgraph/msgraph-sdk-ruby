require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/identity_protection_root'
require_relative '../models/o_data_errors/o_data_error'
require_relative './identity_protection'
require_relative './risk_detections/item/risk_detection_item_request_builder'
require_relative './risk_detections/risk_detections_request_builder'
require_relative './risky_service_principals/item/risky_service_principal_item_request_builder'
require_relative './risky_service_principals/risky_service_principals_request_builder'
require_relative './risky_users/item/risky_user_item_request_builder'
require_relative './risky_users/risky_users_request_builder'
require_relative './service_principal_risk_detections/item/service_principal_risk_detection_item_request_builder'
require_relative './service_principal_risk_detections/service_principal_risk_detections_request_builder'

module MicrosoftGraph
    module IdentityProtection
        ## 
        # Provides operations to manage the identityProtectionRoot singleton.
        class IdentityProtectionRequestBuilder
            
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Provides operations to manage the riskDetections property of the microsoft.graph.identityProtectionRoot entity.
            def risk_detections()
                return MicrosoftGraph::IdentityProtection::RiskDetections::RiskDetectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the riskyServicePrincipals property of the microsoft.graph.identityProtectionRoot entity.
            def risky_service_principals()
                return MicrosoftGraph::IdentityProtection::RiskyServicePrincipals::RiskyServicePrincipalsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the riskyUsers property of the microsoft.graph.identityProtectionRoot entity.
            def risky_users()
                return MicrosoftGraph::IdentityProtection::RiskyUsers::RiskyUsersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the servicePrincipalRiskDetections property of the microsoft.graph.identityProtectionRoot entity.
            def service_principal_risk_detections()
                return MicrosoftGraph::IdentityProtection::ServicePrincipalRiskDetections::ServicePrincipalRiskDetectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            ## Instantiates a new IdentityProtectionRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/identityProtection{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Get identityProtection
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of identity_protection_root
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityProtectionRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update identityProtection
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of identity_protection_root
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityProtectionRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the riskDetections property of the microsoft.graph.identityProtectionRoot entity.
            ## @param id Unique identifier of the item
            ## @return a risk_detection_item_request_builder
            ## 
            def risk_detections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["riskDetection%2Did"] = id
                return MicrosoftGraph::IdentityProtection::RiskDetections::Item::RiskDetectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the riskyServicePrincipals property of the microsoft.graph.identityProtectionRoot entity.
            ## @param id Unique identifier of the item
            ## @return a risky_service_principal_item_request_builder
            ## 
            def risky_service_principals_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["riskyServicePrincipal%2Did"] = id
                return MicrosoftGraph::IdentityProtection::RiskyServicePrincipals::Item::RiskyServicePrincipalItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the riskyUsers property of the microsoft.graph.identityProtectionRoot entity.
            ## @param id Unique identifier of the item
            ## @return a risky_user_item_request_builder
            ## 
            def risky_users_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["riskyUser%2Did"] = id
                return MicrosoftGraph::IdentityProtection::RiskyUsers::Item::RiskyUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the servicePrincipalRiskDetections property of the microsoft.graph.identityProtectionRoot entity.
            ## @param id Unique identifier of the item
            ## @return a service_principal_risk_detection_item_request_builder
            ## 
            def service_principal_risk_detections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["servicePrincipalRiskDetection%2Did"] = id
                return MicrosoftGraph::IdentityProtection::ServicePrincipalRiskDetections::Item::ServicePrincipalRiskDetectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get identityProtection
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
            ## Update identityProtection
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
            # Get identityProtection
            class IdentityProtectionRequestBuilderGetQueryParameters
                
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
            class IdentityProtectionRequestBuilderGetRequestConfiguration
                
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
            class IdentityProtectionRequestBuilderPatchRequestConfiguration
                
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
