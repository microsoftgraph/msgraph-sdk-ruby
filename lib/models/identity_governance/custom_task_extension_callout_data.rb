require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraph
    module Models
        module IdentityGovernance
            class CustomTaskExtensionCalloutData < MicrosoftGraph::Models::CustomExtensionData
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The subject property
                @subject
                ## 
                # The task property
                @task
                ## 
                # The taskProcessingresult property
                @task_processingresult
                ## 
                # The workflow property
                @workflow
                ## 
                ## Instantiates a new customTaskExtensionCalloutData and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.identityGovernance.customTaskExtensionCalloutData"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a custom_task_extension_callout_data
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CustomTaskExtensionCalloutData.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "subject" => lambda {|n| @subject = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                        "task" => lambda {|n| @task = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::Task.create_from_discriminator_value(pn) }) },
                        "taskProcessingresult" => lambda {|n| @task_processingresult = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::TaskProcessingResult.create_from_discriminator_value(pn) }) },
                        "workflow" => lambda {|n| @workflow = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityGovernance::Workflow.create_from_discriminator_value(pn) }) },
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
                    writer.write_object_value("subject", @subject)
                    writer.write_object_value("task", @task)
                    writer.write_object_value("taskProcessingresult", @task_processingresult)
                    writer.write_object_value("workflow", @workflow)
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
                ## 
                ## Gets the taskProcessingresult property value. The taskProcessingresult property
                ## @return a task_processing_result
                ## 
                def task_processingresult
                    return @task_processingresult
                end
                ## 
                ## Sets the taskProcessingresult property value. The taskProcessingresult property
                ## @param value Value to set for the taskProcessingresult property.
                ## @return a void
                ## 
                def task_processingresult=(value)
                    @task_processingresult = value
                end
                ## 
                ## Gets the workflow property value. The workflow property
                ## @return a workflow
                ## 
                def workflow
                    return @workflow
                end
                ## 
                ## Sets the workflow property value. The workflow property
                ## @param value Value to set for the workflow property.
                ## @return a void
                ## 
                def workflow=(value)
                    @workflow = value
                end
            end
        end
    end
end
