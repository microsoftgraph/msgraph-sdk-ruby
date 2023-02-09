require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Attendee < MicrosoftGraph::Models::AttendeeBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An alternate date/time proposed by the attendee for a meeting request to start and end. If the attendee hasn't proposed another time, then this property is not included in a response of a GET event.
            @proposed_new_time
            ## 
            # The attendee's response (none, accepted, declined, etc.) for the event and date-time that the response was sent.
            @status
            ## 
            ## Instantiates a new Attendee and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.attendee"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attendee
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Attendee.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "proposedNewTime" => lambda {|n| @proposed_new_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeSlot.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResponseStatus.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the proposedNewTime property value. An alternate date/time proposed by the attendee for a meeting request to start and end. If the attendee hasn't proposed another time, then this property is not included in a response of a GET event.
            ## @return a time_slot
            ## 
            def proposed_new_time
                return @proposed_new_time
            end
            ## 
            ## Sets the proposedNewTime property value. An alternate date/time proposed by the attendee for a meeting request to start and end. If the attendee hasn't proposed another time, then this property is not included in a response of a GET event.
            ## @param value Value to set for the proposed_new_time property.
            ## @return a void
            ## 
            def proposed_new_time=(value)
                @proposed_new_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("proposedNewTime", @proposed_new_time)
                writer.write_object_value("status", @status)
            end
            ## 
            ## Gets the status property value. The attendee's response (none, accepted, declined, etc.) for the event and date-time that the response was sent.
            ## @return a response_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The attendee's response (none, accepted, declined, etc.) for the event and date-time that the response was sent.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
