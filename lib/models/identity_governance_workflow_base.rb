require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './identity_governance/identity_governance'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceWorkflowBase
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The category property
            @category
            ## 
            # The user who created the workflow.
            @created_by
            ## 
            # When a workflow was created.
            @created_date_time
            ## 
            # A string that describes the purpose of the workflow.
            @description
            ## 
            # A string to identify the workflow.
            @display_name
            ## 
            # Defines when and for who the workflow will run.
            @execution_conditions
            ## 
            # Whether the workflow is enabled or disabled. If this setting is true, the workflow can be run on demand or on schedule when isSchedulingEnabled is true.
            @is_enabled
            ## 
            # If true, the Lifecycle Workflow engine executes the workflow based on the schedule defined by tenant settings. Cannot be true for a disabled workflow (where isEnabled is false).
            @is_scheduling_enabled
            ## 
            # The unique identifier of the AAD identity that last modified the workflow.
            @last_modified_by
            ## 
            # When the workflow was last modified.
            @last_modified_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The tasks in the workflow.
            @tasks
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a identity_governance_lifecycle_workflow_category
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
            ## Instantiates a new workflowBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdBy property value. The user who created the workflow.
            ## @return a user
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The user who created the workflow.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. When a workflow was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. When a workflow was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_workflow_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.identityGovernance.workflow"
                            return IdentityGovernanceWorkflow.new
                        when "#microsoft.graph.identityGovernance.workflowVersion"
                            return IdentityGovernanceWorkflowVersion.new
                    end
                end
                return IdentityGovernanceWorkflowBase.new
            end
            ## 
            ## Gets the description property value. A string that describes the purpose of the workflow.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A string that describes the purpose of the workflow.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. A string to identify the workflow.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. A string to identify the workflow.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the executionConditions property value. Defines when and for who the workflow will run.
            ## @return a identity_governance_workflow_execution_conditions
            ## 
            def execution_conditions
                return @execution_conditions
            end
            ## 
            ## Sets the executionConditions property value. Defines when and for who the workflow will run.
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
                return {
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernanceLifecycleWorkflowCategory) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "executionConditions" => lambda {|n| @execution_conditions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceWorkflowExecutionConditions.create_from_discriminator_value(pn) }) },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "isSchedulingEnabled" => lambda {|n| @is_scheduling_enabled = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityGovernanceTask.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isEnabled property value. Whether the workflow is enabled or disabled. If this setting is true, the workflow can be run on demand or on schedule when isSchedulingEnabled is true.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Whether the workflow is enabled or disabled. If this setting is true, the workflow can be run on demand or on schedule when isSchedulingEnabled is true.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the isSchedulingEnabled property value. If true, the Lifecycle Workflow engine executes the workflow based on the schedule defined by tenant settings. Cannot be true for a disabled workflow (where isEnabled is false).
            ## @return a boolean
            ## 
            def is_scheduling_enabled
                return @is_scheduling_enabled
            end
            ## 
            ## Sets the isSchedulingEnabled property value. If true, the Lifecycle Workflow engine executes the workflow based on the schedule defined by tenant settings. Cannot be true for a disabled workflow (where isEnabled is false).
            ## @param value Value to set for the isSchedulingEnabled property.
            ## @return a void
            ## 
            def is_scheduling_enabled=(value)
                @is_scheduling_enabled = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The unique identifier of the AAD identity that last modified the workflow.
            ## @return a user
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The unique identifier of the AAD identity that last modified the workflow.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. When the workflow was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. When the workflow was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
                writer.write_enum_value("category", @category)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("executionConditions", @execution_conditions)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_boolean_value("isSchedulingEnabled", @is_scheduling_enabled)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("tasks", @tasks)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tasks property value. The tasks in the workflow.
            ## @return a identity_governance_task
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. The tasks in the workflow.
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
        end
    end
end
