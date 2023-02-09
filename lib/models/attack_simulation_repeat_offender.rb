require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttackSimulationRepeatOffender
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The user in an attack simulation and training campaign.
            @attack_simulation_user
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Number of repeat offences of the user in attack simulation and training campaigns.
            @repeat_offence_count
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
            ## Gets the attackSimulationUser property value. The user in an attack simulation and training campaign.
            ## @return a attack_simulation_user
            ## 
            def attack_simulation_user
                return @attack_simulation_user
            end
            ## 
            ## Sets the attackSimulationUser property value. The user in an attack simulation and training campaign.
            ## @param value Value to set for the attack_simulation_user property.
            ## @return a void
            ## 
            def attack_simulation_user=(value)
                @attack_simulation_user = value
            end
            ## 
            ## Instantiates a new attackSimulationRepeatOffender and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attack_simulation_repeat_offender
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttackSimulationRepeatOffender.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attackSimulationUser" => lambda {|n| @attack_simulation_user = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttackSimulationUser.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "repeatOffenceCount" => lambda {|n| @repeat_offence_count = n.get_number_value() },
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
            ## Gets the repeatOffenceCount property value. Number of repeat offences of the user in attack simulation and training campaigns.
            ## @return a integer
            ## 
            def repeat_offence_count
                return @repeat_offence_count
            end
            ## 
            ## Sets the repeatOffenceCount property value. Number of repeat offences of the user in attack simulation and training campaigns.
            ## @param value Value to set for the repeat_offence_count property.
            ## @return a void
            ## 
            def repeat_offence_count=(value)
                @repeat_offence_count = value
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
                writer.write_number_value("repeatOffenceCount", @repeat_offence_count)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
