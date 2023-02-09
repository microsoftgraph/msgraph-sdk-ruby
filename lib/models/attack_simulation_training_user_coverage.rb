require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttackSimulationTrainingUserCoverage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # User in an attack simulation and training campaign.
            @attack_simulation_user
            ## 
            # The OdataType property
            @odata_type
            ## 
            # List of assigned trainings and their statuses for the user.
            @user_trainings
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
            ## Instantiates a new attackSimulationTrainingUserCoverage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attack_simulation_training_user_coverage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttackSimulationTrainingUserCoverage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attackSimulationUser" => lambda {|n| @attack_simulation_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttackSimulationUser.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userTrainings" => lambda {|n| @user_trainings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::UserTrainingStatusInfo.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("attackSimulationUser", @attack_simulation_user)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("userTrainings", @user_trainings)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userTrainings property value. List of assigned trainings and their statuses for the user.
            ## @return a user_training_status_info
            ## 
            def user_trainings
                return @user_trainings
            end
            ## 
            ## Sets the userTrainings property value. List of assigned trainings and their statuses for the user.
            ## @param value Value to set for the user_trainings property.
            ## @return a void
            ## 
            def user_trainings=(value)
                @user_trainings = value
            end
        end
    end
end
