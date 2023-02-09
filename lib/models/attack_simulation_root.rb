require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttackSimulationRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents simulation automation created to run on a tenant.
            @simulation_automations
            ## 
            # Represents an attack simulation training campaign in a tenant.
            @simulations
            ## 
            ## Instantiates a new attackSimulationRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attack_simulation_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttackSimulationRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "simulationAutomations" => lambda {|n| @simulation_automations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SimulationAutomation.create_from_discriminator_value(pn) }) },
                    "simulations" => lambda {|n| @simulations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Simulation.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("simulationAutomations", @simulation_automations)
                writer.write_collection_of_object_values("simulations", @simulations)
            end
            ## 
            ## Gets the simulationAutomations property value. Represents simulation automation created to run on a tenant.
            ## @return a simulation_automation
            ## 
            def simulation_automations
                return @simulation_automations
            end
            ## 
            ## Sets the simulationAutomations property value. Represents simulation automation created to run on a tenant.
            ## @param value Value to set for the simulation_automations property.
            ## @return a void
            ## 
            def simulation_automations=(value)
                @simulation_automations = value
            end
            ## 
            ## Gets the simulations property value. Represents an attack simulation training campaign in a tenant.
            ## @return a simulation
            ## 
            def simulations
                return @simulations
            end
            ## 
            ## Sets the simulations property value. Represents an attack simulation training campaign in a tenant.
            ## @param value Value to set for the simulations property.
            ## @return a void
            ## 
            def simulations=(value)
                @simulations = value
            end
        end
    end
end
