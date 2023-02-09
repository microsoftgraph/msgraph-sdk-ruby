require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SimulationReportOverview
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # List of recommended actions for a tenant to improve its security posture based on the attack simulation and training campaign attack type.
            @recommended_actions
            ## 
            # Number of valid users in the attack simulation and training campaign.
            @resolved_targets_count
            ## 
            # Summary of simulation events in the attack simulation and training campaign.
            @simulation_events_content
            ## 
            # Summary of assigned trainings in the attack simulation and training campaign.
            @training_events_content
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
            ## Instantiates a new simulationReportOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a simulation_report_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SimulationReportOverview.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendedActions" => lambda {|n| @recommended_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RecommendedAction.create_from_discriminator_value(pn) }) },
                    "resolvedTargetsCount" => lambda {|n| @resolved_targets_count = n.get_number_value() },
                    "simulationEventsContent" => lambda {|n| @simulation_events_content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SimulationEventsContent.create_from_discriminator_value(pn) }) },
                    "trainingEventsContent" => lambda {|n| @training_events_content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TrainingEventsContent.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the recommendedActions property value. List of recommended actions for a tenant to improve its security posture based on the attack simulation and training campaign attack type.
            ## @return a recommended_action
            ## 
            def recommended_actions
                return @recommended_actions
            end
            ## 
            ## Sets the recommendedActions property value. List of recommended actions for a tenant to improve its security posture based on the attack simulation and training campaign attack type.
            ## @param value Value to set for the recommended_actions property.
            ## @return a void
            ## 
            def recommended_actions=(value)
                @recommended_actions = value
            end
            ## 
            ## Gets the resolvedTargetsCount property value. Number of valid users in the attack simulation and training campaign.
            ## @return a integer
            ## 
            def resolved_targets_count
                return @resolved_targets_count
            end
            ## 
            ## Sets the resolvedTargetsCount property value. Number of valid users in the attack simulation and training campaign.
            ## @param value Value to set for the resolved_targets_count property.
            ## @return a void
            ## 
            def resolved_targets_count=(value)
                @resolved_targets_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("recommendedActions", @recommended_actions)
                writer.write_number_value("resolvedTargetsCount", @resolved_targets_count)
                writer.write_object_value("simulationEventsContent", @simulation_events_content)
                writer.write_object_value("trainingEventsContent", @training_events_content)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the simulationEventsContent property value. Summary of simulation events in the attack simulation and training campaign.
            ## @return a simulation_events_content
            ## 
            def simulation_events_content
                return @simulation_events_content
            end
            ## 
            ## Sets the simulationEventsContent property value. Summary of simulation events in the attack simulation and training campaign.
            ## @param value Value to set for the simulation_events_content property.
            ## @return a void
            ## 
            def simulation_events_content=(value)
                @simulation_events_content = value
            end
            ## 
            ## Gets the trainingEventsContent property value. Summary of assigned trainings in the attack simulation and training campaign.
            ## @return a training_events_content
            ## 
            def training_events_content
                return @training_events_content
            end
            ## 
            ## Sets the trainingEventsContent property value. Summary of assigned trainings in the attack simulation and training campaign.
            ## @param value Value to set for the training_events_content property.
            ## @return a void
            ## 
            def training_events_content=(value)
                @training_events_content = value
            end
        end
    end
end
