require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class Task < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Arguments included within the task.  For guidance to configure this property, see Configure the arguments for built-in Lifecycle Workflow tasks. Required.
                @arguments
                ## 
                # The category property
                @category
                ## 
                # A boolean value that specifies whether, if this task fails, the workflow will stop, and subsequent tasks will not run. Optional.
                @continue_on_error
                ## 
                # A string that describes the purpose of the task for administrative use. Optional.
                @description
                ## 
                # A unique string that identifies the task. Required.Supports $filter(eq, ne) and orderBy.
                @display_name
                ## 
                # An integer that states in what order the task will run in a workflow.Supports $orderby.
                @execution_sequence
                ## 
                # A boolean value that denotes whether the task is set to run or not. Optional.Supports $filter(eq, ne) and orderBy.
                @is_enabled
                ## 
                # A unique template identifier for the task. For more information about the tasks that Lifecycle Workflows currently supports and their unique identifiers, see supported tasks. Required.Supports $filter(eq, ne).
                @task_definition_id
                ## 
                # The result of processing the task.
                @task_processing_results
                ## 
                ## Gets the arguments property value. Arguments included within the task.  For guidance to configure this property, see Configure the arguments for built-in Lifecycle Workflow tasks. Required.
                ## @return a key_value_pair
                ## 
                def arguments
                    return @arguments
                end
                ## 
                ## Sets the arguments property value. Arguments included within the task.  For guidance to configure this property, see Configure the arguments for built-in Lifecycle Workflow tasks. Required.
                ## @param value Value to set for the arguments property.
                ## @return a void
                ## 
                def arguments=(value)
                    @arguments = value
                end
                ## 
                ## Gets the category property value. The category property
                ## @return a lifecycle_task_category
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. The category property
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Instantiates a new task and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the continueOnError property value. A boolean value that specifies whether, if this task fails, the workflow will stop, and subsequent tasks will not run. Optional.
                ## @return a boolean
                ## 
                def continue_on_error
                    return @continue_on_error
                end
                ## 
                ## Sets the continueOnError property value. A boolean value that specifies whether, if this task fails, the workflow will stop, and subsequent tasks will not run. Optional.
                ## @param value Value to set for the continue_on_error property.
                ## @return a void
                ## 
                def continue_on_error=(value)
                    @continue_on_error = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a task
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Task.new
                end
                ## 
                ## Gets the description property value. A string that describes the purpose of the task for administrative use. Optional.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. A string that describes the purpose of the task for administrative use. Optional.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. A unique string that identifies the task. Required.Supports $filter(eq, ne) and orderBy.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. A unique string that identifies the task. Required.Supports $filter(eq, ne) and orderBy.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## Gets the executionSequence property value. An integer that states in what order the task will run in a workflow.Supports $orderby.
                ## @return a integer
                ## 
                def execution_sequence
                    return @execution_sequence
                end
                ## 
                ## Sets the executionSequence property value. An integer that states in what order the task will run in a workflow.Supports $orderby.
                ## @param value Value to set for the execution_sequence property.
                ## @return a void
                ## 
                def execution_sequence=(value)
                    @execution_sequence = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "arguments" => lambda {|n| @arguments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                        "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernance::LifecycleTaskCategory) },
                        "continueOnError" => lambda {|n| @continue_on_error = n.get_boolean_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "executionSequence" => lambda {|n| @execution_sequence = n.get_number_value() },
                        "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                        "taskDefinitionId" => lambda {|n| @task_definition_id = n.get_string_value() },
                        "taskProcessingResults" => lambda {|n| @task_processing_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::TaskProcessingResult.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the isEnabled property value. A boolean value that denotes whether the task is set to run or not. Optional.Supports $filter(eq, ne) and orderBy.
                ## @return a boolean
                ## 
                def is_enabled
                    return @is_enabled
                end
                ## 
                ## Sets the isEnabled property value. A boolean value that denotes whether the task is set to run or not. Optional.Supports $filter(eq, ne) and orderBy.
                ## @param value Value to set for the is_enabled property.
                ## @return a void
                ## 
                def is_enabled=(value)
                    @is_enabled = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("arguments", @arguments)
                    writer.write_enum_value("category", @category)
                    writer.write_boolean_value("continueOnError", @continue_on_error)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_number_value("executionSequence", @execution_sequence)
                    writer.write_boolean_value("isEnabled", @is_enabled)
                    writer.write_string_value("taskDefinitionId", @task_definition_id)
                    writer.write_collection_of_object_values("taskProcessingResults", @task_processing_results)
                end
                ## 
                ## Gets the taskDefinitionId property value. A unique template identifier for the task. For more information about the tasks that Lifecycle Workflows currently supports and their unique identifiers, see supported tasks. Required.Supports $filter(eq, ne).
                ## @return a string
                ## 
                def task_definition_id
                    return @task_definition_id
                end
                ## 
                ## Sets the taskDefinitionId property value. A unique template identifier for the task. For more information about the tasks that Lifecycle Workflows currently supports and their unique identifiers, see supported tasks. Required.Supports $filter(eq, ne).
                ## @param value Value to set for the task_definition_id property.
                ## @return a void
                ## 
                def task_definition_id=(value)
                    @task_definition_id = value
                end
                ## 
                ## Gets the taskProcessingResults property value. The result of processing the task.
                ## @return a task_processing_result
                ## 
                def task_processing_results
                    return @task_processing_results
                end
                ## 
                ## Sets the taskProcessingResults property value. The result of processing the task.
                ## @param value Value to set for the task_processing_results property.
                ## @return a void
                ## 
                def task_processing_results=(value)
                    @task_processing_results = value
                end
            end
        end
    end
end
