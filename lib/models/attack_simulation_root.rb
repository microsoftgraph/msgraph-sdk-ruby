require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttackSimulationRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents an end user's notification for an attack simulation training.
            @end_user_notifications
            ## 
            # Represents an attack simulation training landing page.
            @landing_pages
            ## 
            # Represents an attack simulation training login page.
            @login_pages
            ## 
            # Represents an attack simulation training operation.
            @operations
            ## 
            # Represents an attack simulation training campaign payload in a tenant.
            @payloads
            ## 
            # Represents simulation automation created to run on a tenant.
            @simulation_automations
            ## 
            # Represents an attack simulation training campaign in a tenant.
            @simulations
            ## 
            # Represents details about attack simulation trainings.
            @trainings
            ## 
            ## Instantiates a new attackSimulationRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attack_simulation_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttackSimulationRoot.new
            end
            ## 
            ## Gets the endUserNotifications property value. Represents an end user's notification for an attack simulation training.
            ## @return a end_user_notification
            ## 
            def end_user_notifications
                return @end_user_notifications
            end
            ## 
            ## Sets the endUserNotifications property value. Represents an end user's notification for an attack simulation training.
            ## @param value Value to set for the endUserNotifications property.
            ## @return a void
            ## 
            def end_user_notifications=(value)
                @end_user_notifications = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "endUserNotifications" => lambda {|n| @end_user_notifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::EndUserNotification.create_from_discriminator_value(pn) }) },
                    "landingPages" => lambda {|n| @landing_pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LandingPage.create_from_discriminator_value(pn) }) },
                    "loginPages" => lambda {|n| @login_pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LoginPage.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AttackSimulationOperation.create_from_discriminator_value(pn) }) },
                    "payloads" => lambda {|n| @payloads = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Payload.create_from_discriminator_value(pn) }) },
                    "simulationAutomations" => lambda {|n| @simulation_automations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SimulationAutomation.create_from_discriminator_value(pn) }) },
                    "simulations" => lambda {|n| @simulations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Simulation.create_from_discriminator_value(pn) }) },
                    "trainings" => lambda {|n| @trainings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Training.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the landingPages property value. Represents an attack simulation training landing page.
            ## @return a landing_page
            ## 
            def landing_pages
                return @landing_pages
            end
            ## 
            ## Sets the landingPages property value. Represents an attack simulation training landing page.
            ## @param value Value to set for the landingPages property.
            ## @return a void
            ## 
            def landing_pages=(value)
                @landing_pages = value
            end
            ## 
            ## Gets the loginPages property value. Represents an attack simulation training login page.
            ## @return a login_page
            ## 
            def login_pages
                return @login_pages
            end
            ## 
            ## Sets the loginPages property value. Represents an attack simulation training login page.
            ## @param value Value to set for the loginPages property.
            ## @return a void
            ## 
            def login_pages=(value)
                @login_pages = value
            end
            ## 
            ## Gets the operations property value. Represents an attack simulation training operation.
            ## @return a attack_simulation_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. Represents an attack simulation training operation.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the payloads property value. Represents an attack simulation training campaign payload in a tenant.
            ## @return a payload
            ## 
            def payloads
                return @payloads
            end
            ## 
            ## Sets the payloads property value. Represents an attack simulation training campaign payload in a tenant.
            ## @param value Value to set for the payloads property.
            ## @return a void
            ## 
            def payloads=(value)
                @payloads = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("endUserNotifications", @end_user_notifications)
                writer.write_collection_of_object_values("landingPages", @landing_pages)
                writer.write_collection_of_object_values("loginPages", @login_pages)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("payloads", @payloads)
                writer.write_collection_of_object_values("simulationAutomations", @simulation_automations)
                writer.write_collection_of_object_values("simulations", @simulations)
                writer.write_collection_of_object_values("trainings", @trainings)
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
            ## @param value Value to set for the simulationAutomations property.
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
            ## 
            ## Gets the trainings property value. Represents details about attack simulation trainings.
            ## @return a training
            ## 
            def trainings
                return @trainings
            end
            ## 
            ## Sets the trainings property value. Represents details about attack simulation trainings.
            ## @param value Value to set for the trainings property.
            ## @return a void
            ## 
            def trainings=(value)
                @trainings = value
            end
        end
    end
end
