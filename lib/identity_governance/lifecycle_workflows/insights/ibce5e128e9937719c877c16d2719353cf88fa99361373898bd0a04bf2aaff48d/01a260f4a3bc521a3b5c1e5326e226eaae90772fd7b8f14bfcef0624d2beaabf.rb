require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../identity_governance'
require_relative '../../lifecycle_workflows'
require_relative '../insights'
require_relative './ibce5e128e9937719c877c16d2719353cf88fa99361373898bd0a04bf2aaff48d'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Insights
                module Ibce5e128e9937719c877c16d2719353cf88fa99361373898bd0a04bf2aaff48d
                    ## 
                    # Provides operations to call the topTasksProcessedSummary method.
                    class MicrosoftGraphIdentityGovernanceTopTasksProcessedSummaryWithStartDateTimeWithEndDateTimeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new MicrosoftGraphIdentityGovernanceTopTasksProcessedSummaryWithStartDateTimeWithEndDateTimeRequestBuilder and sets the default values.
                        ## @param end_date_time Usage: endDateTime={endDateTime}
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @param start_date_time Usage: startDateTime={startDateTime}
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter, end_date_time=nil, start_date_time=nil)
                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/insights/microsoft.graph.identityGovernance.topTasksProcessedSummary(startDateTime={startDateTime},endDateTime={endDateTime}){?%24count,%24filter,%24search,%24skip,%24top}")
                        end
                        ## 
                        ## Provide a summary of the most processed tasks, known as top tasks, for a specified time period in a tenant. The task definition is provided, along with numerical counts of total, successful, and failed runs. For information about workflows processed, see insights: topWorkflowsProcessedSummary.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of top_tasks_processed_summary_with_start_date_time_with_end_date_timeget_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Insights::Ibce5e128e9937719c877c16d2719353cf88fa99361373898bd0a04bf2aaff48d::TopTasksProcessedSummaryWithStartDateTimeWithEndDateTimegetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provide a summary of the most processed tasks, known as top tasks, for a specified time period in a tenant. The task definition is provided, along with numerical counts of total, successful, and failed runs. For information about workflows processed, see insights: topWorkflowsProcessedSummary.
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
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a microsoft_graph_identity_governance_top_tasks_processed_summary_with_start_date_time_with_end_date_time_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return MicrosoftGraphIdentityGovernanceTopTasksProcessedSummaryWithStartDateTimeWithEndDateTimeRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Provide a summary of the most processed tasks, known as top tasks, for a specified time period in a tenant. The task definition is provided, along with numerical counts of total, successful, and failed runs. For information about workflows processed, see insights: topWorkflowsProcessedSummary.
                        class MicrosoftGraphIdentityGovernanceTopTasksProcessedSummaryWithStartDateTimeWithEndDateTimeRequestBuilderGetQueryParameters
                            
                            ## 
                            # Include count of items
                            attr_accessor :count
                            ## 
                            # Filter items by property values
                            attr_accessor :filter
                            ## 
                            # Search items by search phrases
                            attr_accessor :search
                            ## 
                            # Skip the first n items
                            attr_accessor :skip
                            ## 
                            # Show only the first n items
                            attr_accessor :top
                            ## 
                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                            ## @param original_name The original query parameter name in the class.
                            ## @return a string
                            ## 
                            def get_query_parameter(original_name)
                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                case original_name
                                    when "count"
                                        return "%24count"
                                    when "filter"
                                        return "%24filter"
                                    when "search"
                                        return "%24search"
                                    when "skip"
                                        return "%24skip"
                                    when "top"
                                        return "%24top"
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
