require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class JoinMeetingIdMeetingInfo < MicrosoftGraph::Models::MeetingInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID used to join the meeting.
            @join_meeting_id
            ## 
            # The passcode used to join the meeting. Optional.
            @passcode
            ## 
            ## Instantiates a new JoinMeetingIdMeetingInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.joinMeetingIdMeetingInfo"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a join_meeting_id_meeting_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return JoinMeetingIdMeetingInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "joinMeetingId" => lambda {|n| @join_meeting_id = n.get_string_value() },
                    "passcode" => lambda {|n| @passcode = n.get_string_value() },
                })
            end
            ## 
            ## Gets the joinMeetingId property value. The ID used to join the meeting.
            ## @return a string
            ## 
            def join_meeting_id
                return @join_meeting_id
            end
            ## 
            ## Sets the joinMeetingId property value. The ID used to join the meeting.
            ## @param value Value to set for the join_meeting_id property.
            ## @return a void
            ## 
            def join_meeting_id=(value)
                @join_meeting_id = value
            end
            ## 
            ## Gets the passcode property value. The passcode used to join the meeting. Optional.
            ## @return a string
            ## 
            def passcode
                return @passcode
            end
            ## 
            ## Sets the passcode property value. The passcode used to join the meeting. Optional.
            ## @param value Value to set for the passcode property.
            ## @return a void
            ## 
            def passcode=(value)
                @passcode = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("joinMeetingId", @join_meeting_id)
                writer.write_string_value("passcode", @passcode)
            end
        end
    end
end
