require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnlineMeeting < MicrosoftGraph::Models::OnlineMeetingBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The attendeeReport property
            @attendee_report
            ## 
            # The broadcastSettings property
            @broadcast_settings
            ## 
            # The meeting creation time in UTC. Read-only.
            @creation_date_time
            ## 
            # The meeting end time in UTC.
            @end_date_time
            ## 
            # The externalId property
            @external_id
            ## 
            # The isBroadcast property
            @is_broadcast
            ## 
            # The participants associated with the online meeting.  This includes the organizer and the attendees.
            @participants
            ## 
            # The recordings of an online meeting. Read-only.
            @recordings
            ## 
            # The meeting start time in UTC.
            @start_date_time
            ## 
            # The transcripts of an online meeting. Read-only.
            @transcripts
            ## 
            ## Gets the attendeeReport property value. The attendeeReport property
            ## @return a base64url
            ## 
            def attendee_report
                return @attendee_report
            end
            ## 
            ## Sets the attendeeReport property value. The attendeeReport property
            ## @param value Value to set for the attendeeReport property.
            ## @return a void
            ## 
            def attendee_report=(value)
                @attendee_report = value
            end
            ## 
            ## Gets the broadcastSettings property value. The broadcastSettings property
            ## @return a broadcast_meeting_settings
            ## 
            def broadcast_settings
                return @broadcast_settings
            end
            ## 
            ## Sets the broadcastSettings property value. The broadcastSettings property
            ## @param value Value to set for the broadcastSettings property.
            ## @return a void
            ## 
            def broadcast_settings=(value)
                @broadcast_settings = value
            end
            ## 
            ## Instantiates a new onlineMeeting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onlineMeeting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a online_meeting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnlineMeeting.new
            end
            ## 
            ## Gets the creationDateTime property value. The meeting creation time in UTC. Read-only.
            ## @return a date_time
            ## 
            def creation_date_time
                return @creation_date_time
            end
            ## 
            ## Sets the creationDateTime property value. The meeting creation time in UTC. Read-only.
            ## @param value Value to set for the creationDateTime property.
            ## @return a void
            ## 
            def creation_date_time=(value)
                @creation_date_time = value
            end
            ## 
            ## Gets the endDateTime property value. The meeting end time in UTC.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The meeting end time in UTC.
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the externalId property value. The externalId property
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The externalId property
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "attendeeReport" => lambda {|n| @attendee_report = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "broadcastSettings" => lambda {|n| @broadcast_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BroadcastMeetingSettings.create_from_discriminator_value(pn) }) },
                    "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "isBroadcast" => lambda {|n| @is_broadcast = n.get_boolean_value() },
                    "participants" => lambda {|n| @participants = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MeetingParticipants.create_from_discriminator_value(pn) }) },
                    "recordings" => lambda {|n| @recordings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecording.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "transcripts" => lambda {|n| @transcripts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallTranscript.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isBroadcast property value. The isBroadcast property
            ## @return a boolean
            ## 
            def is_broadcast
                return @is_broadcast
            end
            ## 
            ## Sets the isBroadcast property value. The isBroadcast property
            ## @param value Value to set for the isBroadcast property.
            ## @return a void
            ## 
            def is_broadcast=(value)
                @is_broadcast = value
            end
            ## 
            ## Gets the participants property value. The participants associated with the online meeting.  This includes the organizer and the attendees.
            ## @return a meeting_participants
            ## 
            def participants
                return @participants
            end
            ## 
            ## Sets the participants property value. The participants associated with the online meeting.  This includes the organizer and the attendees.
            ## @param value Value to set for the participants property.
            ## @return a void
            ## 
            def participants=(value)
                @participants = value
            end
            ## 
            ## Gets the recordings property value. The recordings of an online meeting. Read-only.
            ## @return a call_recording
            ## 
            def recordings
                return @recordings
            end
            ## 
            ## Sets the recordings property value. The recordings of an online meeting. Read-only.
            ## @param value Value to set for the recordings property.
            ## @return a void
            ## 
            def recordings=(value)
                @recordings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("attendeeReport", @attendee_report)
                writer.write_object_value("broadcastSettings", @broadcast_settings)
                writer.write_date_time_value("creationDateTime", @creation_date_time)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_string_value("externalId", @external_id)
                writer.write_boolean_value("isBroadcast", @is_broadcast)
                writer.write_object_value("participants", @participants)
                writer.write_collection_of_object_values("recordings", @recordings)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_collection_of_object_values("transcripts", @transcripts)
            end
            ## 
            ## Gets the startDateTime property value. The meeting start time in UTC.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The meeting start time in UTC.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the transcripts property value. The transcripts of an online meeting. Read-only.
            ## @return a call_transcript
            ## 
            def transcripts
                return @transcripts
            end
            ## 
            ## Sets the transcripts property value. The transcripts of an online meeting. Read-only.
            ## @param value Value to set for the transcripts property.
            ## @return a void
            ## 
            def transcripts=(value)
                @transcripts = value
            end
        end
    end
end
