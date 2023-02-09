require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamworkTag < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description of the tag as it will appear to the user in Microsoft Teams.
            @description
            ## 
            # The name of the tag as it will appear to the user in Microsoft Teams.
            @display_name
            ## 
            # The number of users assigned to the tag.
            @member_count
            ## 
            # Users assigned to the tag.
            @members
            ## 
            # The type of the tag. Default is standard.
            @tag_type
            ## 
            # ID of the team in which the tag is defined.
            @team_id
            ## 
            ## Instantiates a new teamworkTag and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_tag
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkTag.new
            end
            ## 
            ## Gets the description property value. The description of the tag as it will appear to the user in Microsoft Teams.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the tag as it will appear to the user in Microsoft Teams.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the tag as it will appear to the user in Microsoft Teams.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the tag as it will appear to the user in Microsoft Teams.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "memberCount" => lambda {|n| @member_count = n.get_number_value() },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamworkTagMember.create_from_discriminator_value(pn) }) },
                    "tagType" => lambda {|n| @tag_type = n.get_enum_value(MicrosoftGraph::Models::TeamworkTagType) },
                    "teamId" => lambda {|n| @team_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the memberCount property value. The number of users assigned to the tag.
            ## @return a integer
            ## 
            def member_count
                return @member_count
            end
            ## 
            ## Sets the memberCount property value. The number of users assigned to the tag.
            ## @param value Value to set for the member_count property.
            ## @return a void
            ## 
            def member_count=(value)
                @member_count = value
            end
            ## 
            ## Gets the members property value. Users assigned to the tag.
            ## @return a teamwork_tag_member
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. Users assigned to the tag.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("memberCount", @member_count)
                writer.write_collection_of_object_values("members", @members)
                writer.write_enum_value("tagType", @tag_type)
                writer.write_string_value("teamId", @team_id)
            end
            ## 
            ## Gets the tagType property value. The type of the tag. Default is standard.
            ## @return a teamwork_tag_type
            ## 
            def tag_type
                return @tag_type
            end
            ## 
            ## Sets the tagType property value. The type of the tag. Default is standard.
            ## @param value Value to set for the tag_type property.
            ## @return a void
            ## 
            def tag_type=(value)
                @tag_type = value
            end
            ## 
            ## Gets the teamId property value. ID of the team in which the tag is defined.
            ## @return a string
            ## 
            def team_id
                return @team_id
            end
            ## 
            ## Sets the teamId property value. ID of the team in which the tag is defined.
            ## @param value Value to set for the team_id property.
            ## @return a void
            ## 
            def team_id=(value)
                @team_id = value
            end
        end
    end
end
