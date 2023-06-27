require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class LifecycleWorkflowsContainer < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The customTaskExtension instance.
                @custom_task_extensions
                ## 
                # Deleted workflows in your lifecycle workflows instance.
                @deleted_items
                ## 
                # The settings property
                @settings
                ## 
                # The definition of tasks within the lifecycle workflows instance.
                @task_definitions
                ## 
                # The workflow templates in the lifecycle workflow instance.
                @workflow_templates
                ## 
                # The workflows in the lifecycle workflows instance.
                @workflows
                ## 
                ## Instantiates a new LifecycleWorkflowsContainer and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a lifecycle_workflows_container
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LifecycleWorkflowsContainer.new
                end
                ## 
                ## Gets the customTaskExtensions property value. The customTaskExtension instance.
                ## @return a custom_task_extension
                ## 
                def custom_task_extensions
                    return @custom_task_extensions
                end
                ## 
                ## Sets the customTaskExtensions property value. The customTaskExtension instance.
                ## @param value Value to set for the custom_task_extensions property.
                ## @return a void
                ## 
                def custom_task_extensions=(value)
                    @custom_task_extensions = value
                end
                ## 
                ## Gets the deletedItems property value. Deleted workflows in your lifecycle workflows instance.
                ## @return a deleted_item_container
                ## 
                def deleted_items
                    return @deleted_items
                end
                ## 
                ## Sets the deletedItems property value. Deleted workflows in your lifecycle workflows instance.
                ## @param value Value to set for the deleted_items property.
                ## @return a void
                ## 
                def deleted_items=(value)
                    @deleted_items = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "customTaskExtensions" => lambda {|n| @custom_task_extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::CustomTaskExtension.create_from_discriminator_value(pn) }) },
                        "deletedItems" => lambda {|n| @deleted_items = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DeletedItemContainer.create_from_discriminator_value(pn) }) },
                        "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::LifecycleManagementSettings.create_from_discriminator_value(pn) }) },
                        "taskDefinitions" => lambda {|n| @task_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::TaskDefinition.create_from_discriminator_value(pn) }) },
                        "workflowTemplates" => lambda {|n| @workflow_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::WorkflowTemplate.create_from_discriminator_value(pn) }) },
                        "workflows" => lambda {|n| @workflows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::Workflow.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("customTaskExtensions", @custom_task_extensions)
                    writer.write_object_value("deletedItems", @deleted_items)
                    writer.write_object_value("settings", @settings)
                    writer.write_collection_of_object_values("taskDefinitions", @task_definitions)
                    writer.write_collection_of_object_values("workflowTemplates", @workflow_templates)
                    writer.write_collection_of_object_values("workflows", @workflows)
                end
                ## 
                ## Gets the settings property value. The settings property
                ## @return a lifecycle_management_settings
                ## 
                def settings
                    return @settings
                end
                ## 
                ## Sets the settings property value. The settings property
                ## @param value Value to set for the settings property.
                ## @return a void
                ## 
                def settings=(value)
                    @settings = value
                end
                ## 
                ## Gets the taskDefinitions property value. The definition of tasks within the lifecycle workflows instance.
                ## @return a task_definition
                ## 
                def task_definitions
                    return @task_definitions
                end
                ## 
                ## Sets the taskDefinitions property value. The definition of tasks within the lifecycle workflows instance.
                ## @param value Value to set for the task_definitions property.
                ## @return a void
                ## 
                def task_definitions=(value)
                    @task_definitions = value
                end
                ## 
                ## Gets the workflowTemplates property value. The workflow templates in the lifecycle workflow instance.
                ## @return a workflow_template
                ## 
                def workflow_templates
                    return @workflow_templates
                end
                ## 
                ## Sets the workflowTemplates property value. The workflow templates in the lifecycle workflow instance.
                ## @param value Value to set for the workflow_templates property.
                ## @return a void
                ## 
                def workflow_templates=(value)
                    @workflow_templates = value
                end
                ## 
                ## Gets the workflows property value. The workflows in the lifecycle workflows instance.
                ## @return a workflow
                ## 
                def workflows
                    return @workflows
                end
                ## 
                ## Sets the workflows property value. The workflows in the lifecycle workflows instance.
                ## @param value Value to set for the workflows property.
                ## @return a void
                ## 
                def workflows=(value)
                    @workflows = value
                end
            end
        end
    end
end
