require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintTaskTrigger < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The definition property
            @definition
            ## 
            # The event property
            @event
            ## 
            ## Instantiates a new printTaskTrigger and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_task_trigger
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintTaskTrigger.new
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
            ## Gets the event property value. The event property
            ## @return a print_event
            ## 
            def event
                return @event
            end
            ## 
            ## Sets the event property value. The event property
            ## @param value Value to set for the event property.
            ## @return a void
            ## 
            def event=(value)
                @event = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "definition" => lambda {|n| @definition = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintTaskDefinition.create_from_discriminator_value(pn) }) },
                    "event" => lambda {|n| @event = n.get_enum_value(MicrosoftGraph::Models::PrintEvent) },
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
                writer.write_object_value("definition", @definition)
                writer.write_enum_value("event", @event)
            end
        end
    end
end
