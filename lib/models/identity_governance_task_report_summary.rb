require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './identity_governance/identity_governance'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceTaskReportSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of failed tasks in a report.
            @failed_tasks
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The total number of successful tasks in a report.
            @successful_tasks
            ## 
            # The total number of tasks in a report.
            @total_tasks
            ## 
            # The number of unprocessed tasks in a report.
            @unprocessed_tasks
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
            ## Instantiates a new taskReportSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_task_report_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceTaskReportSummary.new
            end
            ## 
            ## Gets the failedTasks property value. The number of failed tasks in a report.
            ## @return a integer
            ## 
            def failed_tasks
                return @failed_tasks
            end
            ## 
            ## Sets the failedTasks property value. The number of failed tasks in a report.
            ## @param value Value to set for the failedTasks property.
            ## @return a void
            ## 
            def failed_tasks=(value)
                @failed_tasks = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedTasks" => lambda {|n| @failed_tasks = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulTasks" => lambda {|n| @successful_tasks = n.get_number_value() },
                    "totalTasks" => lambda {|n| @total_tasks = n.get_number_value() },
                    "unprocessedTasks" => lambda {|n| @unprocessed_tasks = n.get_number_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("successfulTasks", @successful_tasks)
                writer.write_number_value("totalTasks", @total_tasks)
                writer.write_number_value("unprocessedTasks", @unprocessed_tasks)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulTasks property value. The total number of successful tasks in a report.
            ## @return a integer
            ## 
            def successful_tasks
                return @successful_tasks
            end
            ## 
            ## Sets the successfulTasks property value. The total number of successful tasks in a report.
            ## @param value Value to set for the successfulTasks property.
            ## @return a void
            ## 
            def successful_tasks=(value)
                @successful_tasks = value
            end
            ## 
            ## Gets the totalTasks property value. The total number of tasks in a report.
            ## @return a integer
            ## 
            def total_tasks
                return @total_tasks
            end
            ## 
            ## Sets the totalTasks property value. The total number of tasks in a report.
            ## @param value Value to set for the totalTasks property.
            ## @return a void
            ## 
            def total_tasks=(value)
                @total_tasks = value
            end
            ## 
            ## Gets the unprocessedTasks property value. The number of unprocessed tasks in a report.
            ## @return a integer
            ## 
            def unprocessed_tasks
                return @unprocessed_tasks
            end
            ## 
            ## Sets the unprocessedTasks property value. The number of unprocessed tasks in a report.
            ## @param value Value to set for the unprocessedTasks property.
            ## @return a void
            ## 
            def unprocessed_tasks=(value)
                @unprocessed_tasks = value
            end
        end
    end
end
