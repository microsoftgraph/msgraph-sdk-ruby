require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/identity_governance_task_processing_result'
require_relative '../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../identity_governance'
require_relative '../../../../../../lifecycle_workflows'
require_relative '../../../../../workflows'
require_relative '../../../../item'
require_relative '../../../task_reports'
require_relative '../../item'
require_relative '../task_processing_results'
require_relative './item'
require_relative './microsoft_graph_identity_governance_resume/microsoft_graph_identity_governance_resume_request_builder'
require_relative './subject/subject_request_builder'
require_relative './task/task_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Workflows
                module Item
                    module TaskReports
                        module Item
                            module TaskProcessingResults
                                module Item
                                    ## 
                                    # Provides operations to manage the taskProcessingResults property of the microsoft.graph.identityGovernance.taskReport entity.
                                    class TaskProcessingResultItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to call the resume method.
                                        def microsoft_graph_identity_governance_resume()
                                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::TaskReports::Item::TaskProcessingResults::Item::MicrosoftGraphIdentityGovernanceResume::MicrosoftGraphIdentityGovernanceResumeRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to manage the subject property of the microsoft.graph.identityGovernance.taskProcessingResult entity.
                                        def subject()
                                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::TaskReports::Item::TaskProcessingResults::Item::Subject::SubjectRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to manage the task property of the microsoft.graph.identityGovernance.taskProcessingResult entity.
                                        def task()
                                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::TaskReports::Item::TaskProcessingResults::Item::Task::TaskRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new TaskProcessingResultItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/workflows/{workflow%2Did}/taskReports/{taskReport%2Did}/taskProcessingResults/{taskProcessingResult%2Did}{?%24select,%24expand}")
                                        end
                                        ## 
                                        ## The related lifecycle workflow taskProcessingResults.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of identity_governance_task_processing_result
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceTaskProcessingResult.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## The related lifecycle workflow taskProcessingResults.
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
                                        # The related lifecycle workflow taskProcessingResults.
                                        class TaskProcessingResultItemRequestBuilderGetQueryParameters
                                            
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
                end
            end
        end
    end
end
