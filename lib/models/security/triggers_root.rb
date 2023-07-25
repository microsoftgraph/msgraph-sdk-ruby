require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class TriggersRoot < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The retentionEvents property
                @retention_events
                ## 
                ## Instantiates a new triggersRoot and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a triggers_root
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TriggersRoot.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "retentionEvents" => lambda {|n| @retention_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::RetentionEvent.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the retentionEvents property value. The retentionEvents property
                ## @return a retention_event
                ## 
                def retention_events
                    return @retention_events
                end
                ## 
                ## Sets the retentionEvents property value. The retentionEvents property
                ## @param value Value to set for the retentionEvents property.
                ## @return a void
                ## 
                def retention_events=(value)
                    @retention_events = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("retentionEvents", @retention_events)
                end
            end
        end
    end
end
