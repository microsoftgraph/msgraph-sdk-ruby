require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/identity_governance_insights'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../identity_governance'
require_relative '../lifecycle_workflows'
require_relative './i74daca89dab6f3d695c45aa0b8b57b8d4613395188c513b4453ad9c897f84dc0/3d01f6caec0f8fa7cb32ecdab34e589e4d9189c8759535bdd4283485c6f53a35'
require_relative './ibce5e128e9937719c877c16d2719353cf88fa99361373898bd0a04bf2aaff48d/01a260f4a3bc521a3b5c1e5326e226eaae90772fd7b8f14bfcef0624d2beaabf'
require_relative './ic71652b80f5b1945fff04eeef0b3fba39f8ce338a5f6894852169faa5fdfa802/67ae7f9113e589cfe335f17e7cf7daf04bd515d2b4d8c7f6e62669534bdb7a92'
require_relative './ic8c368d9078a6713b2926361375b75cac8dddcb688abb4034dccf46505354679/73af0ee3f94ea8654ed55c4857073f41a9d58d00177ee1f6d38666fe2c9cda15'
require_relative './insights'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Insights
                ## 
                # Provides operations to manage the insights property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                class InsightsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new InsightsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/insights{?%24expand,%24select}")
                    end
                    ## 
                    ## Delete navigation property insights for identityGovernance
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
                    ## The insight container holding workflow insight summaries for a tenant.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of identity_governance_insights
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceInsights.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the topTasksProcessedSummary method.
                    ## @param end_date_time Usage: endDateTime={endDateTime}
                    ## @param start_date_time Usage: startDateTime={startDateTime}
                    ## @return a microsoft_graph_identity_governance_top_tasks_processed_summary_with_start_date_time_with_end_date_time_request_builder
                    ## 
                    def microsoft_graph_identity_governance_top_tasks_processed_summary_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                        raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                        raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                        return MicrosoftGraphIdentityGovernanceTopTasksProcessedSummaryWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                    end
                    ## 
                    ## Provides operations to call the topWorkflowsProcessedSummary method.
                    ## @param end_date_time Usage: endDateTime={endDateTime}
                    ## @param start_date_time Usage: startDateTime={startDateTime}
                    ## @return a microsoft_graph_identity_governance_top_workflows_processed_summary_with_start_date_time_with_end_date_time_request_builder
                    ## 
                    def microsoft_graph_identity_governance_top_workflows_processed_summary_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                        raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                        raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                        return MicrosoftGraphIdentityGovernanceTopWorkflowsProcessedSummaryWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                    end
                    ## 
                    ## Provides operations to call the workflowsProcessedByCategory method.
                    ## @param end_date_time Usage: endDateTime={endDateTime}
                    ## @param start_date_time Usage: startDateTime={startDateTime}
                    ## @return a microsoft_graph_identity_governance_workflows_processed_by_category_with_start_date_time_with_end_date_time_request_builder
                    ## 
                    def microsoft_graph_identity_governance_workflows_processed_by_category_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                        raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                        raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                        return MicrosoftGraphIdentityGovernanceWorkflowsProcessedByCategoryWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                    end
                    ## 
                    ## Provides operations to call the workflowsProcessedSummary method.
                    ## @param end_date_time Usage: endDateTime={endDateTime}
                    ## @param start_date_time Usage: startDateTime={startDateTime}
                    ## @return a microsoft_graph_identity_governance_workflows_processed_summary_with_start_date_time_with_end_date_time_request_builder
                    ## 
                    def microsoft_graph_identity_governance_workflows_processed_summary_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                        raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                        raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                        return MicrosoftGraphIdentityGovernanceWorkflowsProcessedSummaryWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                    end
                    ## 
                    ## Update the navigation property insights in identityGovernance
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of identity_governance_insights
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceInsights.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property insights for identityGovernance
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        return request_info
                    end
                    ## 
                    ## The insight container holding workflow insight summaries for a tenant.
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
                    ## Update the navigation property insights in identityGovernance
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
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a insights_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return InsightsRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # The insight container holding workflow insight summaries for a tenant.
                    class InsightsRequestBuilderGetQueryParameters
                        
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
