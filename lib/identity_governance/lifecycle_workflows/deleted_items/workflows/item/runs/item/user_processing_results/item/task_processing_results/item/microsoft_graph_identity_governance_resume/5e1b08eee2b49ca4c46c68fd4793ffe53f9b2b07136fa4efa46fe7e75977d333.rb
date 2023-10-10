require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../lifecycle_workflows'
require_relative '../../../../../../../../../deleted_items'
require_relative '../../../../../../../../workflows'
require_relative '../../../../../../../item'
require_relative '../../../../../../runs'
require_relative '../../../../../item'
require_relative '../../../../user_processing_results'
require_relative '../../../item'
require_relative '../../task_processing_results'
require_relative '../item'
require_relative './microsoft_graph_identity_governance_resume'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module DeletedItems
                module Workflows
                    module Item
                        module Runs
                            module Item
                                module UserProcessingResults
                                    module Item
                                        module TaskProcessingResults
                                            module Item
                                                module MicrosoftGraphIdentityGovernanceResume
                                                    ## 
                                                    # Provides operations to call the resume method.
                                                    class MicrosoftGraphIdentityGovernanceResumeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                        
                                                        ## 
                                                        ## Instantiates a new MicrosoftGraphIdentityGovernanceResumeRequestBuilder and sets the default values.
                                                        ## @param path_parameters Path parameters for the request
                                                        ## @param request_adapter The request adapter to use to execute the requests.
                                                        ## @return a void
                                                        ## 
                                                        def initialize(path_parameters, request_adapter)
                                                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflow%2Did}/runs/{run%2Did}/userProcessingResults/{userProcessingResult%2Did}/taskProcessingResults/{taskProcessingResult%2Did}/microsoft.graph.identityGovernance.resume")
                                                        end
                                                        ## 
                                                        ## Resume a task processing result that's inProgress. In the default case an Azure Logic Apps system-assigned managed identity calls this API. For more information, see: Lifecycle Workflows extensibility approach. This API is available in the following national cloud deployments.
                                                        ## @param body The request body
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of void
                                                        ## 
                                                        def post(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = self.to_post_request_information(
                                                                body, request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, nil, error_mapping)
                                                        end
                                                        ## 
                                                        ## Resume a task processing result that's inProgress. In the default case an Azure Logic Apps system-assigned managed identity calls this API. For more information, see: Lifecycle Workflows extensibility approach. This API is available in the following national cloud deployments.
                                                        ## @param body The request body
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a request_information
                                                        ## 
                                                        def to_post_request_information(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                            request_info.url_template = @url_template
                                                            request_info.path_parameters = @path_parameters
                                                            request_info.http_method = :POST
                                                            unless request_configuration.nil?
                                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                request_info.add_request_options(request_configuration.options)
                                                            end
                                                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                            return request_info
                                                        end
                                                        ## 
                                                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                        ## @param raw_url The raw URL to use for the request builder.
                                                        ## @return a microsoft_graph_identity_governance_resume_request_builder
                                                        ## 
                                                        def with_url(raw_url)
                                                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                            return MicrosoftGraphIdentityGovernanceResumeRequestBuilder.new(raw_url, @request_adapter)
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
