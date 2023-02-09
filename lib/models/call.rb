require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Call < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The audioRoutingGroups property
            @audio_routing_groups
            ## 
            # A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.  This needs to be copied over from Microsoft.Graph.Call.CallChainId.
            @call_chain_id
            ## 
            # Contains the optional features for the call.
            @call_options
            ## 
            # The routing information on how the call was retargeted. Read-only.
            @call_routes
            ## 
            # The callback URL on which callbacks will be delivered. Must be https.
            @callback_uri
            ## 
            # The chat information. Required information for joining a meeting.
            @chat_info
            ## 
            # The contentSharingSessions property
            @content_sharing_sessions
            ## 
            # The direction of the call. The possible value are incoming or outgoing. Read-only.
            @direction
            ## 
            # Call context associated with an incoming call.
            @incoming_context
            ## 
            # The media configuration. Required.
            @media_config
            ## 
            # Read-only. The call media state.
            @media_state
            ## 
            # The meeting information. Required information for meeting scenarios.
            @meeting_info
            ## 
            # The myParticipantId property
            @my_participant_id
            ## 
            # The operations property
            @operations
            ## 
            # The participants property
            @participants
            ## 
            # The list of requested modalities. Possible values are: unknown, audio, video, videoBasedScreenSharing, data.
            @requested_modalities
            ## 
            # The result information. For example can hold termination reason. Read-only.
            @result_info
            ## 
            # The originator of the call.
            @source
            ## 
            # The call state. Possible values are: incoming, establishing, ringing, established, hold, transferring, transferAccepted, redirecting, terminating, terminated. Read-only.
            @state
            ## 
            # The subject of the conversation.
            @subject
            ## 
            # The targets of the call. Required information for creating peer to peer call.
            @targets
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The toneInfo property
            @tone_info
            ## 
            # The transcription information for the call. Read-only.
            @transcription
            ## 
            ## Gets the audioRoutingGroups property value. The audioRoutingGroups property
            ## @return a audio_routing_group
            ## 
            def audio_routing_groups
                return @audio_routing_groups
            end
            ## 
            ## Sets the audioRoutingGroups property value. The audioRoutingGroups property
            ## @param value Value to set for the audio_routing_groups property.
            ## @return a void
            ## 
            def audio_routing_groups=(value)
                @audio_routing_groups = value
            end
            ## 
            ## Gets the callChainId property value. A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.  This needs to be copied over from Microsoft.Graph.Call.CallChainId.
            ## @return a string
            ## 
            def call_chain_id
                return @call_chain_id
            end
            ## 
            ## Sets the callChainId property value. A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.  This needs to be copied over from Microsoft.Graph.Call.CallChainId.
            ## @param value Value to set for the call_chain_id property.
            ## @return a void
            ## 
            def call_chain_id=(value)
                @call_chain_id = value
            end
            ## 
            ## Gets the callOptions property value. Contains the optional features for the call.
            ## @return a call_options
            ## 
            def call_options
                return @call_options
            end
            ## 
            ## Sets the callOptions property value. Contains the optional features for the call.
            ## @param value Value to set for the call_options property.
            ## @return a void
            ## 
            def call_options=(value)
                @call_options = value
            end
            ## 
            ## Gets the callRoutes property value. The routing information on how the call was retargeted. Read-only.
            ## @return a call_route
            ## 
            def call_routes
                return @call_routes
            end
            ## 
            ## Sets the callRoutes property value. The routing information on how the call was retargeted. Read-only.
            ## @param value Value to set for the call_routes property.
            ## @return a void
            ## 
            def call_routes=(value)
                @call_routes = value
            end
            ## 
            ## Gets the callbackUri property value. The callback URL on which callbacks will be delivered. Must be https.
            ## @return a string
            ## 
            def callback_uri
                return @callback_uri
            end
            ## 
            ## Sets the callbackUri property value. The callback URL on which callbacks will be delivered. Must be https.
            ## @param value Value to set for the callback_uri property.
            ## @return a void
            ## 
            def callback_uri=(value)
                @callback_uri = value
            end
            ## 
            ## Gets the chatInfo property value. The chat information. Required information for joining a meeting.
            ## @return a chat_info
            ## 
            def chat_info
                return @chat_info
            end
            ## 
            ## Sets the chatInfo property value. The chat information. Required information for joining a meeting.
            ## @param value Value to set for the chat_info property.
            ## @return a void
            ## 
            def chat_info=(value)
                @chat_info = value
            end
            ## 
            ## Instantiates a new call and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentSharingSessions property value. The contentSharingSessions property
            ## @return a content_sharing_session
            ## 
            def content_sharing_sessions
                return @content_sharing_sessions
            end
            ## 
            ## Sets the contentSharingSessions property value. The contentSharingSessions property
            ## @param value Value to set for the content_sharing_sessions property.
            ## @return a void
            ## 
            def content_sharing_sessions=(value)
                @content_sharing_sessions = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a call
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Call.new
            end
            ## 
            ## Gets the direction property value. The direction of the call. The possible value are incoming or outgoing. Read-only.
            ## @return a call_direction
            ## 
            def direction
                return @direction
            end
            ## 
            ## Sets the direction property value. The direction of the call. The possible value are incoming or outgoing. Read-only.
            ## @param value Value to set for the direction property.
            ## @return a void
            ## 
            def direction=(value)
                @direction = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "audioRoutingGroups" => lambda {|n| @audio_routing_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AudioRoutingGroup.create_from_discriminator_value(pn) }) },
                    "callChainId" => lambda {|n| @call_chain_id = n.get_string_value() },
                    "callOptions" => lambda {|n| @call_options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallOptions.create_from_discriminator_value(pn) }) },
                    "callRoutes" => lambda {|n| @call_routes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRoute.create_from_discriminator_value(pn) }) },
                    "callbackUri" => lambda {|n| @callback_uri = n.get_string_value() },
                    "chatInfo" => lambda {|n| @chat_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ChatInfo.create_from_discriminator_value(pn) }) },
                    "contentSharingSessions" => lambda {|n| @content_sharing_sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ContentSharingSession.create_from_discriminator_value(pn) }) },
                    "direction" => lambda {|n| @direction = n.get_enum_value(MicrosoftGraph::Models::CallDirection) },
                    "incomingContext" => lambda {|n| @incoming_context = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IncomingContext.create_from_discriminator_value(pn) }) },
                    "mediaConfig" => lambda {|n| @media_config = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaConfig.create_from_discriminator_value(pn) }) },
                    "mediaState" => lambda {|n| @media_state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallMediaState.create_from_discriminator_value(pn) }) },
                    "meetingInfo" => lambda {|n| @meeting_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MeetingInfo.create_from_discriminator_value(pn) }) },
                    "myParticipantId" => lambda {|n| @my_participant_id = n.get_string_value() },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CommsOperation.create_from_discriminator_value(pn) }) },
                    "participants" => lambda {|n| @participants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Participant.create_from_discriminator_value(pn) }) },
                    "requestedModalities" => lambda {|n| @requested_modalities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Modality.create_from_discriminator_value(pn) }) },
                    "resultInfo" => lambda {|n| @result_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResultInfo.create_from_discriminator_value(pn) }) },
                    "source" => lambda {|n| @source = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ParticipantInfo.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::CallState) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "targets" => lambda {|n| @targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::InvitationParticipantInfo.create_from_discriminator_value(pn) }) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "toneInfo" => lambda {|n| @tone_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ToneInfo.create_from_discriminator_value(pn) }) },
                    "transcription" => lambda {|n| @transcription = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallTranscriptionInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the incomingContext property value. Call context associated with an incoming call.
            ## @return a incoming_context
            ## 
            def incoming_context
                return @incoming_context
            end
            ## 
            ## Sets the incomingContext property value. Call context associated with an incoming call.
            ## @param value Value to set for the incoming_context property.
            ## @return a void
            ## 
            def incoming_context=(value)
                @incoming_context = value
            end
            ## 
            ## Gets the mediaConfig property value. The media configuration. Required.
            ## @return a media_config
            ## 
            def media_config
                return @media_config
            end
            ## 
            ## Sets the mediaConfig property value. The media configuration. Required.
            ## @param value Value to set for the media_config property.
            ## @return a void
            ## 
            def media_config=(value)
                @media_config = value
            end
            ## 
            ## Gets the mediaState property value. Read-only. The call media state.
            ## @return a call_media_state
            ## 
            def media_state
                return @media_state
            end
            ## 
            ## Sets the mediaState property value. Read-only. The call media state.
            ## @param value Value to set for the media_state property.
            ## @return a void
            ## 
            def media_state=(value)
                @media_state = value
            end
            ## 
            ## Gets the meetingInfo property value. The meeting information. Required information for meeting scenarios.
            ## @return a meeting_info
            ## 
            def meeting_info
                return @meeting_info
            end
            ## 
            ## Sets the meetingInfo property value. The meeting information. Required information for meeting scenarios.
            ## @param value Value to set for the meeting_info property.
            ## @return a void
            ## 
            def meeting_info=(value)
                @meeting_info = value
            end
            ## 
            ## Gets the myParticipantId property value. The myParticipantId property
            ## @return a string
            ## 
            def my_participant_id
                return @my_participant_id
            end
            ## 
            ## Sets the myParticipantId property value. The myParticipantId property
            ## @param value Value to set for the my_participant_id property.
            ## @return a void
            ## 
            def my_participant_id=(value)
                @my_participant_id = value
            end
            ## 
            ## Gets the operations property value. The operations property
            ## @return a comms_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The operations property
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the participants property value. The participants property
            ## @return a participant
            ## 
            def participants
                return @participants
            end
            ## 
            ## Sets the participants property value. The participants property
            ## @param value Value to set for the participants property.
            ## @return a void
            ## 
            def participants=(value)
                @participants = value
            end
            ## 
            ## Gets the requestedModalities property value. The list of requested modalities. Possible values are: unknown, audio, video, videoBasedScreenSharing, data.
            ## @return a modality
            ## 
            def requested_modalities
                return @requested_modalities
            end
            ## 
            ## Sets the requestedModalities property value. The list of requested modalities. Possible values are: unknown, audio, video, videoBasedScreenSharing, data.
            ## @param value Value to set for the requested_modalities property.
            ## @return a void
            ## 
            def requested_modalities=(value)
                @requested_modalities = value
            end
            ## 
            ## Gets the resultInfo property value. The result information. For example can hold termination reason. Read-only.
            ## @return a result_info
            ## 
            def result_info
                return @result_info
            end
            ## 
            ## Sets the resultInfo property value. The result information. For example can hold termination reason. Read-only.
            ## @param value Value to set for the result_info property.
            ## @return a void
            ## 
            def result_info=(value)
                @result_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("audioRoutingGroups", @audio_routing_groups)
                writer.write_string_value("callChainId", @call_chain_id)
                writer.write_object_value("callOptions", @call_options)
                writer.write_collection_of_object_values("callRoutes", @call_routes)
                writer.write_string_value("callbackUri", @callback_uri)
                writer.write_object_value("chatInfo", @chat_info)
                writer.write_collection_of_object_values("contentSharingSessions", @content_sharing_sessions)
                writer.write_enum_value("direction", @direction)
                writer.write_object_value("incomingContext", @incoming_context)
                writer.write_object_value("mediaConfig", @media_config)
                writer.write_object_value("mediaState", @media_state)
                writer.write_object_value("meetingInfo", @meeting_info)
                writer.write_string_value("myParticipantId", @my_participant_id)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("participants", @participants)
                writer.write_collection_of_object_values("requestedModalities", @requested_modalities)
                writer.write_object_value("resultInfo", @result_info)
                writer.write_object_value("source", @source)
                writer.write_enum_value("state", @state)
                writer.write_string_value("subject", @subject)
                writer.write_collection_of_object_values("targets", @targets)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_object_value("toneInfo", @tone_info)
                writer.write_object_value("transcription", @transcription)
            end
            ## 
            ## Gets the source property value. The originator of the call.
            ## @return a participant_info
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The originator of the call.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the state property value. The call state. Possible values are: incoming, establishing, ringing, established, hold, transferring, transferAccepted, redirecting, terminating, terminated. Read-only.
            ## @return a call_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The call state. Possible values are: incoming, establishing, ringing, established, hold, transferring, transferAccepted, redirecting, terminating, terminated. Read-only.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the subject property value. The subject of the conversation.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject of the conversation.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the targets property value. The targets of the call. Required information for creating peer to peer call.
            ## @return a invitation_participant_info
            ## 
            def targets
                return @targets
            end
            ## 
            ## Sets the targets property value. The targets of the call. Required information for creating peer to peer call.
            ## @param value Value to set for the targets property.
            ## @return a void
            ## 
            def targets=(value)
                @targets = value
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the toneInfo property value. The toneInfo property
            ## @return a tone_info
            ## 
            def tone_info
                return @tone_info
            end
            ## 
            ## Sets the toneInfo property value. The toneInfo property
            ## @param value Value to set for the tone_info property.
            ## @return a void
            ## 
            def tone_info=(value)
                @tone_info = value
            end
            ## 
            ## Gets the transcription property value. The transcription information for the call. Read-only.
            ## @return a call_transcription_info
            ## 
            def transcription
                return @transcription
            end
            ## 
            ## Sets the transcription property value. The transcription information for the call. Read-only.
            ## @param value Value to set for the transcription property.
            ## @return a void
            ## 
            def transcription=(value)
                @transcription = value
            end
        end
    end
end
