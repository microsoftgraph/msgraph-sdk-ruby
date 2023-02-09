require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Printer < MicrosoftGraph::Models::PrinterBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The connectors that are associated with the printer.
            @connectors
            ## 
            # True if the printer has a physical device for printing. Read-only.
            @has_physical_device
            ## 
            # True if the printer is shared; false otherwise. Read-only.
            @is_shared
            ## 
            # The most recent dateTimeOffset when a printer interacted with Universal Print. Read-only.
            @last_seen_date_time
            ## 
            # The DateTimeOffset when the printer was registered. Read-only.
            @registered_date_time
            ## 
            # The list of printerShares that are associated with the printer. Currently, only one printerShare can be associated with the printer. Read-only. Nullable.
            @shares
            ## 
            # A list of task triggers that are associated with the printer.
            @task_triggers
            ## 
            ## Gets the connectors property value. The connectors that are associated with the printer.
            ## @return a print_connector
            ## 
            def connectors
                return @connectors
            end
            ## 
            ## Sets the connectors property value. The connectors that are associated with the printer.
            ## @param value Value to set for the connectors property.
            ## @return a void
            ## 
            def connectors=(value)
                @connectors = value
            end
            ## 
            ## Instantiates a new Printer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.printer"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a printer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Printer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectors" => lambda {|n| @connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintConnector.create_from_discriminator_value(pn) }) },
                    "hasPhysicalDevice" => lambda {|n| @has_physical_device = n.get_boolean_value() },
                    "isShared" => lambda {|n| @is_shared = n.get_boolean_value() },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "registeredDateTime" => lambda {|n| @registered_date_time = n.get_date_time_value() },
                    "shares" => lambda {|n| @shares = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrinterShare.create_from_discriminator_value(pn) }) },
                    "taskTriggers" => lambda {|n| @task_triggers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintTaskTrigger.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hasPhysicalDevice property value. True if the printer has a physical device for printing. Read-only.
            ## @return a boolean
            ## 
            def has_physical_device
                return @has_physical_device
            end
            ## 
            ## Sets the hasPhysicalDevice property value. True if the printer has a physical device for printing. Read-only.
            ## @param value Value to set for the has_physical_device property.
            ## @return a void
            ## 
            def has_physical_device=(value)
                @has_physical_device = value
            end
            ## 
            ## Gets the isShared property value. True if the printer is shared; false otherwise. Read-only.
            ## @return a boolean
            ## 
            def is_shared
                return @is_shared
            end
            ## 
            ## Sets the isShared property value. True if the printer is shared; false otherwise. Read-only.
            ## @param value Value to set for the is_shared property.
            ## @return a void
            ## 
            def is_shared=(value)
                @is_shared = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The most recent dateTimeOffset when a printer interacted with Universal Print. Read-only.
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The most recent dateTimeOffset when a printer interacted with Universal Print. Read-only.
            ## @param value Value to set for the last_seen_date_time property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the registeredDateTime property value. The DateTimeOffset when the printer was registered. Read-only.
            ## @return a date_time
            ## 
            def registered_date_time
                return @registered_date_time
            end
            ## 
            ## Sets the registeredDateTime property value. The DateTimeOffset when the printer was registered. Read-only.
            ## @param value Value to set for the registered_date_time property.
            ## @return a void
            ## 
            def registered_date_time=(value)
                @registered_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("connectors", @connectors)
                writer.write_boolean_value("hasPhysicalDevice", @has_physical_device)
                writer.write_boolean_value("isShared", @is_shared)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_date_time_value("registeredDateTime", @registered_date_time)
                writer.write_collection_of_object_values("shares", @shares)
                writer.write_collection_of_object_values("taskTriggers", @task_triggers)
            end
            ## 
            ## Gets the shares property value. The list of printerShares that are associated with the printer. Currently, only one printerShare can be associated with the printer. Read-only. Nullable.
            ## @return a printer_share
            ## 
            def shares
                return @shares
            end
            ## 
            ## Sets the shares property value. The list of printerShares that are associated with the printer. Currently, only one printerShare can be associated with the printer. Read-only. Nullable.
            ## @param value Value to set for the shares property.
            ## @return a void
            ## 
            def shares=(value)
                @shares = value
            end
            ## 
            ## Gets the taskTriggers property value. A list of task triggers that are associated with the printer.
            ## @return a print_task_trigger
            ## 
            def task_triggers
                return @task_triggers
            end
            ## 
            ## Sets the taskTriggers property value. A list of task triggers that are associated with the printer.
            ## @param value Value to set for the task_triggers property.
            ## @return a void
            ## 
            def task_triggers=(value)
                @task_triggers = value
            end
        end
    end
end
