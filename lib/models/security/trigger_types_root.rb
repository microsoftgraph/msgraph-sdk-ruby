require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class TriggerTypesRoot < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The retentionEventTypes property
                @retention_event_types
                ## 
                ## Instantiates a new triggerTypesRoot and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a trigger_types_root
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TriggerTypesRoot.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "retentionEventTypes" => lambda {|n| @retention_event_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::RetentionEventType.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the retentionEventTypes property value. The retentionEventTypes property
                ## @return a retention_event_type
                ## 
                def retention_event_types
                    return @retention_event_types
                end
                ## 
                ## Sets the retentionEventTypes property value. The retentionEventTypes property
                ## @param value Value to set for the retention_event_types property.
                ## @return a void
                ## 
                def retention_event_types=(value)
                    @retention_event_types = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("retentionEventTypes", @retention_event_types)
                end
            end
        end
    end
end
