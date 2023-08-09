require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/identity_governance_workflow'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../identity_governance'
require_relative '../../lifecycle_workflows'
require_relative '../workflows'
require_relative './created_by/created_by_request_builder'
require_relative './execution_scope/execution_scope_request_builder'
require_relative './item'
require_relative './last_modified_by/last_modified_by_request_builder'
require_relative './microsoft_graph_identity_governance_activate/microsoft_graph_identity_governance_activate_request_builder'
require_relative './microsoft_graph_identity_governance_create_new_version/microsoft_graph_identity_governance_create_new_version_request_builder'
require_relative './microsoft_graph_identity_governance_restore/microsoft_graph_identity_governance_restore_request_builder'
require_relative './runs/runs_request_builder'
require_relative './task_reports/task_reports_request_builder'
require_relative './tasks/tasks_request_builder'
require_relative './user_processing_results/user_processing_results_request_builder'
require_relative './versions/versions_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module LifecycleWorkflows
            module Workflows
                module Item
                    ## 
                    # Provides operations to manage the workflows property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                    class WorkflowItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the createdBy property of the microsoft.graph.identityGovernance.workflowBase entity.
                        def created_by()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::CreatedBy::CreatedByRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the executionScope property of the microsoft.graph.identityGovernance.workflow entity.
                        def execution_scope()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::ExecutionScope::ExecutionScopeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the lastModifiedBy property of the microsoft.graph.identityGovernance.workflowBase entity.
                        def last_modified_by()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::LastModifiedBy::LastModifiedByRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the activate method.
                        def microsoft_graph_identity_governance_activate()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::MicrosoftGraphIdentityGovernanceActivate::MicrosoftGraphIdentityGovernanceActivateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the createNewVersion method.
                        def microsoft_graph_identity_governance_create_new_version()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::MicrosoftGraphIdentityGovernanceCreateNewVersion::MicrosoftGraphIdentityGovernanceCreateNewVersionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the restore method.
                        def microsoft_graph_identity_governance_restore()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::MicrosoftGraphIdentityGovernanceRestore::MicrosoftGraphIdentityGovernanceRestoreRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the runs property of the microsoft.graph.identityGovernance.workflow entity.
                        def runs()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Runs::RunsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the taskReports property of the microsoft.graph.identityGovernance.workflow entity.
                        def task_reports()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::TaskReports::TaskReportsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the tasks property of the microsoft.graph.identityGovernance.workflowBase entity.
                        def tasks()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Tasks::TasksRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the userProcessingResults property of the microsoft.graph.identityGovernance.workflow entity.
                        def user_processing_results()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::UserProcessingResults::UserProcessingResultsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the versions property of the microsoft.graph.identityGovernance.workflow entity.
                        def versions()
                            return MicrosoftGraph::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Versions::VersionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new WorkflowItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/workflows/{workflow%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete a workflow object and its associated tasks, taskProcessingResults and versions. You can restore a deleted workflow and its associated objects within 30 days of deletion.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of void
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, nil, error_mapping)
                        end
                        ## 
                        ## Read the properties and relationships of a workflow object.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of identity_governance_workflow
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceWorkflow.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the properties of a workflow object. Only the properties listed in the request body table can be updated. To update any other workflow properties, see workflow: createNewVersion.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of identity_governance_workflow
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceWorkflow.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete a workflow object and its associated tasks, taskProcessingResults and versions. You can restore a deleted workflow and its associated objects within 30 days of deletion.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## Read the properties and relationships of a workflow object.
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
                        ## Update the properties of a workflow object. Only the properties listed in the request body table can be updated. To update any other workflow properties, see workflow: createNewVersion.
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
                        # Read the properties and relationships of a workflow object.
                        class WorkflowItemRequestBuilderGetQueryParameters
                            
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
