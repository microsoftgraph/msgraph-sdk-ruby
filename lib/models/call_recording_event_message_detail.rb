require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallRecordingEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier of the call.
            @call_id
            ## 
            # Display name for the call recording.
            @call_recording_display_name
            ## 
            # Duration of the call recording.
            @call_recording_duration
            ## 
            # Status of the call recording. Possible values are: success, failure, initial, chunkFinished, unknownFutureValue.
            @call_recording_status
            ## 
            # Call recording URL.
            @call_recording_url
            ## 
            # Initiator of the event.
            @initiator
            ## 
            # Organizer of the meeting.
            @meeting_organizer
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
            ## Gets the callRecordingDisplayName property value. Display name for the call recording.
            ## @return a string
            ## 
            def call_recording_display_name
                return @call_recording_display_name
            end
            ## 
            ## Sets the callRecordingDisplayName property value. Display name for the call recording.
            ## @param value Value to set for the call_recording_display_name property.
            ## @return a void
            ## 
            def call_recording_display_name=(value)
                @call_recording_display_name = value
            end
            ## 
            ## Gets the callRecordingDuration property value. Duration of the call recording.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def call_recording_duration
                return @call_recording_duration
            end
            ## 
            ## Sets the callRecordingDuration property value. Duration of the call recording.
            ## @param value Value to set for the call_recording_duration property.
            ## @return a void
            ## 
            def call_recording_duration=(value)
                @call_recording_duration = value
            end
            ## 
            ## Gets the callRecordingStatus property value. Status of the call recording. Possible values are: success, failure, initial, chunkFinished, unknownFutureValue.
            ## @return a call_recording_status
            ## 
            def call_recording_status
                return @call_recording_status
            end
            ## 
            ## Sets the callRecordingStatus property value. Status of the call recording. Possible values are: success, failure, initial, chunkFinished, unknownFutureValue.
            ## @param value Value to set for the call_recording_status property.
            ## @return a void
            ## 
            def call_recording_status=(value)
                @call_recording_status = value
            end
            ## 
            ## Gets the callRecordingUrl property value. Call recording URL.
            ## @return a string
            ## 
            def call_recording_url
                return @call_recording_url
            end
            ## 
            ## Sets the callRecordingUrl property value. Call recording URL.
            ## @param value Value to set for the call_recording_url property.
            ## @return a void
            ## 
            def call_recording_url=(value)
                @call_recording_url = value
            end
            ## 
            ## Instantiates a new CallRecordingEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.callRecordingEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a call_recording_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecordingEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callId" => lambda {|n| @call_id = n.get_string_value() },
                    "callRecordingDisplayName" => lambda {|n| @call_recording_display_name = n.get_string_value() },
                    "callRecordingDuration" => lambda {|n| @call_recording_duration = n.get_duration_value() },
                    "callRecordingStatus" => lambda {|n| @call_recording_status = n.get_enum_value(MicrosoftGraph::Models::CallRecordingStatus) },
                    "callRecordingUrl" => lambda {|n| @call_recording_url = n.get_string_value() },
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "meetingOrganizer" => lambda {|n| @meeting_organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
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
            ## Gets the meetingOrganizer property value. Organizer of the meeting.
            ## @return a identity_set
            ## 
            def meeting_organizer
                return @meeting_organizer
            end
            ## 
            ## Sets the meetingOrganizer property value. Organizer of the meeting.
            ## @param value Value to set for the meeting_organizer property.
            ## @return a void
            ## 
            def meeting_organizer=(value)
                @meeting_organizer = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("callId", @call_id)
                writer.write_string_value("callRecordingDisplayName", @call_recording_display_name)
                writer.write_duration_value("callRecordingDuration", @call_recording_duration)
                writer.write_enum_value("callRecordingStatus", @call_recording_status)
                writer.write_string_value("callRecordingUrl", @call_recording_url)
                writer.write_object_value("initiator", @initiator)
                writer.write_object_value("meetingOrganizer", @meeting_organizer)
            end
        end
    end
end
