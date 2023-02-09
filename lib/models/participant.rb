require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Participant < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The info property
            @info
            ## 
            # true if the participant is in lobby.
            @is_in_lobby
            ## 
            # true if the participant is muted (client or server muted).
            @is_muted
            ## 
            # The list of media streams.
            @media_streams
            ## 
            # A blob of data provided by the participant in the roster.
            @metadata
            ## 
            # Information about whether the participant has recording capability.
            @recording_info
            ## 
            ## Instantiates a new participant and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a participant
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Participant.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "info" => lambda {|n| @info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ParticipantInfo.create_from_discriminator_value(pn) }) },
                    "isInLobby" => lambda {|n| @is_in_lobby = n.get_boolean_value() },
                    "isMuted" => lambda {|n| @is_muted = n.get_boolean_value() },
                    "mediaStreams" => lambda {|n| @media_streams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MediaStream.create_from_discriminator_value(pn) }) },
                    "metadata" => lambda {|n| @metadata = n.get_string_value() },
                    "recordingInfo" => lambda {|n| @recording_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RecordingInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the info property value. The info property
            ## @return a participant_info
            ## 
            def info
                return @info
            end
            ## 
            ## Sets the info property value. The info property
            ## @param value Value to set for the info property.
            ## @return a void
            ## 
            def info=(value)
                @info = value
            end
            ## 
            ## Gets the isInLobby property value. true if the participant is in lobby.
            ## @return a boolean
            ## 
            def is_in_lobby
                return @is_in_lobby
            end
            ## 
            ## Sets the isInLobby property value. true if the participant is in lobby.
            ## @param value Value to set for the is_in_lobby property.
            ## @return a void
            ## 
            def is_in_lobby=(value)
                @is_in_lobby = value
            end
            ## 
            ## Gets the isMuted property value. true if the participant is muted (client or server muted).
            ## @return a boolean
            ## 
            def is_muted
                return @is_muted
            end
            ## 
            ## Sets the isMuted property value. true if the participant is muted (client or server muted).
            ## @param value Value to set for the is_muted property.
            ## @return a void
            ## 
            def is_muted=(value)
                @is_muted = value
            end
            ## 
            ## Gets the mediaStreams property value. The list of media streams.
            ## @return a media_stream
            ## 
            def media_streams
                return @media_streams
            end
            ## 
            ## Sets the mediaStreams property value. The list of media streams.
            ## @param value Value to set for the media_streams property.
            ## @return a void
            ## 
            def media_streams=(value)
                @media_streams = value
            end
            ## 
            ## Gets the metadata property value. A blob of data provided by the participant in the roster.
            ## @return a string
            ## 
            def metadata
                return @metadata
            end
            ## 
            ## Sets the metadata property value. A blob of data provided by the participant in the roster.
            ## @param value Value to set for the metadata property.
            ## @return a void
            ## 
            def metadata=(value)
                @metadata = value
            end
            ## 
            ## Gets the recordingInfo property value. Information about whether the participant has recording capability.
            ## @return a recording_info
            ## 
            def recording_info
                return @recording_info
            end
            ## 
            ## Sets the recordingInfo property value. Information about whether the participant has recording capability.
            ## @param value Value to set for the recording_info property.
            ## @return a void
            ## 
            def recording_info=(value)
                @recording_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("info", @info)
                writer.write_boolean_value("isInLobby", @is_in_lobby)
                writer.write_boolean_value("isMuted", @is_muted)
                writer.write_collection_of_object_values("mediaStreams", @media_streams)
                writer.write_string_value("metadata", @metadata)
                writer.write_object_value("recordingInfo", @recording_info)
            end
        end
    end
end
