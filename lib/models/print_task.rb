require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintTask < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The definition property
            @definition
            ## 
            # The URL for the print entity that triggered this task. For example, https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{jobId}. Read-only.
            @parent_url
            ## 
            # The status property
            @status
            ## 
            # The trigger property
            @trigger
            ## 
            ## Instantiates a new printTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintTask.new
            end
            ## 
            ## Gets the definition property value. The definition property
            ## @return a print_task_definition
            ## 
            def definition
                return @definition
            end
            ## 
            ## Sets the definition property value. The definition property
            ## @param value Value to set for the definition property.
            ## @return a void
            ## 
            def definition=(value)
                @definition = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "definition" => lambda {|n| @definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintTaskDefinition.create_from_discriminator_value(pn) }) },
                    "parentUrl" => lambda {|n| @parent_url = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintTaskStatus.create_from_discriminator_value(pn) }) },
                    "trigger" => lambda {|n| @trigger = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintTaskTrigger.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the parentUrl property value. The URL for the print entity that triggered this task. For example, https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{jobId}. Read-only.
            ## @return a string
            ## 
            def parent_url
                return @parent_url
            end
            ## 
            ## Sets the parentUrl property value. The URL for the print entity that triggered this task. For example, https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{jobId}. Read-only.
            ## @param value Value to set for the parent_url property.
            ## @return a void
            ## 
            def parent_url=(value)
                @parent_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("definition", @definition)
                writer.write_string_value("parentUrl", @parent_url)
                writer.write_object_value("status", @status)
                writer.write_object_value("trigger", @trigger)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a print_task_status
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
            ## 
            ## Gets the trigger property value. The trigger property
            ## @return a print_task_trigger
            ## 
            def trigger
                return @trigger
            end
            ## 
            ## Sets the trigger property value. The trigger property
            ## @param value Value to set for the trigger property.
            ## @return a void
            ## 
            def trigger=(value)
                @trigger = value
            end
        end
    end
end
