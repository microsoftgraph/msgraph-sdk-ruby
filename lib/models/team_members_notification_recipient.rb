require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamMembersNotificationRecipient < MicrosoftGraph::Models::TeamworkNotificationRecipient
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for the team whose members should receive the notification.
            @team_id
            ## 
            ## Instantiates a new TeamMembersNotificationRecipient and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.teamMembersNotificationRecipient"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a team_members_notification_recipient
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamMembersNotificationRecipient.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "teamId" => lambda {|n| @team_id = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("teamId", @team_id)
            end
            ## 
            ## Gets the teamId property value. The unique identifier for the team whose members should receive the notification.
            ## @return a string
            ## 
            def team_id
                return @team_id
            end
            ## 
            ## Sets the teamId property value. The unique identifier for the team whose members should receive the notification.
            ## @param value Value to set for the team_id property.
            ## @return a void
            ## 
            def team_id=(value)
                @team_id = value
            end
        end
    end
end
