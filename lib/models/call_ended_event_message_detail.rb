require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallEndedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Duration of the call.
            @call_duration
            ## 
            # Represents the call event type. Possible values are: call, meeting, screenShare, unknownFutureValue.
            @call_event_type
            ## 
            # Unique identifier of the call.
            @call_id
            ## 
            # List of call participants.
            @call_participants
            ## 
            # Initiator of the event.
            @initiator
            ## 
            ## Gets the callDuration property value. Duration of the call.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def call_duration
                return @call_duration
            end
            ## 
            ## Sets the callDuration property value. Duration of the call.
            ## @param value Value to set for the call_duration property.
            ## @return a void
            ## 
            def call_duration=(value)
                @call_duration = value
            end
            ## 
            ## Gets the callEventType property value. Represents the call event type. Possible values are: call, meeting, screenShare, unknownFutureValue.
            ## @return a teamwork_call_event_type
            ## 
            def call_event_type
                return @call_event_type
            end
            ## 
            ## Sets the callEventType property value. Represents the call event type. Possible values are: call, meeting, screenShare, unknownFutureValue.
            ## @param value Value to set for the call_event_type property.
            ## @return a void
            ## 
            def call_event_type=(value)
                @call_event_type = value
            end
            ## 
            ## Gets the callId property value. Unique identifier of the call.
            ## @return a string
            ## 
            def call_id
                return @call_id
            end
            ## 
            ## Sets the callId property value. Unique identifier of the call.
            ## @param value Value to set for the call_id property.
            ## @return a void
            ## 
            def call_id=(value)
                @call_id = value
            end
            ## 
            ## Gets the callParticipants property value. List of call participants.
            ## @return a call_participant_info
            ## 
            def call_participants
                return @call_participants
            end
            ## 
            ## Sets the callParticipants property value. List of call participants.
            ## @param value Value to set for the call_participants property.
            ## @return a void
            ## 
            def call_participants=(value)
                @call_participants = value
            end
            ## 
            ## Instantiates a new CallEndedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.callEndedEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a call_ended_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallEndedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callDuration" => lambda {|n| @call_duration = n.get_duration_value() },
                    "callEventType" => lambda {|n| @call_event_type = n.get_enum_value(MicrosoftGraph::Models::TeamworkCallEventType) },
                    "callId" => lambda {|n| @call_id = n.get_string_value() },
                    "callParticipants" => lambda {|n| @call_participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallParticipantInfo.create_from_discriminator_value(pn) }) },
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the initiator property value. Initiator of the event.
            ## @return a identity_set
            ## 
            def initiator
                return @initiator
            end
            ## 
            ## Sets the initiator property value. Initiator of the event.
            ## @param value Value to set for the initiator property.
            ## @return a void
            ## 
            def initiator=(value)
                @initiator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_duration_value("callDuration", @call_duration)
                writer.write_enum_value("callEventType", @call_event_type)
                writer.write_string_value("callId", @call_id)
                writer.write_collection_of_object_values("callParticipants", @call_participants)
                writer.write_object_value("initiator", @initiator)
            end
        end
    end
end
