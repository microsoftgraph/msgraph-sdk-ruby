require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharedWithChannelTeamInfo < MicrosoftGraph::Models::TeamInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of team members who have access to the shared channel.
            @allowed_members
            ## 
            # Indicates whether the team is the host of the channel.
            @is_host_team
            ## 
            ## Gets the allowedMembers property value. A collection of team members who have access to the shared channel.
            ## @return a conversation_member
            ## 
            def allowed_members
                return @allowed_members
            end
            ## 
            ## Sets the allowedMembers property value. A collection of team members who have access to the shared channel.
            ## @param value Value to set for the allowed_members property.
            ## @return a void
            ## 
            def allowed_members=(value)
                @allowed_members = value
            end
            ## 
            ## Instantiates a new SharedWithChannelTeamInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shared_with_channel_team_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedWithChannelTeamInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedMembers" => lambda {|n| @allowed_members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConversationMember.create_from_discriminator_value(pn) }) },
                    "isHostTeam" => lambda {|n| @is_host_team = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isHostTeam property value. Indicates whether the team is the host of the channel.
            ## @return a boolean
            ## 
            def is_host_team
                return @is_host_team
            end
            ## 
            ## Sets the isHostTeam property value. Indicates whether the team is the host of the channel.
            ## @param value Value to set for the is_host_team property.
            ## @return a void
            ## 
            def is_host_team=(value)
                @is_host_team = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("allowedMembers", @allowed_members)
                writer.write_boolean_value("isHostTeam", @is_host_team)
            end
        end
    end
end
