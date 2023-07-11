require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The code property
            @code
            ## 
            # Number of consecutive times this job failed.
            @count_successive_complete_failures
            ## 
            # true if the job's escrows (object-level errors) were pruned during initial synchronization. Escrows can be pruned if during the initial synchronization, you reach the threshold of errors that would normally put the job in quarantine. Instead of going into quarantine, the synchronization process clears the job's errors and continues until the initial synchronization is completed. When the initial synchronization is completed, the job will pause and wait for the customer to clean up the errors.
            @escrows_pruned
            ## 
            # Details of the last execution of the job.
            @last_execution
            ## 
            # Details of the last execution of this job, which didn't have any errors.
            @last_successful_execution
            ## 
            # Details of the last execution of the job, which exported objects into the target directory.
            @last_successful_execution_with_exports
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Details of the progress of a job toward completion.
            @progress
            ## 
            # If job is in quarantine, quarantine details.
            @quarantine
            ## 
            # The time when steady state (no more changes to the process) was first achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @steady_state_first_achieved_time
            ## 
            # The time when steady state (no more changes to the process) was last achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @steady_state_last_achieved_time
            ## 
            # Count of synchronized objects, listed by object type.
            @synchronized_entry_count_by_type
            ## 
            # In the event of an error, the URL with the troubleshooting steps for the issue.
            @troubleshooting_url
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the code property value. The code property
            ## @return a synchronization_status_code
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The code property
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new synchronizationStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countSuccessiveCompleteFailures property value. Number of consecutive times this job failed.
            ## @return a int64
            ## 
            def count_successive_complete_failures
                return @count_successive_complete_failures
            end
            ## 
            ## Sets the countSuccessiveCompleteFailures property value. Number of consecutive times this job failed.
            ## @param value Value to set for the count_successive_complete_failures property.
            ## @return a void
            ## 
            def count_successive_complete_failures=(value)
                @count_successive_complete_failures = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationStatus.new
            end
            ## 
            ## Gets the escrowsPruned property value. true if the job's escrows (object-level errors) were pruned during initial synchronization. Escrows can be pruned if during the initial synchronization, you reach the threshold of errors that would normally put the job in quarantine. Instead of going into quarantine, the synchronization process clears the job's errors and continues until the initial synchronization is completed. When the initial synchronization is completed, the job will pause and wait for the customer to clean up the errors.
            ## @return a boolean
            ## 
            def escrows_pruned
                return @escrows_pruned
            end
            ## 
            ## Sets the escrowsPruned property value. true if the job's escrows (object-level errors) were pruned during initial synchronization. Escrows can be pruned if during the initial synchronization, you reach the threshold of errors that would normally put the job in quarantine. Instead of going into quarantine, the synchronization process clears the job's errors and continues until the initial synchronization is completed. When the initial synchronization is completed, the job will pause and wait for the customer to clean up the errors.
            ## @param value Value to set for the escrows_pruned property.
            ## @return a void
            ## 
            def escrows_pruned=(value)
                @escrows_pruned = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "code" => lambda {|n| @code = n.get_enum_value(MicrosoftGraph::Models::SynchronizationStatusCode) },
                    "countSuccessiveCompleteFailures" => lambda {|n| @count_successive_complete_failures = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "escrowsPruned" => lambda {|n| @escrows_pruned = n.get_boolean_value() },
                    "lastExecution" => lambda {|n| @last_execution = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationTaskExecution.create_from_discriminator_value(pn) }) },
                    "lastSuccessfulExecution" => lambda {|n| @last_successful_execution = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationTaskExecution.create_from_discriminator_value(pn) }) },
                    "lastSuccessfulExecutionWithExports" => lambda {|n| @last_successful_execution_with_exports = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationTaskExecution.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "progress" => lambda {|n| @progress = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationProgress.create_from_discriminator_value(pn) }) },
                    "quarantine" => lambda {|n| @quarantine = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationQuarantine.create_from_discriminator_value(pn) }) },
                    "steadyStateFirstAchievedTime" => lambda {|n| @steady_state_first_achieved_time = n.get_date_time_value() },
                    "steadyStateLastAchievedTime" => lambda {|n| @steady_state_last_achieved_time = n.get_date_time_value() },
                    "synchronizedEntryCountByType" => lambda {|n| @synchronized_entry_count_by_type = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::StringKeyLongValuePair.create_from_discriminator_value(pn) }) },
                    "troubleshootingUrl" => lambda {|n| @troubleshooting_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastExecution property value. Details of the last execution of the job.
            ## @return a synchronization_task_execution
            ## 
            def last_execution
                return @last_execution
            end
            ## 
            ## Sets the lastExecution property value. Details of the last execution of the job.
            ## @param value Value to set for the last_execution property.
            ## @return a void
            ## 
            def last_execution=(value)
                @last_execution = value
            end
            ## 
            ## Gets the lastSuccessfulExecution property value. Details of the last execution of this job, which didn't have any errors.
            ## @return a synchronization_task_execution
            ## 
            def last_successful_execution
                return @last_successful_execution
            end
            ## 
            ## Sets the lastSuccessfulExecution property value. Details of the last execution of this job, which didn't have any errors.
            ## @param value Value to set for the last_successful_execution property.
            ## @return a void
            ## 
            def last_successful_execution=(value)
                @last_successful_execution = value
            end
            ## 
            ## Gets the lastSuccessfulExecutionWithExports property value. Details of the last execution of the job, which exported objects into the target directory.
            ## @return a synchronization_task_execution
            ## 
            def last_successful_execution_with_exports
                return @last_successful_execution_with_exports
            end
            ## 
            ## Sets the lastSuccessfulExecutionWithExports property value. Details of the last execution of the job, which exported objects into the target directory.
            ## @param value Value to set for the last_successful_execution_with_exports property.
            ## @return a void
            ## 
            def last_successful_execution_with_exports=(value)
                @last_successful_execution_with_exports = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the progress property value. Details of the progress of a job toward completion.
            ## @return a synchronization_progress
            ## 
            def progress
                return @progress
            end
            ## 
            ## Sets the progress property value. Details of the progress of a job toward completion.
            ## @param value Value to set for the progress property.
            ## @return a void
            ## 
            def progress=(value)
                @progress = value
            end
            ## 
            ## Gets the quarantine property value. If job is in quarantine, quarantine details.
            ## @return a synchronization_quarantine
            ## 
            def quarantine
                return @quarantine
            end
            ## 
            ## Sets the quarantine property value. If job is in quarantine, quarantine details.
            ## @param value Value to set for the quarantine property.
            ## @return a void
            ## 
            def quarantine=(value)
                @quarantine = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("code", @code)
                writer.write_object_value("countSuccessiveCompleteFailures", @count_successive_complete_failures)
                writer.write_boolean_value("escrowsPruned", @escrows_pruned)
                writer.write_object_value("lastExecution", @last_execution)
                writer.write_object_value("lastSuccessfulExecution", @last_successful_execution)
                writer.write_object_value("lastSuccessfulExecutionWithExports", @last_successful_execution_with_exports)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("progress", @progress)
                writer.write_object_value("quarantine", @quarantine)
                writer.write_date_time_value("steadyStateFirstAchievedTime", @steady_state_first_achieved_time)
                writer.write_date_time_value("steadyStateLastAchievedTime", @steady_state_last_achieved_time)
                writer.write_collection_of_object_values("synchronizedEntryCountByType", @synchronized_entry_count_by_type)
                writer.write_string_value("troubleshootingUrl", @troubleshooting_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the steadyStateFirstAchievedTime property value. The time when steady state (no more changes to the process) was first achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def steady_state_first_achieved_time
                return @steady_state_first_achieved_time
            end
            ## 
            ## Sets the steadyStateFirstAchievedTime property value. The time when steady state (no more changes to the process) was first achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the steady_state_first_achieved_time property.
            ## @return a void
            ## 
            def steady_state_first_achieved_time=(value)
                @steady_state_first_achieved_time = value
            end
            ## 
            ## Gets the steadyStateLastAchievedTime property value. The time when steady state (no more changes to the process) was last achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def steady_state_last_achieved_time
                return @steady_state_last_achieved_time
            end
            ## 
            ## Sets the steadyStateLastAchievedTime property value. The time when steady state (no more changes to the process) was last achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the steady_state_last_achieved_time property.
            ## @return a void
            ## 
            def steady_state_last_achieved_time=(value)
                @steady_state_last_achieved_time = value
            end
            ## 
            ## Gets the synchronizedEntryCountByType property value. Count of synchronized objects, listed by object type.
            ## @return a string_key_long_value_pair
            ## 
            def synchronized_entry_count_by_type
                return @synchronized_entry_count_by_type
            end
            ## 
            ## Sets the synchronizedEntryCountByType property value. Count of synchronized objects, listed by object type.
            ## @param value Value to set for the synchronized_entry_count_by_type property.
            ## @return a void
            ## 
            def synchronized_entry_count_by_type=(value)
                @synchronized_entry_count_by_type = value
            end
            ## 
            ## Gets the troubleshootingUrl property value. In the event of an error, the URL with the troubleshooting steps for the issue.
            ## @return a string
            ## 
            def troubleshooting_url
                return @troubleshooting_url
            end
            ## 
            ## Sets the troubleshootingUrl property value. In the event of an error, the URL with the troubleshooting steps for the issue.
            ## @param value Value to set for the troubleshooting_url property.
            ## @return a void
            ## 
            def troubleshooting_url=(value)
                @troubleshooting_url = value
            end
        end
    end
end
