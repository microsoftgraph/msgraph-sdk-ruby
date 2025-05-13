require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EventMessageResponse < MicrosoftGraph::Models::EventMessage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An alternate date/time proposed by an invitee for a meeting request to start and end. Read-only. Not filterable.
            @proposed_new_time
            ## 
            # Specifies the type of response to a meeting request. Possible values are: tentativelyAccepted, accepted, declined. For the eventMessageResponse type, none, organizer, and notResponded are not supported. Read-only. Not filterable.
            @response_type
            ## 
            ## Instantiates a new EventMessageResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.eventMessageResponse"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a event_message_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EventMessageResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "proposedNewTime" => lambda {|n| @proposed_new_time = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimeSlot.create_from_discriminator_value(pn) }) },
                    "responseType" => lambda {|n| @response_type = n.get_enum_value(MicrosoftGraph::Models::ResponseType) },
                })
            end
            ## 
            ## Gets the proposedNewTime property value. An alternate date/time proposed by an invitee for a meeting request to start and end. Read-only. Not filterable.
            ## @return a time_slot
            ## 
            def proposed_new_time
                return @proposed_new_time
            end
            ## 
            ## Sets the proposedNewTime property value. An alternate date/time proposed by an invitee for a meeting request to start and end. Read-only. Not filterable.
            ## @param value Value to set for the proposedNewTime property.
            ## @return a void
            ## 
            def proposed_new_time=(value)
                @proposed_new_time = value
            end
            ## 
            ## Gets the responseType property value. Specifies the type of response to a meeting request. Possible values are: tentativelyAccepted, accepted, declined. For the eventMessageResponse type, none, organizer, and notResponded are not supported. Read-only. Not filterable.
            ## @return a response_type
            ## 
            def response_type
                return @response_type
            end
            ## 
            ## Sets the responseType property value. Specifies the type of response to a meeting request. Possible values are: tentativelyAccepted, accepted, declined. For the eventMessageResponse type, none, organizer, and notResponded are not supported. Read-only. Not filterable.
            ## @param value Value to set for the responseType property.
            ## @return a void
            ## 
            def response_type=(value)
                @response_type = value
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
                writer.write_enum_value("responseType", @response_type)
            end
        end
    end
end
