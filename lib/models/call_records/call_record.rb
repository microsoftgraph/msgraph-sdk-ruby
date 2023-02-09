require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class CallRecord < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # UTC time when the last user left the call. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                @end_date_time
                ## 
                # Meeting URL associated to the call. May not be available for a peerToPeer call record type.
                @join_web_url
                ## 
                # UTC time when the call record was created. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                @last_modified_date_time
                ## 
                # List of all the modalities used in the call. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
                @modalities
                ## 
                # The organizing party's identity.
                @organizer
                ## 
                # List of distinct identities involved in the call.
                @participants
                ## 
                # List of sessions involved in the call. Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant. Read-only. Nullable.
                @sessions
                ## 
                # UTC time when the first user joined the call. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @start_date_time
                ## 
                # The type property
                @type
                ## 
                # Monotonically increasing version of the call record. Higher version call records with the same id includes additional data compared to the lower version.
                @version
                ## 
                ## Instantiates a new callRecord and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a call_record
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CallRecord.new
                end
                ## 
                ## Gets the endDateTime property value. UTC time when the last user left the call. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                ## @return a date_time
                ## 
                def end_date_time
                    return @end_date_time
                end
                ## 
                ## Sets the endDateTime property value. UTC time when the last user left the call. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                ## @param value Value to set for the end_date_time property.
                ## @return a void
                ## 
                def end_date_time=(value)
                    @end_date_time = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                        "joinWebUrl" => lambda {|n| @join_web_url = n.get_string_value() },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                        "modalities" => lambda {|n| @modalities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecords::Modality.create_from_discriminator_value(pn) }) },
                        "organizer" => lambda {|n| @organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "participants" => lambda {|n| @participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "sessions" => lambda {|n| @sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecords::Session.create_from_discriminator_value(pn) }) },
                        "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                        "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::CallRecords::CallType) },
                        "version" => lambda {|n| @version = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the joinWebUrl property value. Meeting URL associated to the call. May not be available for a peerToPeer call record type.
                ## @return a string
                ## 
                def join_web_url
                    return @join_web_url
                end
                ## 
                ## Sets the joinWebUrl property value. Meeting URL associated to the call. May not be available for a peerToPeer call record type.
                ## @param value Value to set for the join_web_url property.
                ## @return a void
                ## 
                def join_web_url=(value)
                    @join_web_url = value
                end
                ## 
                ## Gets the lastModifiedDateTime property value. UTC time when the call record was created. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. UTC time when the call record was created. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
                ## @param value Value to set for the last_modified_date_time property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Gets the modalities property value. List of all the modalities used in the call. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
                ## @return a modality
                ## 
                def modalities
                    return @modalities
                end
                ## 
                ## Sets the modalities property value. List of all the modalities used in the call. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
                ## @param value Value to set for the modalities property.
                ## @return a void
                ## 
                def modalities=(value)
                    @modalities = value
                end
                ## 
                ## Gets the organizer property value. The organizing party's identity.
                ## @return a identity_set
                ## 
                def organizer
                    return @organizer
                end
                ## 
                ## Sets the organizer property value. The organizing party's identity.
                ## @param value Value to set for the organizer property.
                ## @return a void
                ## 
                def organizer=(value)
                    @organizer = value
                end
                ## 
                ## Gets the participants property value. List of distinct identities involved in the call.
                ## @return a identity_set
                ## 
                def participants
                    return @participants
                end
                ## 
                ## Sets the participants property value. List of distinct identities involved in the call.
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
                    writer.write_date_time_value("endDateTime", @end_date_time)
                    writer.write_string_value("joinWebUrl", @join_web_url)
                    writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                    writer.write_collection_of_object_values("modalities", @modalities)
                    writer.write_object_value("organizer", @organizer)
                    writer.write_collection_of_object_values("participants", @participants)
                    writer.write_collection_of_object_values("sessions", @sessions)
                    writer.write_date_time_value("startDateTime", @start_date_time)
                    writer.write_enum_value("type", @type)
                    writer.write_object_value("version", @version)
                end
                ## 
                ## Gets the sessions property value. List of sessions involved in the call. Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant. Read-only. Nullable.
                ## @return a session
                ## 
                def sessions
                    return @sessions
                end
                ## 
                ## Sets the sessions property value. List of sessions involved in the call. Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant. Read-only. Nullable.
                ## @param value Value to set for the sessions property.
                ## @return a void
                ## 
                def sessions=(value)
                    @sessions = value
                end
                ## 
                ## Gets the startDateTime property value. UTC time when the first user joined the call. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def start_date_time
                    return @start_date_time
                end
                ## 
                ## Sets the startDateTime property value. UTC time when the first user joined the call. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the start_date_time property.
                ## @return a void
                ## 
                def start_date_time=(value)
                    @start_date_time = value
                end
                ## 
                ## Gets the type property value. The type property
                ## @return a call_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. The type property
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
                ## 
                ## Gets the version property value. Monotonically increasing version of the call record. Higher version call records with the same id includes additional data compared to the lower version.
                ## @return a int64
                ## 
                def version
                    return @version
                end
                ## 
                ## Sets the version property value. Monotonically increasing version of the call record. Higher version call records with the same id includes additional data compared to the lower version.
                ## @param value Value to set for the version property.
                ## @return a void
                ## 
                def version=(value)
                    @version = value
                end
            end
        end
    end
end
