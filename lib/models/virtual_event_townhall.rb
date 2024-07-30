require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventTownhall < MicrosoftGraph::Models::VirtualEvent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The audience property
            @audience
            ## 
            # The coOrganizers property
            @co_organizers
            ## 
            # The invitedAttendees property
            @invited_attendees
            ## 
            # The isInviteOnly property
            @is_invite_only
            ## 
            ## Gets the audience property value. The audience property
            ## @return a meeting_audience
            ## 
            def audience
                return @audience
            end
            ## 
            ## Sets the audience property value. The audience property
            ## @param value Value to set for the audience property.
            ## @return a void
            ## 
            def audience=(value)
                @audience = value
            end
            ## 
            ## Gets the coOrganizers property value. The coOrganizers property
            ## @return a communications_user_identity
            ## 
            def co_organizers
                return @co_organizers
            end
            ## 
            ## Sets the coOrganizers property value. The coOrganizers property
            ## @param value Value to set for the coOrganizers property.
            ## @return a void
            ## 
            def co_organizers=(value)
                @co_organizers = value
            end
            ## 
            ## Instantiates a new VirtualEventTownhall and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.virtualEventTownhall"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_townhall
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventTownhall.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "audience" => lambda {|n| @audience = n.get_enum_value(MicrosoftGraph::Models::MeetingAudience) },
                    "coOrganizers" => lambda {|n| @co_organizers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CommunicationsUserIdentity.create_from_discriminator_value(pn) }) },
                    "invitedAttendees" => lambda {|n| @invited_attendees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Identity.create_from_discriminator_value(pn) }) },
                    "isInviteOnly" => lambda {|n| @is_invite_only = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the invitedAttendees property value. The invitedAttendees property
            ## @return a identity
            ## 
            def invited_attendees
                return @invited_attendees
            end
            ## 
            ## Sets the invitedAttendees property value. The invitedAttendees property
            ## @param value Value to set for the invitedAttendees property.
            ## @return a void
            ## 
            def invited_attendees=(value)
                @invited_attendees = value
            end
            ## 
            ## Gets the isInviteOnly property value. The isInviteOnly property
            ## @return a boolean
            ## 
            def is_invite_only
                return @is_invite_only
            end
            ## 
            ## Sets the isInviteOnly property value. The isInviteOnly property
            ## @param value Value to set for the isInviteOnly property.
            ## @return a void
            ## 
            def is_invite_only=(value)
                @is_invite_only = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("audience", @audience)
                writer.write_collection_of_object_values("coOrganizers", @co_organizers)
                writer.write_collection_of_object_values("invitedAttendees", @invited_attendees)
                writer.write_boolean_value("isInviteOnly", @is_invite_only)
            end
        end
    end
end
