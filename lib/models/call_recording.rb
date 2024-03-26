require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CallRecording < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content of the recording. Read-only.
            @content
            ## 
            # Date and time at which the recording was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # The unique identifier of the onlineMeeting related to this recording. Read-only.
            @meeting_id
            ## 
            # The identity information of the organizer of the onlineMeeting related to this recording. Read-only.
            @meeting_organizer
            ## 
            # The URL that can be used to access the content of the recording. Read-only.
            @recording_content_url
            ## 
            ## Instantiates a new CallRecording and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content of the recording. Read-only.
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content of the recording. Read-only.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time at which the recording was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time at which the recording was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_recording
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallRecording.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "meetingId" => lambda {|n| @meeting_id = n.get_string_value() },
                    "meetingOrganizer" => lambda {|n| @meeting_organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "recordingContentUrl" => lambda {|n| @recording_content_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the meetingId property value. The unique identifier of the onlineMeeting related to this recording. Read-only.
            ## @return a string
            ## 
            def meeting_id
                return @meeting_id
            end
            ## 
            ## Sets the meetingId property value. The unique identifier of the onlineMeeting related to this recording. Read-only.
            ## @param value Value to set for the meetingId property.
            ## @return a void
            ## 
            def meeting_id=(value)
                @meeting_id = value
            end
            ## 
            ## Gets the meetingOrganizer property value. The identity information of the organizer of the onlineMeeting related to this recording. Read-only.
            ## @return a identity_set
            ## 
            def meeting_organizer
                return @meeting_organizer
            end
            ## 
            ## Sets the meetingOrganizer property value. The identity information of the organizer of the onlineMeeting related to this recording. Read-only.
            ## @param value Value to set for the meetingOrganizer property.
            ## @return a void
            ## 
            def meeting_organizer=(value)
                @meeting_organizer = value
            end
            ## 
            ## Gets the recordingContentUrl property value. The URL that can be used to access the content of the recording. Read-only.
            ## @return a string
            ## 
            def recording_content_url
                return @recording_content_url
            end
            ## 
            ## Sets the recordingContentUrl property value. The URL that can be used to access the content of the recording. Read-only.
            ## @param value Value to set for the recordingContentUrl property.
            ## @return a void
            ## 
            def recording_content_url=(value)
                @recording_content_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("content", @content)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("meetingId", @meeting_id)
                writer.write_object_value("meetingOrganizer", @meeting_organizer)
                writer.write_string_value("recordingContentUrl", @recording_content_url)
            end
        end
    end
end
