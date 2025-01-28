require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/identity_governance_workflows_insights_by_category'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../identity_governance'
require_relative '../../lifecycle_workflows'
require_relative '../insights'
require_relative './ic8c368d9078a6713b2926361375b75cac8dddcb688abb4034dccf46505354679'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Insights
                module Ic8c368d9078a6713b2926361375b75cac8dddcb688abb4034dccf46505354679
                    ## 
                    # Provides operations to call the workflowsProcessedByCategory method.
                    class MicrosoftGraphIdentityGovernanceWorkflowsProcessedByCategoryWithStartDateTimeWithEndDateTimeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new MicrosoftGraphIdentityGovernanceWorkflowsProcessedByCategoryWithStartDateTimeWithEndDateTimeRequestBuilder and sets the default values.
                        ## @param end_date_time Usage: endDateTime={endDateTime}
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @param start_date_time Usage: startDateTime={startDateTime}
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter, end_date_time=nil, start_date_time=nil)
                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/insights/microsoft.graph.identityGovernance.workflowsProcessedByCategory(startDateTime={startDateTime},endDateTime={endDateTime})")
                        end
                        ## 
                        ## Provide a summary of workflows processed, by category, in a tenant. This allows you to quickly get category information, by numerical value, bypassing other information found in the WorkflowsProcessedSummary call.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of identity_governance_workflows_insights_by_category
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceWorkflowsInsightsByCategory.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provide a summary of workflows processed, by category, in a tenant. This allows you to quickly get category information, by numerical value, bypassing other information found in the WorkflowsProcessedSummary call.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a microsoft_graph_identity_governance_workflows_processed_by_category_with_start_date_time_with_end_date_time_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return MicrosoftGraphIdentityGovernanceWorkflowsProcessedByCategoryWithStartDateTimeWithEndDateTimeRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
