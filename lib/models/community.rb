require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Represents a community in Viva Engage that is a central place for conversations,files, events, and updates for people sharing a common interest or goal.
        class Community < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description of the community. The maximum length is 1,024 characters.
            @description
            ## 
            # The name of the community. The maximum length is 255 characters.
            @display_name
            ## 
            # The Microsoft 365 group that manages the membership of this community.
            @group
            ## 
            # The ID of the Microsoft 365 group that manages the membership of this community.
            @group_id
            ## 
            # The admins of the community. Limited to 100 users. If this property isn't specified when you create the community, the calling user is automatically assigned as the community owner.
            @owners
            ## 
            # Types of communityPrivacy.
            @privacy
            ## 
            ## Instantiates a new Community and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a community
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Community.new
            end
            ## 
            ## Gets the description property value. The description of the community. The maximum length is 1,024 characters.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the community. The maximum length is 1,024 characters.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the community. The maximum length is 255 characters.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the community. The maximum length is 255 characters.
            ## @param value Value to set for the displayName property.
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
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "privacy" => lambda {|n| @privacy = n.get_enum_value(MicrosoftGraph::Models::CommunityPrivacy) },
                })
            end
            ## 
            ## Gets the group property value. The Microsoft 365 group that manages the membership of this community.
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The Microsoft 365 group that manages the membership of this community.
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the groupId property value. The ID of the Microsoft 365 group that manages the membership of this community.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The ID of the Microsoft 365 group that manages the membership of this community.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the owners property value. The admins of the community. Limited to 100 users. If this property isn't specified when you create the community, the calling user is automatically assigned as the community owner.
            ## @return a user
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. The admins of the community. Limited to 100 users. If this property isn't specified when you create the community, the calling user is automatically assigned as the community owner.
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the privacy property value. Types of communityPrivacy.
            ## @return a community_privacy
            ## 
            def privacy
                return @privacy
            end
            ## 
            ## Sets the privacy property value. Types of communityPrivacy.
            ## @param value Value to set for the privacy property.
            ## @return a void
            ## 
            def privacy=(value)
                @privacy = value
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
                writer.write_object_value("group", @group)
                writer.write_string_value("groupId", @group_id)
                writer.write_collection_of_object_values("owners", @owners)
                writer.write_enum_value("privacy", @privacy)
            end
        end
    end
end
