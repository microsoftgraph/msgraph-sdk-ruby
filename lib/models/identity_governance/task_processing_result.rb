require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class TaskProcessingResult < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The date time when taskProcessingResult execution ended. Value is null if task execution is still in progress.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @completed_date_time
                ## 
                # The date time when the taskProcessingResult was created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @created_date_time
                ## 
                # Describes why the taskProcessingResult has failed.
                @failure_reason
                ## 
                # The processingStatus property
                @processing_status
                ## 
                # The date time when taskProcessingResult execution started. Value is null if task execution has not yet started.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                @started_date_time
                ## 
                # The subject property
                @subject
                ## 
                # The task property
                @task
                ## 
                ## Gets the completedDateTime property value. The date time when taskProcessingResult execution ended. Value is null if task execution is still in progress.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a date_time
                ## 
                def completed_date_time
                    return @completed_date_time
                end
                ## 
                ## Sets the completedDateTime property value. The date time when taskProcessingResult execution ended. Value is null if task execution is still in progress.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the completed_date_time property.
                ## @return a void
                ## 
                def completed_date_time=(value)
                    @completed_date_time = value
                end
                ## 
                ## Instantiates a new taskProcessingResult and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdDateTime property value. The date time when the taskProcessingResult was created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The date time when the taskProcessingResult was created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a task_processing_result
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TaskProcessingResult.new
                end
                ## 
                ## Gets the failureReason property value. Describes why the taskProcessingResult has failed.
                ## @return a string
                ## 
                def failure_reason
                    return @failure_reason
                end
                ## 
                ## Sets the failureReason property value. Describes why the taskProcessingResult has failed.
                ## @param value Value to set for the failure_reason property.
                ## @return a void
                ## 
                def failure_reason=(value)
                    @failure_reason = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "failureReason" => lambda {|n| @failure_reason = n.get_string_value() },
                        "processingStatus" => lambda {|n| @processing_status = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernance::LifecycleWorkflowProcessingStatus) },
                        "startedDateTime" => lambda {|n| @started_date_time = n.get_date_time_value() },
                        "subject" => lambda {|n| @subject = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                        "task" => lambda {|n| @task = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::Task.create_from_discriminator_value(pn) }) },
                    })
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
                ## @param value Value to set for the processing_status property.
                ## @return a void
                ## 
                def processing_status=(value)
                    @processing_status = value
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
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("failureReason", @failure_reason)
                    writer.write_enum_value("processingStatus", @processing_status)
                    writer.write_date_time_value("startedDateTime", @started_date_time)
                    writer.write_object_value("subject", @subject)
                    writer.write_object_value("task", @task)
                end
                ## 
                ## Gets the startedDateTime property value. The date time when taskProcessingResult execution started. Value is null if task execution has not yet started.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @return a date_time
                ## 
                def started_date_time
                    return @started_date_time
                end
                ## 
                ## Sets the startedDateTime property value. The date time when taskProcessingResult execution started. Value is null if task execution has not yet started.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
                ## @param value Value to set for the started_date_time property.
                ## @return a void
                ## 
                def started_date_time=(value)
                    @started_date_time = value
                end
                ## 
                ## Gets the subject property value. The subject property
                ## @return a user
                ## 
                def subject
                    return @subject
                end
                ## 
                ## Sets the subject property value. The subject property
                ## @param value Value to set for the subject property.
                ## @return a void
                ## 
                def subject=(value)
                    @subject = value
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
            end
        end
    end
end
