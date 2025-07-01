require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallEvent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The callEventType property
            @call_event_type
            ## 
            # The eventDateTime property
            @event_date_time
            ## 
            # The participants property
            @participants
            ## 
            ## Gets the callEventType property value. The callEventType property
            ## @return a call_event_type
            ## 
            def call_event_type
                return @call_event_type
            end
            ## 
            ## Sets the callEventType property value. The callEventType property
            ## @param value Value to set for the callEventType property.
            ## @return a void
            ## 
            def call_event_type=(value)
                @call_event_type = value
            end
            ## 
            ## Instantiates a new CallEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.emergencyCallEvent"
                            return EmergencyCallEvent.new
                    end
                end
                return CallEvent.new
            end
            ## 
            ## Gets the eventDateTime property value. The eventDateTime property
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. The eventDateTime property
            ## @param value Value to set for the eventDateTime property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callEventType" => lambda {|n| @call_event_type = n.get_enum_value(MicrosoftGraph::Models::CallEventType) },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "participants" => lambda {|n| @participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Participant.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the participants property value. The participants property
            ## @return a participant
            ## 
            def participants
                return @participants
            end
            ## 
            ## Sets the participants property value. The participants property
            ## @param value Value to set for the participants property.
            ## @return a void
            ## 
            def participants=(value)
                @participants = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("callEventType", @call_event_type)
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_collection_of_object_values("participants", @participants)
            end
        end
    end
end
