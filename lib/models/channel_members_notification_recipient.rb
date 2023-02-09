require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChannelMembersNotificationRecipient < MicrosoftGraph::Models::TeamworkNotificationRecipient
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for the channel whose members should receive the notification.
            @channel_id
            ## 
            # The unique identifier for the team under which the channel resides.
            @team_id
            ## 
            ## Gets the channelId property value. The unique identifier for the channel whose members should receive the notification.
            ## @return a string
            ## 
            def channel_id
                return @channel_id
            end
            ## 
            ## Sets the channelId property value. The unique identifier for the channel whose members should receive the notification.
            ## @param value Value to set for the channel_id property.
            ## @return a void
            ## 
            def channel_id=(value)
                @channel_id = value
            end
            ## 
            ## Instantiates a new ChannelMembersNotificationRecipient and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.channelMembersNotificationRecipient"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a channel_members_notification_recipient
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChannelMembersNotificationRecipient.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "channelId" => lambda {|n| @channel_id = n.get_string_value() },
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
                writer.write_string_value("channelId", @channel_id)
                writer.write_string_value("teamId", @team_id)
            end
            ## 
            ## Gets the teamId property value. The unique identifier for the team under which the channel resides.
            ## @return a string
            ## 
            def team_id
                return @team_id
            end
            ## 
            ## Sets the teamId property value. The unique identifier for the team under which the channel resides.
            ## @param value Value to set for the team_id property.
            ## @return a void
            ## 
            def team_id=(value)
                @team_id = value
            end
        end
    end
end
