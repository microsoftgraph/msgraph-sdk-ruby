require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class TeamCreatedEventMessageDetail < MicrosoftGraph::Models::EventMessageDetail
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Initiator of the event.
        @initiator
        ## 
        # Description for the team.
        @team_description
        ## 
        # Display name of the team.
        @team_display_name
        ## 
        # Unique identifier of the team.
        @team_id
        ## 
        ## Instantiates a new TeamCreatedEventMessageDetail and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.teamCreatedEventMessageDetail"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a team_created_event_message_detail
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamCreatedEventMessageDetail.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "teamDescription" => lambda {|n| @team_description = n.get_string_value() },
                "teamDisplayName" => lambda {|n| @team_display_name = n.get_string_value() },
                "teamId" => lambda {|n| @team_id = n.get_string_value() },
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("initiator", @initiator)
            writer.write_string_value("teamDescription", @team_description)
            writer.write_string_value("teamDisplayName", @team_display_name)
            writer.write_string_value("teamId", @team_id)
        end
        ## 
        ## Gets the teamDescription property value. Description for the team.
        ## @return a string
        ## 
        def team_description
            return @team_description
        end
        ## 
        ## Sets the teamDescription property value. Description for the team.
        ## @param value Value to set for the teamDescription property.
        ## @return a void
        ## 
        def team_description=(value)
            @team_description = value
        end
        ## 
        ## Gets the teamDisplayName property value. Display name of the team.
        ## @return a string
        ## 
        def team_display_name
            return @team_display_name
        end
        ## 
        ## Sets the teamDisplayName property value. Display name of the team.
        ## @param value Value to set for the teamDisplayName property.
        ## @return a void
        ## 
        def team_display_name=(value)
            @team_display_name = value
        end
        ## 
        ## Gets the teamId property value. Unique identifier of the team.
        ## @return a string
        ## 
        def team_id
            return @team_id
        end
        ## 
        ## Sets the teamId property value. Unique identifier of the team.
        ## @param value Value to set for the teamId property.
        ## @return a void
        ## 
        def team_id=(value)
            @team_id = value
        end
    end
end
