require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EventMessageDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new eventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.callEndedEventMessageDetail"
                            return CallEndedEventMessageDetail.new
                        when "#microsoft.graph.callRecordingEventMessageDetail"
                            return CallRecordingEventMessageDetail.new
                        when "#microsoft.graph.callStartedEventMessageDetail"
                            return CallStartedEventMessageDetail.new
                        when "#microsoft.graph.callTranscriptEventMessageDetail"
                            return CallTranscriptEventMessageDetail.new
                        when "#microsoft.graph.channelAddedEventMessageDetail"
                            return ChannelAddedEventMessageDetail.new
                        when "#microsoft.graph.channelDeletedEventMessageDetail"
                            return ChannelDeletedEventMessageDetail.new
                        when "#microsoft.graph.channelDescriptionUpdatedEventMessageDetail"
                            return ChannelDescriptionUpdatedEventMessageDetail.new
                        when "#microsoft.graph.channelRenamedEventMessageDetail"
                            return ChannelRenamedEventMessageDetail.new
                        when "#microsoft.graph.channelSetAsFavoriteByDefaultEventMessageDetail"
                            return ChannelSetAsFavoriteByDefaultEventMessageDetail.new
                        when "#microsoft.graph.channelUnsetAsFavoriteByDefaultEventMessageDetail"
                            return ChannelUnsetAsFavoriteByDefaultEventMessageDetail.new
                        when "#microsoft.graph.chatRenamedEventMessageDetail"
                            return ChatRenamedEventMessageDetail.new
                        when "#microsoft.graph.conversationMemberRoleUpdatedEventMessageDetail"
                            return ConversationMemberRoleUpdatedEventMessageDetail.new
                        when "#microsoft.graph.meetingPolicyUpdatedEventMessageDetail"
                            return MeetingPolicyUpdatedEventMessageDetail.new
                        when "#microsoft.graph.membersAddedEventMessageDetail"
                            return MembersAddedEventMessageDetail.new
                        when "#microsoft.graph.membersDeletedEventMessageDetail"
                            return MembersDeletedEventMessageDetail.new
                        when "#microsoft.graph.membersJoinedEventMessageDetail"
                            return MembersJoinedEventMessageDetail.new
                        when "#microsoft.graph.membersLeftEventMessageDetail"
                            return MembersLeftEventMessageDetail.new
                        when "#microsoft.graph.messagePinnedEventMessageDetail"
                            return MessagePinnedEventMessageDetail.new
                        when "#microsoft.graph.messageUnpinnedEventMessageDetail"
                            return MessageUnpinnedEventMessageDetail.new
                        when "#microsoft.graph.tabUpdatedEventMessageDetail"
                            return TabUpdatedEventMessageDetail.new
                        when "#microsoft.graph.teamArchivedEventMessageDetail"
                            return TeamArchivedEventMessageDetail.new
                        when "#microsoft.graph.teamCreatedEventMessageDetail"
                            return TeamCreatedEventMessageDetail.new
                        when "#microsoft.graph.teamDescriptionUpdatedEventMessageDetail"
                            return TeamDescriptionUpdatedEventMessageDetail.new
                        when "#microsoft.graph.teamJoiningDisabledEventMessageDetail"
                            return TeamJoiningDisabledEventMessageDetail.new
                        when "#microsoft.graph.teamJoiningEnabledEventMessageDetail"
                            return TeamJoiningEnabledEventMessageDetail.new
                        when "#microsoft.graph.teamRenamedEventMessageDetail"
                            return TeamRenamedEventMessageDetail.new
                        when "#microsoft.graph.teamsAppInstalledEventMessageDetail"
                            return TeamsAppInstalledEventMessageDetail.new
                        when "#microsoft.graph.teamsAppRemovedEventMessageDetail"
                            return TeamsAppRemovedEventMessageDetail.new
                        when "#microsoft.graph.teamsAppUpgradedEventMessageDetail"
                            return TeamsAppUpgradedEventMessageDetail.new
                        when "#microsoft.graph.teamUnarchivedEventMessageDetail"
                            return TeamUnarchivedEventMessageDetail.new
                    end
                end
                return EventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
