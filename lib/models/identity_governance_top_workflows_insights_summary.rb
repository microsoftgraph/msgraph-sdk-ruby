require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceTopWorkflowsInsightsSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of failed runs for workflow.
            @failed_runs
            ## 
            # Count of failed users who were processed.
            @failed_users
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Count of successful runs of the workflow.
            @successful_runs
            ## 
            # Count of successful users processed by the workflow.
            @successful_users
            ## 
            # Count of total runs of workflow.
            @total_runs
            ## 
            # Total number of users processed by the workflow.
            @total_users
            ## 
            # The workflowCategory property
            @workflow_category
            ## 
            # The name of the workflow.
            @workflow_display_name
            ## 
            # The workflow ID.
            @workflow_id
            ## 
            # The version of the workflow that was a top workflow ran.
            @workflow_version
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
            ## Instantiates a new IdentityGovernanceTopWorkflowsInsightsSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_top_workflows_insights_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceTopWorkflowsInsightsSummary.new
            end
            ## 
            ## Gets the failedRuns property value. Count of failed runs for workflow.
            ## @return a integer
            ## 
            def failed_runs
                return @failed_runs
            end
            ## 
            ## Sets the failedRuns property value. Count of failed runs for workflow.
            ## @param value Value to set for the failedRuns property.
            ## @return a void
            ## 
            def failed_runs=(value)
                @failed_runs = value
            end
            ## 
            ## Gets the failedUsers property value. Count of failed users who were processed.
            ## @return a integer
            ## 
            def failed_users
                return @failed_users
            end
            ## 
            ## Sets the failedUsers property value. Count of failed users who were processed.
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
                    "failedRuns" => lambda {|n| @failed_runs = n.get_number_value() },
                    "failedUsers" => lambda {|n| @failed_users = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulRuns" => lambda {|n| @successful_runs = n.get_number_value() },
                    "successfulUsers" => lambda {|n| @successful_users = n.get_number_value() },
                    "totalRuns" => lambda {|n| @total_runs = n.get_number_value() },
                    "totalUsers" => lambda {|n| @total_users = n.get_number_value() },
                    "workflowCategory" => lambda {|n| @workflow_category = n.get_enum_value(MicrosoftGraph::Models::IdentityGovernanceLifecycleWorkflowCategory) },
                    "workflowDisplayName" => lambda {|n| @workflow_display_name = n.get_string_value() },
                    "workflowId" => lambda {|n| @workflow_id = n.get_string_value() },
                    "workflowVersion" => lambda {|n| @workflow_version = n.get_number_value() },
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
                writer.write_number_value("failedRuns", @failed_runs)
                writer.write_number_value("failedUsers", @failed_users)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("successfulRuns", @successful_runs)
                writer.write_number_value("successfulUsers", @successful_users)
                writer.write_number_value("totalRuns", @total_runs)
                writer.write_number_value("totalUsers", @total_users)
                writer.write_enum_value("workflowCategory", @workflow_category)
                writer.write_string_value("workflowDisplayName", @workflow_display_name)
                writer.write_string_value("workflowId", @workflow_id)
                writer.write_number_value("workflowVersion", @workflow_version)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulRuns property value. Count of successful runs of the workflow.
            ## @return a integer
            ## 
            def successful_runs
                return @successful_runs
            end
            ## 
            ## Sets the successfulRuns property value. Count of successful runs of the workflow.
            ## @param value Value to set for the successfulRuns property.
            ## @return a void
            ## 
            def successful_runs=(value)
                @successful_runs = value
            end
            ## 
            ## Gets the successfulUsers property value. Count of successful users processed by the workflow.
            ## @return a integer
            ## 
            def successful_users
                return @successful_users
            end
            ## 
            ## Sets the successfulUsers property value. Count of successful users processed by the workflow.
            ## @param value Value to set for the successfulUsers property.
            ## @return a void
            ## 
            def successful_users=(value)
                @successful_users = value
            end
            ## 
            ## Gets the totalRuns property value. Count of total runs of workflow.
            ## @return a integer
            ## 
            def total_runs
                return @total_runs
            end
            ## 
            ## Sets the totalRuns property value. Count of total runs of workflow.
            ## @param value Value to set for the totalRuns property.
            ## @return a void
            ## 
            def total_runs=(value)
                @total_runs = value
            end
            ## 
            ## Gets the totalUsers property value. Total number of users processed by the workflow.
            ## @return a integer
            ## 
            def total_users
                return @total_users
            end
            ## 
            ## Sets the totalUsers property value. Total number of users processed by the workflow.
            ## @param value Value to set for the totalUsers property.
            ## @return a void
            ## 
            def total_users=(value)
                @total_users = value
            end
            ## 
            ## Gets the workflowCategory property value. The workflowCategory property
            ## @return a identity_governance_lifecycle_workflow_category
            ## 
            def workflow_category
                return @workflow_category
            end
            ## 
            ## Sets the workflowCategory property value. The workflowCategory property
            ## @param value Value to set for the workflowCategory property.
            ## @return a void
            ## 
            def workflow_category=(value)
                @workflow_category = value
            end
            ## 
            ## Gets the workflowDisplayName property value. The name of the workflow.
            ## @return a string
            ## 
            def workflow_display_name
                return @workflow_display_name
            end
            ## 
            ## Sets the workflowDisplayName property value. The name of the workflow.
            ## @param value Value to set for the workflowDisplayName property.
            ## @return a void
            ## 
            def workflow_display_name=(value)
                @workflow_display_name = value
            end
            ## 
            ## Gets the workflowId property value. The workflow ID.
            ## @return a string
            ## 
            def workflow_id
                return @workflow_id
            end
            ## 
            ## Sets the workflowId property value. The workflow ID.
            ## @param value Value to set for the workflowId property.
            ## @return a void
            ## 
            def workflow_id=(value)
                @workflow_id = value
            end
            ## 
            ## Gets the workflowVersion property value. The version of the workflow that was a top workflow ran.
            ## @return a integer
            ## 
            def workflow_version
                return @workflow_version
            end
            ## 
            ## Sets the workflowVersion property value. The version of the workflow that was a top workflow ran.
            ## @param value Value to set for the workflowVersion property.
            ## @return a void
            ## 
            def workflow_version=(value)
                @workflow_version = value
            end
        end
    end
end
