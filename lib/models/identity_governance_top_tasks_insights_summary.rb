require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceTopTasksInsightsSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of failed runs of the task.
            @failed_tasks
            ## 
            # Count of failed users who were processed by the task.
            @failed_users
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Count of successful runs of the task.
            @successful_tasks
            ## 
            # Count of successful users processed by the task.
            @successful_users
            ## 
            # The name of the task.
            @task_definition_display_name
            ## 
            # The task ID.
            @task_definition_id
            ## 
            # Count of total runs of the task.
            @total_tasks
            ## 
            # Count of total users processed by the task.
            @total_users
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new IdentityGovernanceTopTasksInsightsSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_top_tasks_insights_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceTopTasksInsightsSummary.new
            end
            ## 
            ## Gets the failedTasks property value. Count of failed runs of the task.
            ## @return a integer
            ## 
            def failed_tasks
                return @failed_tasks
            end
            ## 
            ## Sets the failedTasks property value. Count of failed runs of the task.
            ## @param value Value to set for the failedTasks property.
            ## @return a void
            ## 
            def failed_tasks=(value)
                @failed_tasks = value
            end
            ## 
            ## Gets the failedUsers property value. Count of failed users who were processed by the task.
            ## @return a integer
            ## 
            def failed_users
                return @failed_users
            end
            ## 
            ## Sets the failedUsers property value. Count of failed users who were processed by the task.
            ## @param value Value to set for the failedUsers property.
            ## @return a void
            ## 
            def failed_users=(value)
                @failed_users = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedTasks" => lambda {|n| @failed_tasks = n.get_number_value() },
                    "failedUsers" => lambda {|n| @failed_users = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulTasks" => lambda {|n| @successful_tasks = n.get_number_value() },
                    "successfulUsers" => lambda {|n| @successful_users = n.get_number_value() },
                    "taskDefinitionDisplayName" => lambda {|n| @task_definition_display_name = n.get_string_value() },
                    "taskDefinitionId" => lambda {|n| @task_definition_id = n.get_string_value() },
                    "totalTasks" => lambda {|n| @total_tasks = n.get_number_value() },
                    "totalUsers" => lambda {|n| @total_users = n.get_number_value() },
                }
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("failedTasks", @failed_tasks)
                writer.write_number_value("failedUsers", @failed_users)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("successfulTasks", @successful_tasks)
                writer.write_number_value("successfulUsers", @successful_users)
                writer.write_string_value("taskDefinitionDisplayName", @task_definition_display_name)
                writer.write_string_value("taskDefinitionId", @task_definition_id)
                writer.write_number_value("totalTasks", @total_tasks)
                writer.write_number_value("totalUsers", @total_users)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulTasks property value. Count of successful runs of the task.
            ## @return a integer
            ## 
            def successful_tasks
                return @successful_tasks
            end
            ## 
            ## Sets the successfulTasks property value. Count of successful runs of the task.
            ## @param value Value to set for the successfulTasks property.
            ## @return a void
            ## 
            def successful_tasks=(value)
                @successful_tasks = value
            end
            ## 
            ## Gets the successfulUsers property value. Count of successful users processed by the task.
            ## @return a integer
            ## 
            def successful_users
                return @successful_users
            end
            ## 
            ## Sets the successfulUsers property value. Count of successful users processed by the task.
            ## @param value Value to set for the successfulUsers property.
            ## @return a void
            ## 
            def successful_users=(value)
                @successful_users = value
            end
            ## 
            ## Gets the taskDefinitionDisplayName property value. The name of the task.
            ## @return a string
            ## 
            def task_definition_display_name
                return @task_definition_display_name
            end
            ## 
            ## Sets the taskDefinitionDisplayName property value. The name of the task.
            ## @param value Value to set for the taskDefinitionDisplayName property.
            ## @return a void
            ## 
            def task_definition_display_name=(value)
                @task_definition_display_name = value
            end
            ## 
            ## Gets the taskDefinitionId property value. The task ID.
            ## @return a string
            ## 
            def task_definition_id
                return @task_definition_id
            end
            ## 
            ## Sets the taskDefinitionId property value. The task ID.
            ## @param value Value to set for the taskDefinitionId property.
            ## @return a void
            ## 
            def task_definition_id=(value)
                @task_definition_id = value
            end
            ## 
            ## Gets the totalTasks property value. Count of total runs of the task.
            ## @return a integer
            ## 
            def total_tasks
                return @total_tasks
            end
            ## 
            ## Sets the totalTasks property value. Count of total runs of the task.
            ## @param value Value to set for the totalTasks property.
            ## @return a void
            ## 
            def total_tasks=(value)
                @total_tasks = value
            end
            ## 
            ## Gets the totalUsers property value. Count of total users processed by the task.
            ## @return a integer
            ## 
            def total_users
                return @total_users
            end
            ## 
            ## Sets the totalUsers property value. Count of total users processed by the task.
            ## @param value Value to set for the totalUsers property.
            ## @return a void
            ## 
            def total_users=(value)
                @total_users = value
            end
        end
    end
end
