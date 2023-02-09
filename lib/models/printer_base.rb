require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrinterBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The capabilities of the printer/printerShare.
            @capabilities
            ## 
            # The default print settings of printer/printerShare.
            @defaults
            ## 
            # The name of the printer/printerShare.
            @display_name
            ## 
            # Whether the printer/printerShare is currently accepting new print jobs.
            @is_accepting_jobs
            ## 
            # The list of jobs that are queued for printing by the printer/printerShare.
            @jobs
            ## 
            # The physical and/or organizational location of the printer/printerShare.
            @location
            ## 
            # The manufacturer of the printer/printerShare.
            @manufacturer
            ## 
            # The model name of the printer/printerShare.
            @model
            ## 
            # The status property
            @status
            ## 
            ## Gets the capabilities property value. The capabilities of the printer/printerShare.
            ## @return a printer_capabilities
            ## 
            def capabilities
                return @capabilities
            end
            ## 
            ## Sets the capabilities property value. The capabilities of the printer/printerShare.
            ## @param value Value to set for the capabilities property.
            ## @return a void
            ## 
            def capabilities=(value)
                @capabilities = value
            end
            ## 
            ## Instantiates a new printerBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a printer_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.printer"
                            return Printer.new
                        when "#microsoft.graph.printerShare"
                            return PrinterShare.new
                    end
                end
                return PrinterBase.new
            end
            ## 
            ## Gets the defaults property value. The default print settings of printer/printerShare.
            ## @return a printer_defaults
            ## 
            def defaults
                return @defaults
            end
            ## 
            ## Sets the defaults property value. The default print settings of printer/printerShare.
            ## @param value Value to set for the defaults property.
            ## @return a void
            ## 
            def defaults=(value)
                @defaults = value
            end
            ## 
            ## Gets the displayName property value. The name of the printer/printerShare.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the printer/printerShare.
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
                    "capabilities" => lambda {|n| @capabilities = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrinterCapabilities.create_from_discriminator_value(pn) }) },
                    "defaults" => lambda {|n| @defaults = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrinterDefaults.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isAcceptingJobs" => lambda {|n| @is_accepting_jobs = n.get_boolean_value() },
                    "jobs" => lambda {|n| @jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintJob.create_from_discriminator_value(pn) }) },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrinterLocation.create_from_discriminator_value(pn) }) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrinterStatus.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isAcceptingJobs property value. Whether the printer/printerShare is currently accepting new print jobs.
            ## @return a boolean
            ## 
            def is_accepting_jobs
                return @is_accepting_jobs
            end
            ## 
            ## Sets the isAcceptingJobs property value. Whether the printer/printerShare is currently accepting new print jobs.
            ## @param value Value to set for the is_accepting_jobs property.
            ## @return a void
            ## 
            def is_accepting_jobs=(value)
                @is_accepting_jobs = value
            end
            ## 
            ## Gets the jobs property value. The list of jobs that are queued for printing by the printer/printerShare.
            ## @return a print_job
            ## 
            def jobs
                return @jobs
            end
            ## 
            ## Sets the jobs property value. The list of jobs that are queued for printing by the printer/printerShare.
            ## @param value Value to set for the jobs property.
            ## @return a void
            ## 
            def jobs=(value)
                @jobs = value
            end
            ## 
            ## Gets the location property value. The physical and/or organizational location of the printer/printerShare.
            ## @return a printer_location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The physical and/or organizational location of the printer/printerShare.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer of the printer/printerShare.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer of the printer/printerShare.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The model name of the printer/printerShare.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model name of the printer/printerShare.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("capabilities", @capabilities)
                writer.write_object_value("defaults", @defaults)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isAcceptingJobs", @is_accepting_jobs)
                writer.write_collection_of_object_values("jobs", @jobs)
                writer.write_object_value("location", @location)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_object_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a printer_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
