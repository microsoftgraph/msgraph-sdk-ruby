require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/o_data_errors/o_data_error'
require_relative '../models/security_model'
require_relative './alerts/alerts_request_builder'
require_relative './alerts/item/alert_item_request_builder'
require_relative './alerts_v2/alerts_v2_request_builder'
require_relative './alerts_v2/item/alert_item_request_builder'
require_relative './attack_simulation/attack_simulation_request_builder'
require_relative './cases/cases_request_builder'
require_relative './incidents/incidents_request_builder'
require_relative './incidents/item/incident_item_request_builder'
require_relative './secure_score_control_profiles/item/secure_score_control_profile_item_request_builder'
require_relative './secure_score_control_profiles/secure_score_control_profiles_request_builder'
require_relative './secure_scores/item/secure_score_item_request_builder'
require_relative './secure_scores/secure_scores_request_builder'
require_relative './security'
require_relative './security_run_hunting_query/security_run_hunting_query_request_builder'

module MicrosoftGraph
    module Security
        ## 
        # Provides operations to manage the security singleton.
        class SecurityRequestBuilder
            
            ## 
            # Provides operations to manage the alerts property of the microsoft.graph.security entity.
            def alerts()
                return MicrosoftGraph::Security::Alerts::AlertsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the alerts_v2 property of the microsoft.graph.security entity.
            def alerts_v2()
                return MicrosoftGraph::Security::Alerts_v2::AlertsV2RequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the attackSimulation property of the microsoft.graph.security entity.
            def attack_simulation()
                return MicrosoftGraph::Security::AttackSimulation::AttackSimulationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the cases property of the microsoft.graph.security entity.
            def cases()
                return MicrosoftGraph::Security::Cases::CasesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the incidents property of the microsoft.graph.security entity.
            def incidents()
                return MicrosoftGraph::Security::Incidents::IncidentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Provides operations to manage the secureScoreControlProfiles property of the microsoft.graph.security entity.
            def secure_score_control_profiles()
                return MicrosoftGraph::Security::SecureScoreControlProfiles::SecureScoreControlProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the secureScores property of the microsoft.graph.security entity.
            def secure_scores()
                return MicrosoftGraph::Security::SecureScores::SecureScoresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the runHuntingQuery method.
            def security_run_hunting_query()
                return MicrosoftGraph::Security::SecurityRunHuntingQuery::SecurityRunHuntingQueryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            ## Provides operations to manage the alerts property of the microsoft.graph.security entity.
            ## @param id Unique identifier of the item
            ## @return a alert_item_request_builder
            ## 
            def alerts_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["alert%2Did"] = id
                return MicrosoftGraph::Security::Alerts::Item::AlertItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the alerts_v2 property of the microsoft.graph.security entity.
            ## @param id Unique identifier of the item
            ## @return a alert_item_request_builder
            ## 
            def alerts_v2_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["alert%2Did"] = id
                return MicrosoftGraph::Security::Alerts_v2::Item::AlertItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new SecurityRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/security{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Get security
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of security_model
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityModel.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the incidents property of the microsoft.graph.security entity.
            ## @param id Unique identifier of the item
            ## @return a incident_item_request_builder
            ## 
            def incidents_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["incident%2Did"] = id
                return MicrosoftGraph::Security::Incidents::Item::IncidentItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update security
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of security_model
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::SecurityModel.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the secureScoreControlProfiles property of the microsoft.graph.security entity.
            ## @param id Unique identifier of the item
            ## @return a secure_score_control_profile_item_request_builder
            ## 
            def secure_score_control_profiles_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["secureScoreControlProfile%2Did"] = id
                return MicrosoftGraph::Security::SecureScoreControlProfiles::Item::SecureScoreControlProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the secureScores property of the microsoft.graph.security entity.
            ## @param id Unique identifier of the item
            ## @return a secure_score_item_request_builder
            ## 
            def secure_scores_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["secureScore%2Did"] = id
                return MicrosoftGraph::Security::SecureScores::Item::SecureScoreItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get security
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
            ## Update security
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
            # Get security
            class SecurityRequestBuilderGetQueryParameters
                
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
            class SecurityRequestBuilderGetRequestConfiguration
                
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
            class SecurityRequestBuilderPatchRequestConfiguration
                
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
