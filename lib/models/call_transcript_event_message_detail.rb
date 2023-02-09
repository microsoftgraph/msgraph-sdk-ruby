require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallTranscriptEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier of the call.
            @call_id
            ## 
            # Unique identifier for a call transcript.
            @call_transcript_i_cal_uid
            ## 
            # The organizer of the meeting.
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
            ## Gets the callTranscriptICalUid property value. Unique identifier for a call transcript.
            ## @return a string
            ## 
            def call_transcript_i_cal_uid
                return @call_transcript_i_cal_uid
            end
            ## 
            ## Sets the callTranscriptICalUid property value. Unique identifier for a call transcript.
            ## @param value Value to set for the call_transcript_i_cal_uid property.
            ## @return a void
            ## 
            def call_transcript_i_cal_uid=(value)
                @call_transcript_i_cal_uid = value
            end
            ## 
            ## Instantiates a new CallTranscriptEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.callTranscriptEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a call_transcript_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallTranscriptEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callId" => lambda {|n| @call_id = n.get_string_value() },
                    "callTranscriptICalUid" => lambda {|n| @call_transcript_i_cal_uid = n.get_string_value() },
                    "meetingOrganizer" => lambda {|n| @meeting_organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the meetingOrganizer property value. The organizer of the meeting.
            ## @return a identity_set
            ## 
            def meeting_organizer
                return @meeting_organizer
            end
            ## 
            ## Sets the meetingOrganizer property value. The organizer of the meeting.
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
                writer.write_string_value("callTranscriptICalUid", @call_transcript_i_cal_uid)
                writer.write_object_value("meetingOrganizer", @meeting_organizer)
            end
        end
    end
end
