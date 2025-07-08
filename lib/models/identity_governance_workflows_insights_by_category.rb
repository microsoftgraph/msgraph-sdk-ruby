require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceWorkflowsInsightsByCategory
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Failed 'Joiner' workflows processed in a tenant.
            @failed_joiner_runs
            ## 
            # Failed 'Leaver' workflows processed in a tenant.
            @failed_leaver_runs
            ## 
            # Failed 'Mover' workflows processed in a tenant.
            @failed_mover_runs
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Successful 'Joiner' workflows processed in a tenant.
            @successful_joiner_runs
            ## 
            # Successful 'Leaver' workflows processed in a tenant.
            @successful_leaver_runs
            ## 
            # Successful 'Mover' workflows processed in a tenant.
            @successful_mover_runs
            ## 
            # Total 'Joiner' workflows processed in a tenant.
            @total_joiner_runs
            ## 
            # Total 'Leaver' workflows processed in a tenant.
            @total_leaver_runs
            ## 
            # Total 'Mover' workflows processed in a tenant.
            @total_mover_runs
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
            ## Instantiates a new IdentityGovernanceWorkflowsInsightsByCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_workflows_insights_by_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceWorkflowsInsightsByCategory.new
            end
            ## 
            ## Gets the failedJoinerRuns property value. Failed 'Joiner' workflows processed in a tenant.
            ## @return a integer
            ## 
            def failed_joiner_runs
                return @failed_joiner_runs
            end
            ## 
            ## Sets the failedJoinerRuns property value. Failed 'Joiner' workflows processed in a tenant.
            ## @param value Value to set for the failedJoinerRuns property.
            ## @return a void
            ## 
            def failed_joiner_runs=(value)
                @failed_joiner_runs = value
            end
            ## 
            ## Gets the failedLeaverRuns property value. Failed 'Leaver' workflows processed in a tenant.
            ## @return a integer
            ## 
            def failed_leaver_runs
                return @failed_leaver_runs
            end
            ## 
            ## Sets the failedLeaverRuns property value. Failed 'Leaver' workflows processed in a tenant.
            ## @param value Value to set for the failedLeaverRuns property.
            ## @return a void
            ## 
            def failed_leaver_runs=(value)
                @failed_leaver_runs = value
            end
            ## 
            ## Gets the failedMoverRuns property value. Failed 'Mover' workflows processed in a tenant.
            ## @return a integer
            ## 
            def failed_mover_runs
                return @failed_mover_runs
            end
            ## 
            ## Sets the failedMoverRuns property value. Failed 'Mover' workflows processed in a tenant.
            ## @param value Value to set for the failedMoverRuns property.
            ## @return a void
            ## 
            def failed_mover_runs=(value)
                @failed_mover_runs = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedJoinerRuns" => lambda {|n| @failed_joiner_runs = n.get_number_value() },
                    "failedLeaverRuns" => lambda {|n| @failed_leaver_runs = n.get_number_value() },
                    "failedMoverRuns" => lambda {|n| @failed_mover_runs = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulJoinerRuns" => lambda {|n| @successful_joiner_runs = n.get_number_value() },
                    "successfulLeaverRuns" => lambda {|n| @successful_leaver_runs = n.get_number_value() },
                    "successfulMoverRuns" => lambda {|n| @successful_mover_runs = n.get_number_value() },
                    "totalJoinerRuns" => lambda {|n| @total_joiner_runs = n.get_number_value() },
                    "totalLeaverRuns" => lambda {|n| @total_leaver_runs = n.get_number_value() },
                    "totalMoverRuns" => lambda {|n| @total_mover_runs = n.get_number_value() },
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
                writer.write_number_value("failedJoinerRuns", @failed_joiner_runs)
                writer.write_number_value("failedLeaverRuns", @failed_leaver_runs)
                writer.write_number_value("failedMoverRuns", @failed_mover_runs)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("successfulJoinerRuns", @successful_joiner_runs)
                writer.write_number_value("successfulLeaverRuns", @successful_leaver_runs)
                writer.write_number_value("successfulMoverRuns", @successful_mover_runs)
                writer.write_number_value("totalJoinerRuns", @total_joiner_runs)
                writer.write_number_value("totalLeaverRuns", @total_leaver_runs)
                writer.write_number_value("totalMoverRuns", @total_mover_runs)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulJoinerRuns property value. Successful 'Joiner' workflows processed in a tenant.
            ## @return a integer
            ## 
            def successful_joiner_runs
                return @successful_joiner_runs
            end
            ## 
            ## Sets the successfulJoinerRuns property value. Successful 'Joiner' workflows processed in a tenant.
            ## @param value Value to set for the successfulJoinerRuns property.
            ## @return a void
            ## 
            def successful_joiner_runs=(value)
                @successful_joiner_runs = value
            end
            ## 
            ## Gets the successfulLeaverRuns property value. Successful 'Leaver' workflows processed in a tenant.
            ## @return a integer
            ## 
            def successful_leaver_runs
                return @successful_leaver_runs
            end
            ## 
            ## Sets the successfulLeaverRuns property value. Successful 'Leaver' workflows processed in a tenant.
            ## @param value Value to set for the successfulLeaverRuns property.
            ## @return a void
            ## 
            def successful_leaver_runs=(value)
                @successful_leaver_runs = value
            end
            ## 
            ## Gets the successfulMoverRuns property value. Successful 'Mover' workflows processed in a tenant.
            ## @return a integer
            ## 
            def successful_mover_runs
                return @successful_mover_runs
            end
            ## 
            ## Sets the successfulMoverRuns property value. Successful 'Mover' workflows processed in a tenant.
            ## @param value Value to set for the successfulMoverRuns property.
            ## @return a void
            ## 
            def successful_mover_runs=(value)
                @successful_mover_runs = value
            end
            ## 
            ## Gets the totalJoinerRuns property value. Total 'Joiner' workflows processed in a tenant.
            ## @return a integer
            ## 
            def total_joiner_runs
                return @total_joiner_runs
            end
            ## 
            ## Sets the totalJoinerRuns property value. Total 'Joiner' workflows processed in a tenant.
            ## @param value Value to set for the totalJoinerRuns property.
            ## @return a void
            ## 
            def total_joiner_runs=(value)
                @total_joiner_runs = value
            end
            ## 
            ## Gets the totalLeaverRuns property value. Total 'Leaver' workflows processed in a tenant.
            ## @return a integer
            ## 
            def total_leaver_runs
                return @total_leaver_runs
            end
            ## 
            ## Sets the totalLeaverRuns property value. Total 'Leaver' workflows processed in a tenant.
            ## @param value Value to set for the totalLeaverRuns property.
            ## @return a void
            ## 
            def total_leaver_runs=(value)
                @total_leaver_runs = value
            end
            ## 
            ## Gets the totalMoverRuns property value. Total 'Mover' workflows processed in a tenant.
            ## @return a integer
            ## 
            def total_mover_runs
                return @total_mover_runs
            end
            ## 
            ## Sets the totalMoverRuns property value. Total 'Mover' workflows processed in a tenant.
            ## @param value Value to set for the totalMoverRuns property.
            ## @return a void
            ## 
            def total_mover_runs=(value)
                @total_mover_runs = value
            end
        end
    end
end
