require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceWorkflow < MicrosoftGraph::Models::IdentityGovernanceWorkflowBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When the workflow was deleted.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @deleted_date_time
            ## 
            # The unique identifier of the Microsoft Entra identity that last modified the workflow object.
            @execution_scope
            ## 
            # Identifier used for individually addressing a specific workflow.Supports $filter(eq, ne) and $orderby.
            @id
            ## 
            # The date time when the workflow is expected to run next based on the schedule interval, if there are any users matching the execution conditions. Supports $filter(lt,gt) and $orderby.
            @next_schedule_run_date_time
            ## 
            # Workflow runs.
            @runs
            ## 
            # Represents the aggregation of task execution data for tasks within a workflow object.
            @task_reports
            ## 
            # Per-user workflow execution results.
            @user_processing_results
            ## 
            # The current version number of the workflow. Value is 1 when the workflow is first created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @version
            ## 
            # The workflow versions that are available.
            @versions
            ## 
            ## Instantiates a new identityGovernanceWorkflow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identityGovernance.workflow"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_workflow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceWorkflow.new
            end
            ## 
            ## Gets the deletedDateTime property value. When the workflow was deleted.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a date_time
            ## 
            def deleted_date_time
                return @deleted_date_time
            end
            ## 
            ## Sets the deletedDateTime property value. When the workflow was deleted.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @param value Value to set for the deletedDateTime property.
            ## @return a void
            ## 
            def deleted_date_time=(value)
                @deleted_date_time = value
            end
            ## 
            ## Gets the executionScope property value. The unique identifier of the Microsoft Entra identity that last modified the workflow object.
            ## @return a identity_governance_user_processing_result
            ## 
            def execution_scope
                return @execution_scope
            end
            ## 
            ## Sets the executionScope property value. The unique identifier of the Microsoft Entra identity that last modified the workflow object.
            ## @param value Value to set for the executionScope property.
            ## @return a void
            ## 
            def execution_scope=(value)
                @execution_scope = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deletedDateTime" => lambda {|n| @deleted_date_time = n.get_date_time_value() },
                    "executionScope" => lambda {|n| @execution_scope = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceUserProcessingResult.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "nextScheduleRunDateTime" => lambda {|n| @next_schedule_run_date_time = n.get_date_time_value() },
                    "runs" => lambda {|n| @runs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceRun.create_from_discriminator_value(pn) }) },
                    "taskReports" => lambda {|n| @task_reports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceTaskReport.create_from_discriminator_value(pn) }) },
                    "userProcessingResults" => lambda {|n| @user_processing_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceUserProcessingResult.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                    "versions" => lambda {|n| @versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceWorkflowVersion.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the id property value. Identifier used for individually addressing a specific workflow.Supports $filter(eq, ne) and $orderby.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Identifier used for individually addressing a specific workflow.Supports $filter(eq, ne) and $orderby.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the nextScheduleRunDateTime property value. The date time when the workflow is expected to run next based on the schedule interval, if there are any users matching the execution conditions. Supports $filter(lt,gt) and $orderby.
            ## @return a date_time
            ## 
            def next_schedule_run_date_time
                return @next_schedule_run_date_time
            end
            ## 
            ## Sets the nextScheduleRunDateTime property value. The date time when the workflow is expected to run next based on the schedule interval, if there are any users matching the execution conditions. Supports $filter(lt,gt) and $orderby.
            ## @param value Value to set for the nextScheduleRunDateTime property.
            ## @return a void
            ## 
            def next_schedule_run_date_time=(value)
                @next_schedule_run_date_time = value
            end
            ## 
            ## Gets the runs property value. Workflow runs.
            ## @return a identity_governance_run
            ## 
            def runs
                return @runs
            end
            ## 
            ## Sets the runs property value. Workflow runs.
            ## @param value Value to set for the runs property.
            ## @return a void
            ## 
            def runs=(value)
                @runs = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("deletedDateTime", @deleted_date_time)
                writer.write_collection_of_object_values("executionScope", @execution_scope)
                writer.write_string_value("id", @id)
                writer.write_date_time_value("nextScheduleRunDateTime", @next_schedule_run_date_time)
                writer.write_collection_of_object_values("runs", @runs)
                writer.write_collection_of_object_values("taskReports", @task_reports)
                writer.write_collection_of_object_values("userProcessingResults", @user_processing_results)
                writer.write_number_value("version", @version)
                writer.write_collection_of_object_values("versions", @versions)
            end
            ## 
            ## Gets the taskReports property value. Represents the aggregation of task execution data for tasks within a workflow object.
            ## @return a identity_governance_task_report
            ## 
            def task_reports
                return @task_reports
            end
            ## 
            ## Sets the taskReports property value. Represents the aggregation of task execution data for tasks within a workflow object.
            ## @param value Value to set for the taskReports property.
            ## @return a void
            ## 
            def task_reports=(value)
                @task_reports = value
            end
            ## 
            ## Gets the userProcessingResults property value. Per-user workflow execution results.
            ## @return a identity_governance_user_processing_result
            ## 
            def user_processing_results
                return @user_processing_results
            end
            ## 
            ## Sets the userProcessingResults property value. Per-user workflow execution results.
            ## @param value Value to set for the userProcessingResults property.
            ## @return a void
            ## 
            def user_processing_results=(value)
                @user_processing_results = value
            end
            ## 
            ## Gets the version property value. The current version number of the workflow. Value is 1 when the workflow is first created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The current version number of the workflow. Value is 1 when the workflow is first created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
            ## 
            ## Gets the versions property value. The workflow versions that are available.
            ## @return a identity_governance_workflow_version
            ## 
            def versions
                return @versions
            end
            ## 
            ## Sets the versions property value. The workflow versions that are available.
            ## @param value Value to set for the versions property.
            ## @return a void
            ## 
            def versions=(value)
                @versions = value
            end
        end
    end
end
