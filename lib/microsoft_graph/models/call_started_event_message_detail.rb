require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class CallStartedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Represents the call event type. Possible values are: call, meeting, screenShare, unknownFutureValue.
        @call_event_type
        ## 
        # Unique identifier of the call.
        @call_id
        ## 
        # Initiator of the event.
        @initiator
        ## 
        ## Gets the callEventType property value. Represents the call event type. Possible values are: call, meeting, screenShare, unknownFutureValue.
        ## @return a teamwork_call_event_type
        ## 
        def call_event_type
            return @call_event_type
        end
        ## 
        ## Sets the callEventType property value. Represents the call event type. Possible values are: call, meeting, screenShare, unknownFutureValue.
        ## @param value Value to set for the callEventType property.
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
        ## @param value Value to set for the callId property.
        ## @return a void
        ## 
        def call_id=(value)
            @call_id = value
        end
        ## 
        ## Instantiates a new CallStartedEventMessageDetail and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.callStartedEventMessageDetail"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a call_started_event_message_detail
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CallStartedEventMessageDetail.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "callEventType" => lambda {|n| @call_event_type = n.get_enum_value(MicrosoftGraph::Models::TeamworkCallEventType) },
                "callId" => lambda {|n| @call_id = n.get_string_value() },
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
            writer.write_enum_value("callEventType", @call_event_type)
            writer.write_string_value("callId", @call_id)
            writer.write_object_value("initiator", @initiator)
        end
    end
end
