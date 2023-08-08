require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class WorkflowTemplate < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The category property
                @category
                ## 
                # The description of the workflowTemplate.
                @description
                ## 
                # The display name of the workflowTemplate.Supports $filter(eq, ne) and $orderby.
                @display_name
                ## 
                # Conditions describing when to execute the workflow and the criteria to identify in-scope subject set.
                @execution_conditions
                ## 
                # Represents the configured tasks to execute and their execution sequence within a workflow. This relationship is expanded by default.
                @tasks
                ## 
                ## Gets the category property value. The category property
                ## @return a lifecycle_workflow_category
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
                ## Instantiates a new workflowTemplate and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a workflow_template
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WorkflowTemplate.new
                end
                ## 
                ## Gets the description property value. The description of the workflowTemplate.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description of the workflowTemplate.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the displayName property value. The display name of the workflowTemplate.Supports $filter(eq, ne) and $orderby.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name of the workflowTemplate.Supports $filter(eq, ne) and $orderby.
                ## @param value Value to set for the displayName property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## Gets the executionConditions property value. Conditions describing when to execute the workflow and the criteria to identify in-scope subject set.
                ## @return a workflow_execution_conditions
                ## 
                def execution_conditions
                    return @execution_conditions
                end
                ## 
                ## Sets the executionConditions property value. Conditions describing when to execute the workflow and the criteria to identify in-scope subject set.
                ## @param value Value to set for the executionConditions property.
                ## @return a void
                ## 
                def execution_conditions=(value)
                    @execution_conditions = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernance::LifecycleWorkflowCategory) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "executionConditions" => lambda {|n| @execution_conditions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::WorkflowExecutionConditions.create_from_discriminator_value(pn) }) },
                        "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::Task.create_from_discriminator_value(pn) }) },
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
                    writer.write_enum_value("category", @category)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_object_value("executionConditions", @execution_conditions)
                    writer.write_collection_of_object_values("tasks", @tasks)
                end
                ## 
                ## Gets the tasks property value. Represents the configured tasks to execute and their execution sequence within a workflow. This relationship is expanded by default.
                ## @return a task
                ## 
                def tasks
                    return @tasks
                end
                ## 
                ## Sets the tasks property value. Represents the configured tasks to execute and their execution sequence within a workflow. This relationship is expanded by default.
                ## @param value Value to set for the tasks property.
                ## @return a void
                ## 
                def tasks=(value)
                    @tasks = value
                end
            end
        end
    end
end
