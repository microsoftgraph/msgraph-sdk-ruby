require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph::Models::CallRecords
    class Session < MicrosoftGraph::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Endpoint that answered the session.
        @callee
        ## 
        # Endpoint that initiated the session.
        @caller
        ## 
        # UTC time when the last user left the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @end_date_time
        ## 
        # Failure information associated with the session if the session failed.
        @failure_info
        ## 
        # List of modalities present in the session. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
        @modalities
        ## 
        # The list of segments involved in the session. Read-only. Nullable.
        @segments
        ## 
        # UTC time when the first user joined the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @start_date_time
        ## 
        ## Gets the callee property value. Endpoint that answered the session.
        ## @return a endpoint
        ## 
        def callee
            return @callee
        end
        ## 
        ## Sets the callee property value. Endpoint that answered the session.
        ## @param value Value to set for the callee property.
        ## @return a void
        ## 
        def callee=(value)
            @callee = value
        end
        ## 
        ## Gets the caller property value. Endpoint that initiated the session.
        ## @return a endpoint
        ## 
        def caller
            return @caller
        end
        ## 
        ## Sets the caller property value. Endpoint that initiated the session.
        ## @param value Value to set for the caller property.
        ## @return a void
        ## 
        def caller=(value)
            @caller = value
        end
        ## 
        ## Instantiates a new session and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a session
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Session.new
        end
        ## 
        ## Gets the endDateTime property value. UTC time when the last user left the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. UTC time when the last user left the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the end_date_time property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## Gets the failureInfo property value. Failure information associated with the session if the session failed.
        ## @return a failure_info
        ## 
        def failure_info
            return @failure_info
        end
        ## 
        ## Sets the failureInfo property value. Failure information associated with the session if the session failed.
        ## @param value Value to set for the failure_info property.
        ## @return a void
        ## 
        def failure_info=(value)
            @failure_info = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "callee" => lambda {|n| @callee = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallRecords::Endpoint.create_from_discriminator_value(pn) }) },
                "caller" => lambda {|n| @caller = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallRecords::Endpoint.create_from_discriminator_value(pn) }) },
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                "failureInfo" => lambda {|n| @failure_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallRecords::FailureInfo.create_from_discriminator_value(pn) }) },
                "modalities" => lambda {|n| @modalities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecords::Modality.create_from_discriminator_value(pn) }) },
                "segments" => lambda {|n| @segments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecords::Segment.create_from_discriminator_value(pn) }) },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the modalities property value. List of modalities present in the session. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
        ## @return a modality
        ## 
        def modalities
            return @modalities
        end
        ## 
        ## Sets the modalities property value. List of modalities present in the session. Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
        ## @param value Value to set for the modalities property.
        ## @return a void
        ## 
        def modalities=(value)
            @modalities = value
        end
        ## 
        ## Gets the segments property value. The list of segments involved in the session. Read-only. Nullable.
        ## @return a segment
        ## 
        def segments
            return @segments
        end
        ## 
        ## Sets the segments property value. The list of segments involved in the session. Read-only. Nullable.
        ## @param value Value to set for the segments property.
        ## @return a void
        ## 
        def segments=(value)
            @segments = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("callee", @callee)
            writer.write_object_value("caller", @caller)
            writer.write_date_time_value("endDateTime", @end_date_time)
            writer.write_object_value("failureInfo", @failure_info)
            writer.write_collection_of_object_values("modalities", @modalities)
            writer.write_collection_of_object_values("segments", @segments)
            writer.write_date_time_value("startDateTime", @start_date_time)
        end
        ## 
        ## Gets the startDateTime property value. UTC time when the first user joined the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. UTC time when the first user joined the session. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the start_date_time property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
    end
end
