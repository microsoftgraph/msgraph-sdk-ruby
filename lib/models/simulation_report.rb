require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SimulationReport
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Overview of an attack simulation and training campaign.
            @overview
            ## 
            # The tenant users and their online actions in an attack simulation and training campaign.
            @simulation_users
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
            ## Instantiates a new simulationReport and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a simulation_report
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SimulationReport.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "overview" => lambda {|n| @overview = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SimulationReportOverview.create_from_discriminator_value(pn) }) },
                    "simulationUsers" => lambda {|n| @simulation_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserSimulationDetails.create_from_discriminator_value(pn) }) },
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
            ## Gets the overview property value. Overview of an attack simulation and training campaign.
            ## @return a simulation_report_overview
            ## 
            def overview
                return @overview
            end
            ## 
            ## Sets the overview property value. Overview of an attack simulation and training campaign.
            ## @param value Value to set for the overview property.
            ## @return a void
            ## 
            def overview=(value)
                @overview = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("overview", @overview)
                writer.write_collection_of_object_values("simulationUsers", @simulation_users)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the simulationUsers property value. The tenant users and their online actions in an attack simulation and training campaign.
            ## @return a user_simulation_details
            ## 
            def simulation_users
                return @simulation_users
            end
            ## 
            ## Sets the simulationUsers property value. The tenant users and their online actions in an attack simulation and training campaign.
            ## @param value Value to set for the simulation_users property.
            ## @return a void
            ## 
            def simulation_users=(value)
                @simulation_users = value
            end
        end
    end
end
