require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SimulationAutomation < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identity of the user who created the attack simulation automation.
            @created_by
            ## 
            # Date and time when the attack simulation automation was created.
            @created_date_time
            ## 
            # Description of the attack simulation automation.
            @description
            ## 
            # Display name of the attack simulation automation. Supports $filter and $orderby.
            @display_name
            ## 
            # Identity of the user who most recently modified the attack simulation automation.
            @last_modified_by
            ## 
            # Date and time when the attack simulation automation was most recently modified.
            @last_modified_date_time
            ## 
            # Date and time of the latest run of the attack simulation automation.
            @last_run_date_time
            ## 
            # Date and time of the upcoming run of the attack simulation automation.
            @next_run_date_time
            ## 
            # A collection of simulation automation runs.
            @runs
            ## 
            # Status of the attack simulation automation. Supports $filter and $orderby. The possible values are: unknown, draft, notRunning, running, completed, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new simulationAutomation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the attack simulation automation.
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the attack simulation automation.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the attack simulation automation was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the attack simulation automation was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a simulation_automation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SimulationAutomation.new
            end
            ## 
            ## Gets the description property value. Description of the attack simulation automation.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the attack simulation automation.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of the attack simulation automation. Supports $filter and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the attack simulation automation. Supports $filter and $orderby.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "lastRunDateTime" => lambda {|n| @last_run_date_time = n.get_date_time_value() },
                    "nextRunDateTime" => lambda {|n| @next_run_date_time = n.get_date_time_value() },
                    "runs" => lambda {|n| @runs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SimulationAutomationRun.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SimulationAutomationStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who most recently modified the attack simulation automation.
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who most recently modified the attack simulation automation.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time when the attack simulation automation was most recently modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time when the attack simulation automation was most recently modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the lastRunDateTime property value. Date and time of the latest run of the attack simulation automation.
            ## @return a date_time
            ## 
            def last_run_date_time
                return @last_run_date_time
            end
            ## 
            ## Sets the lastRunDateTime property value. Date and time of the latest run of the attack simulation automation.
            ## @param value Value to set for the last_run_date_time property.
            ## @return a void
            ## 
            def last_run_date_time=(value)
                @last_run_date_time = value
            end
            ## 
            ## Gets the nextRunDateTime property value. Date and time of the upcoming run of the attack simulation automation.
            ## @return a date_time
            ## 
            def next_run_date_time
                return @next_run_date_time
            end
            ## 
            ## Sets the nextRunDateTime property value. Date and time of the upcoming run of the attack simulation automation.
            ## @param value Value to set for the next_run_date_time property.
            ## @return a void
            ## 
            def next_run_date_time=(value)
                @next_run_date_time = value
            end
            ## 
            ## Gets the runs property value. A collection of simulation automation runs.
            ## @return a simulation_automation_run
            ## 
            def runs
                return @runs
            end
            ## 
            ## Sets the runs property value. A collection of simulation automation runs.
            ## @param value Value to set for the runs property.
            ## @return a void
            ## 
            def runs=(value)
                @runs = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("lastRunDateTime", @last_run_date_time)
                writer.write_date_time_value("nextRunDateTime", @next_run_date_time)
                writer.write_collection_of_object_values("runs", @runs)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Status of the attack simulation automation. Supports $filter and $orderby. The possible values are: unknown, draft, notRunning, running, completed, unknownFutureValue.
            ## @return a simulation_automation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the attack simulation automation. Supports $filter and $orderby. The possible values are: unknown, draft, notRunning, running, completed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
