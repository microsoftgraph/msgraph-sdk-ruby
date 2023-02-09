require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SimulationAutomationRun < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date and time when the run ends in an attack simulation automation.
            @end_date_time
            ## 
            # Unique identifier for the attack simulation campaign initiated in the attack simulation automation run.
            @simulation_id
            ## 
            # Date and time when the run starts in an attack simulation automation.
            @start_date_time
            ## 
            # Status of the attack simulation automation run. The possible values are: unknown, running, succeeded, failed, skipped, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new simulationAutomationRun and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a simulation_automation_run
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SimulationAutomationRun.new
            end
            ## 
            ## Gets the endDateTime property value. Date and time when the run ends in an attack simulation automation.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. Date and time when the run ends in an attack simulation automation.
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "simulationId" => lambda {|n| @simulation_id = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SimulationAutomationRunStatus) },
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
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_string_value("simulationId", @simulation_id)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the simulationId property value. Unique identifier for the attack simulation campaign initiated in the attack simulation automation run.
            ## @return a string
            ## 
            def simulation_id
                return @simulation_id
            end
            ## 
            ## Sets the simulationId property value. Unique identifier for the attack simulation campaign initiated in the attack simulation automation run.
            ## @param value Value to set for the simulation_id property.
            ## @return a void
            ## 
            def simulation_id=(value)
                @simulation_id = value
            end
            ## 
            ## Gets the startDateTime property value. Date and time when the run starts in an attack simulation automation.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Date and time when the run starts in an attack simulation automation.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. Status of the attack simulation automation run. The possible values are: unknown, running, succeeded, failed, skipped, unknownFutureValue.
            ## @return a simulation_automation_run_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the attack simulation automation run. The possible values are: unknown, running, succeeded, failed, skipped, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
