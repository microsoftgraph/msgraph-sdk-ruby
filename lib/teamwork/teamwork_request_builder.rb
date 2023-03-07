require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative '../models/o_data_errors/o_data_error'
require_relative '../models/teamwork'
require_relative './deleted_teams/deleted_teams_request_builder'
require_relative './deleted_teams/item/deleted_team_item_request_builder'
require_relative './send_activity_notification_to_recipients/send_activity_notification_to_recipients_request_builder'
require_relative './teamwork'
require_relative './workforce_integrations/item/workforce_integration_item_request_builder'
require_relative './workforce_integrations/workforce_integrations_request_builder'

module MicrosoftGraph
    module Teamwork
        ## 
        # Provides operations to manage the teamwork singleton.
        class TeamworkRequestBuilder
            
            ## 
            # Provides operations to manage the deletedTeams property of the microsoft.graph.teamwork entity.
            def deleted_teams()
                return MicrosoftGraph::Teamwork::DeletedTeams::DeletedTeamsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Provides operations to call the sendActivityNotificationToRecipients method.
            def send_activity_notification_to_recipients()
                return MicrosoftGraph::Teamwork::SendActivityNotificationToRecipients::SendActivityNotificationToRecipientsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            # Provides operations to manage the workforceIntegrations property of the microsoft.graph.teamwork entity.
            def workforce_integrations()
                return MicrosoftGraph::Teamwork::WorkforceIntegrations::WorkforceIntegrationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new TeamworkRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/teamwork{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the deletedTeams property of the microsoft.graph.teamwork entity.
            ## @param id Unique identifier of the item
            ## @return a deleted_team_item_request_builder
            ## 
            def deleted_teams_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deletedTeam%2Did"] = id
                return MicrosoftGraph::Teamwork::DeletedTeams::Item::DeletedTeamItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get teamwork
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of teamwork
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Teamwork.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update teamwork
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of teamwork
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Teamwork.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get teamwork
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
            ## Update teamwork
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
            ## Provides operations to manage the workforceIntegrations property of the microsoft.graph.teamwork entity.
            ## @param id Unique identifier of the item
            ## @return a workforce_integration_item_request_builder
            ## 
            def workforce_integrations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["workforceIntegration%2Did"] = id
                return MicrosoftGraph::Teamwork::WorkforceIntegrations::Item::WorkforceIntegrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end

            ## 
            # Get teamwork
            class TeamworkRequestBuilderGetQueryParameters
                
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
            class TeamworkRequestBuilderGetRequestConfiguration
                
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
            class TeamworkRequestBuilderPatchRequestConfiguration
                
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
