require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventsRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The events property
            @events
            ## 
            # The webinars property
            @webinars
            ## 
            ## Instantiates a new VirtualEventsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_events_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventsRoot.new
            end
            ## 
            ## Gets the events property value. The events property
            ## @return a virtual_event
            ## 
            def events
                return @events
            end
            ## 
            ## Sets the events property value. The events property
            ## @param value Value to set for the events property.
            ## @return a void
            ## 
            def events=(value)
                @events = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VirtualEvent.create_from_discriminator_value(pn) }) },
                    "webinars" => lambda {|n| @webinars = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VirtualEventWebinar.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("events", @events)
                writer.write_collection_of_object_values("webinars", @webinars)
            end
            ## 
            ## Gets the webinars property value. The webinars property
            ## @return a virtual_event_webinar
            ## 
            def webinars
                return @webinars
            end
            ## 
            ## Sets the webinars property value. The webinars property
            ## @param value Value to set for the webinars property.
            ## @return a void
            ## 
            def webinars=(value)
                @webinars = value
            end
        end
    end
end
