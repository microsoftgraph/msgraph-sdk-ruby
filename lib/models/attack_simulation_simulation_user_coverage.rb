require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttackSimulationSimulationUserCoverage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # User in an attack simulation and training campaign.
            @attack_simulation_user
            ## 
            # Number of link clicks in the received payloads by the user in attack simulation and training campaigns.
            @click_count
            ## 
            # Number of compromising actions by the user in attack simulation and training campaigns.
            @compromised_count
            ## 
            # Date and time of the latest attack simulation and training campaign that the user was included in.
            @latest_simulation_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Number of attack simulation and training campaigns that the user was included in.
            @simulation_count
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
            ## Gets the attackSimulationUser property value. User in an attack simulation and training campaign.
            ## @return a attack_simulation_user
            ## 
            def attack_simulation_user
                return @attack_simulation_user
            end
            ## 
            ## Sets the attackSimulationUser property value. User in an attack simulation and training campaign.
            ## @param value Value to set for the attack_simulation_user property.
            ## @return a void
            ## 
            def attack_simulation_user=(value)
                @attack_simulation_user = value
            end
            ## 
            ## Gets the clickCount property value. Number of link clicks in the received payloads by the user in attack simulation and training campaigns.
            ## @return a integer
            ## 
            def click_count
                return @click_count
            end
            ## 
            ## Sets the clickCount property value. Number of link clicks in the received payloads by the user in attack simulation and training campaigns.
            ## @param value Value to set for the click_count property.
            ## @return a void
            ## 
            def click_count=(value)
                @click_count = value
            end
            ## 
            ## Gets the compromisedCount property value. Number of compromising actions by the user in attack simulation and training campaigns.
            ## @return a integer
            ## 
            def compromised_count
                return @compromised_count
            end
            ## 
            ## Sets the compromisedCount property value. Number of compromising actions by the user in attack simulation and training campaigns.
            ## @param value Value to set for the compromised_count property.
            ## @return a void
            ## 
            def compromised_count=(value)
                @compromised_count = value
            end
            ## 
            ## Instantiates a new attackSimulationSimulationUserCoverage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attack_simulation_simulation_user_coverage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttackSimulationSimulationUserCoverage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attackSimulationUser" => lambda {|n| @attack_simulation_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttackSimulationUser.create_from_discriminator_value(pn) }) },
                    "clickCount" => lambda {|n| @click_count = n.get_number_value() },
                    "compromisedCount" => lambda {|n| @compromised_count = n.get_number_value() },
                    "latestSimulationDateTime" => lambda {|n| @latest_simulation_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "simulationCount" => lambda {|n| @simulation_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the latestSimulationDateTime property value. Date and time of the latest attack simulation and training campaign that the user was included in.
            ## @return a date_time
            ## 
            def latest_simulation_date_time
                return @latest_simulation_date_time
            end
            ## 
            ## Sets the latestSimulationDateTime property value. Date and time of the latest attack simulation and training campaign that the user was included in.
            ## @param value Value to set for the latest_simulation_date_time property.
            ## @return a void
            ## 
            def latest_simulation_date_time=(value)
                @latest_simulation_date_time = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("attackSimulationUser", @attack_simulation_user)
                writer.write_number_value("clickCount", @click_count)
                writer.write_number_value("compromisedCount", @compromised_count)
                writer.write_date_time_value("latestSimulationDateTime", @latest_simulation_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("simulationCount", @simulation_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the simulationCount property value. Number of attack simulation and training campaigns that the user was included in.
            ## @return a integer
            ## 
            def simulation_count
                return @simulation_count
            end
            ## 
            ## Sets the simulationCount property value. Number of attack simulation and training campaigns that the user was included in.
            ## @param value Value to set for the simulation_count property.
            ## @return a void
            ## 
            def simulation_count=(value)
                @simulation_count = value
            end
        end
    end
end
