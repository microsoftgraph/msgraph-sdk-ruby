require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class TaskReport < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The date time that the associated run completed. Value is null if the run has not completed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @completed_date_time
                ## 
                # The number of users in the run execution for which the associated task failed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @failed_users_count
                ## 
                # The date and time that the task report was last updated.
                @last_updated_date_time
                ## 
                # The processingStatus property
                @processing_status
                ## 
                # The unique identifier of the associated run.
                @run_id
                ## 
                # The date time that the associated run started. Value is null if the run has not started.
                @started_date_time
                ## 
                # The number of users in the run execution for which the associated task succeeded.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @successful_users_count
                ## 
                # The task property
                @task
                ## 
                # The taskDefinition property
                @task_definition
                ## 
                # The related lifecycle workflow taskProcessingResults.
                @task_processing_results
                ## 
                # The total number of users in the run execution for which the associated task was scheduled to execute.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @total_users_count
                ## 
                # The number of users in the run execution for which the associated task is queued, in progress, or canceled.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @unprocessed_users_count
                ## 
                ## Gets the completedDateTime property value. The date time that the associated run completed. Value is null if the run has not completed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a date_time
                ## 
                def completed_date_time
                    return @completed_date_time
                end
                ## 
                ## Sets the completedDateTime property value. The date time that the associated run completed. Value is null if the run has not completed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the completedDateTime property.
                ## @return a void
                ## 
                def completed_date_time=(value)
                    @completed_date_time = value
                end
                ## 
                ## Instantiates a new taskReport and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a task_report
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TaskReport.new
                end
                ## 
                ## Gets the failedUsersCount property value. The number of users in the run execution for which the associated task failed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a integer
                ## 
                def failed_users_count
                    return @failed_users_count
                end
                ## 
                ## Sets the failedUsersCount property value. The number of users in the run execution for which the associated task failed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the failedUsersCount property.
                ## @return a void
                ## 
                def failed_users_count=(value)
                    @failed_users_count = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                        "failedUsersCount" => lambda {|n| @failed_users_count = n.get_number_value() },
                        "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                        "processingStatus" => lambda {|n| @processing_status = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernance::LifecycleWorkflowProcessingStatus) },
                        "runId" => lambda {|n| @run_id = n.get_string_value() },
                        "startedDateTime" => lambda {|n| @started_date_time = n.get_date_time_value() },
                        "successfulUsersCount" => lambda {|n| @successful_users_count = n.get_number_value() },
                        "task" => lambda {|n| @task = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::Task.create_from_discriminator_value(pn) }) },
                        "taskDefinition" => lambda {|n| @task_definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::TaskDefinition.create_from_discriminator_value(pn) }) },
                        "taskProcessingResults" => lambda {|n| @task_processing_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::TaskProcessingResult.create_from_discriminator_value(pn) }) },
                        "totalUsersCount" => lambda {|n| @total_users_count = n.get_number_value() },
                        "unprocessedUsersCount" => lambda {|n| @unprocessed_users_count = n.get_number_value() },
                    })
                end
                ## 
                ## Gets the lastUpdatedDateTime property value. The date and time that the task report was last updated.
                ## @return a date_time
                ## 
                def last_updated_date_time
                    return @last_updated_date_time
                end
                ## 
                ## Sets the lastUpdatedDateTime property value. The date and time that the task report was last updated.
                ## @param value Value to set for the lastUpdatedDateTime property.
                ## @return a void
                ## 
                def last_updated_date_time=(value)
                    @last_updated_date_time = value
                end
                ## 
                ## Gets the processingStatus property value. The processingStatus property
                ## @return a lifecycle_workflow_processing_status
                ## 
                def processing_status
                    return @processing_status
                end
                ## 
                ## Sets the processingStatus property value. The processingStatus property
                ## @param value Value to set for the processingStatus property.
                ## @return a void
                ## 
                def processing_status=(value)
                    @processing_status = value
                end
                ## 
                ## Gets the runId property value. The unique identifier of the associated run.
                ## @return a string
                ## 
                def run_id
                    return @run_id
                end
                ## 
                ## Sets the runId property value. The unique identifier of the associated run.
                ## @param value Value to set for the runId property.
                ## @return a void
                ## 
                def run_id=(value)
                    @run_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("completedDateTime", @completed_date_time)
                    writer.write_number_value("failedUsersCount", @failed_users_count)
                    writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                    writer.write_enum_value("processingStatus", @processing_status)
                    writer.write_string_value("runId", @run_id)
                    writer.write_date_time_value("startedDateTime", @started_date_time)
                    writer.write_number_value("successfulUsersCount", @successful_users_count)
                    writer.write_object_value("task", @task)
                    writer.write_object_value("taskDefinition", @task_definition)
                    writer.write_collection_of_object_values("taskProcessingResults", @task_processing_results)
                    writer.write_number_value("totalUsersCount", @total_users_count)
                    writer.write_number_value("unprocessedUsersCount", @unprocessed_users_count)
                end
                ## 
                ## Gets the startedDateTime property value. The date time that the associated run started. Value is null if the run has not started.
                ## @return a date_time
                ## 
                def started_date_time
                    return @started_date_time
                end
                ## 
                ## Sets the startedDateTime property value. The date time that the associated run started. Value is null if the run has not started.
                ## @param value Value to set for the startedDateTime property.
                ## @return a void
                ## 
                def started_date_time=(value)
                    @started_date_time = value
                end
                ## 
                ## Gets the successfulUsersCount property value. The number of users in the run execution for which the associated task succeeded.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a integer
                ## 
                def successful_users_count
                    return @successful_users_count
                end
                ## 
                ## Sets the successfulUsersCount property value. The number of users in the run execution for which the associated task succeeded.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the successfulUsersCount property.
                ## @return a void
                ## 
                def successful_users_count=(value)
                    @successful_users_count = value
                end
                ## 
                ## Gets the task property value. The task property
                ## @return a task
                ## 
                def task
                    return @task
                end
                ## 
                ## Sets the task property value. The task property
                ## @param value Value to set for the task property.
                ## @return a void
                ## 
                def task=(value)
                    @task = value
                end
                ## 
                ## Gets the taskDefinition property value. The taskDefinition property
                ## @return a task_definition
                ## 
                def task_definition
                    return @task_definition
                end
                ## 
                ## Sets the taskDefinition property value. The taskDefinition property
                ## @param value Value to set for the taskDefinition property.
                ## @return a void
                ## 
                def task_definition=(value)
                    @task_definition = value
                end
                ## 
                ## Gets the taskProcessingResults property value. The related lifecycle workflow taskProcessingResults.
                ## @return a task_processing_result
                ## 
                def task_processing_results
                    return @task_processing_results
                end
                ## 
                ## Sets the taskProcessingResults property value. The related lifecycle workflow taskProcessingResults.
                ## @param value Value to set for the taskProcessingResults property.
                ## @return a void
                ## 
                def task_processing_results=(value)
                    @task_processing_results = value
                end
                ## 
                ## Gets the totalUsersCount property value. The total number of users in the run execution for which the associated task was scheduled to execute.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a integer
                ## 
                def total_users_count
                    return @total_users_count
                end
                ## 
                ## Sets the totalUsersCount property value. The total number of users in the run execution for which the associated task was scheduled to execute.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the totalUsersCount property.
                ## @return a void
                ## 
                def total_users_count=(value)
                    @total_users_count = value
                end
                ## 
                ## Gets the unprocessedUsersCount property value. The number of users in the run execution for which the associated task is queued, in progress, or canceled.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a integer
                ## 
                def unprocessed_users_count
                    return @unprocessed_users_count
                end
                ## 
                ## Sets the unprocessedUsersCount property value. The number of users in the run execution for which the associated task is queued, in progress, or canceled.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the unprocessedUsersCount property.
                ## @return a void
                ## 
                def unprocessed_users_count=(value)
                    @unprocessed_users_count = value
                end
            end
        end
    end
end
