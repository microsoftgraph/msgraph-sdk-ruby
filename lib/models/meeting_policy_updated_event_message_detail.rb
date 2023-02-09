require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MeetingPolicyUpdatedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Initiator of the event.
            @initiator
            ## 
            # Represents whether the meeting chat is enabled or not.
            @meeting_chat_enabled
            ## 
            # Unique identifier of the meeting chat.
            @meeting_chat_id
            ## 
            ## Instantiates a new MeetingPolicyUpdatedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.meetingPolicyUpdatedEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a meeting_policy_updated_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingPolicyUpdatedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "meetingChatEnabled" => lambda {|n| @meeting_chat_enabled = n.get_boolean_value() },
                    "meetingChatId" => lambda {|n| @meeting_chat_id = n.get_string_value() },
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
            ## Gets the meetingChatEnabled property value. Represents whether the meeting chat is enabled or not.
            ## @return a boolean
            ## 
            def meeting_chat_enabled
                return @meeting_chat_enabled
            end
            ## 
            ## Sets the meetingChatEnabled property value. Represents whether the meeting chat is enabled or not.
            ## @param value Value to set for the meeting_chat_enabled property.
            ## @return a void
            ## 
            def meeting_chat_enabled=(value)
                @meeting_chat_enabled = value
            end
            ## 
            ## Gets the meetingChatId property value. Unique identifier of the meeting chat.
            ## @return a string
            ## 
            def meeting_chat_id
                return @meeting_chat_id
            end
            ## 
            ## Sets the meetingChatId property value. Unique identifier of the meeting chat.
            ## @param value Value to set for the meeting_chat_id property.
            ## @return a void
            ## 
            def meeting_chat_id=(value)
                @meeting_chat_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("initiator", @initiator)
                writer.write_boolean_value("meetingChatEnabled", @meeting_chat_enabled)
                writer.write_string_value("meetingChatId", @meeting_chat_id)
            end
        end
    end
end
