require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Channel < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read only. Timestamp at which the channel was created.
            @created_date_time
            ## 
            # Optional textual description for the channel.
            @description
            ## 
            # Channel name as it will appear to the user in Microsoft Teams. The maximum length is 50 characters.
            @display_name
            ## 
            # The email address for sending messages to the channel. Read-only.
            @email
            ## 
            # Metadata for the location where the channel's files are stored.
            @files_folder
            ## 
            # Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Can only be set programmatically with Create team. Default: false.
            @is_favorite_by_default
            ## 
            # A collection of membership records associated with the channel.
            @members
            ## 
            # The type of the channel. Can be set during creation and can't be changed. The possible values are: standard, private, unknownFutureValue, shared. The default value is standard. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value in this evolvable enum: shared.
            @membership_type
            ## 
            # A collection of all the messages in the channel. A navigation property. Nullable.
            @messages
            ## 
            # A collection of teams with which a channel is shared.
            @shared_with_teams
            ## 
            # A collection of all the tabs in the channel. A navigation property.
            @tabs
            ## 
            # The ID of the Azure Active Directory tenant.
            @tenant_id
            ## 
            # A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.
            @web_url
            ## 
            ## Instantiates a new channel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Read only. Timestamp at which the channel was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Read only. Timestamp at which the channel was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a channel
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Channel.new
            end
            ## 
            ## Gets the description property value. Optional textual description for the channel.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Optional textual description for the channel.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Channel name as it will appear to the user in Microsoft Teams. The maximum length is 50 characters.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Channel name as it will appear to the user in Microsoft Teams. The maximum length is 50 characters.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the email property value. The email address for sending messages to the channel. Read-only.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address for sending messages to the channel. Read-only.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## Gets the filesFolder property value. Metadata for the location where the channel's files are stored.
            ## @return a drive_item
            ## 
            def files_folder
                return @files_folder
            end
            ## 
            ## Sets the filesFolder property value. Metadata for the location where the channel's files are stored.
            ## @param value Value to set for the files_folder property.
            ## @return a void
            ## 
            def files_folder=(value)
                @files_folder = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "filesFolder" => lambda {|n| @files_folder = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "isFavoriteByDefault" => lambda {|n| @is_favorite_by_default = n.get_boolean_value() },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConversationMember.create_from_discriminator_value(pn) }) },
                    "membershipType" => lambda {|n| @membership_type = n.get_enum_value(MicrosoftGraph::Models::ChannelMembershipType) },
                    "messages" => lambda {|n| @messages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ChatMessage.create_from_discriminator_value(pn) }) },
                    "sharedWithTeams" => lambda {|n| @shared_with_teams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SharedWithChannelTeamInfo.create_from_discriminator_value(pn) }) },
                    "tabs" => lambda {|n| @tabs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamsTab.create_from_discriminator_value(pn) }) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isFavoriteByDefault property value. Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Can only be set programmatically with Create team. Default: false.
            ## @return a boolean
            ## 
            def is_favorite_by_default
                return @is_favorite_by_default
            end
            ## 
            ## Sets the isFavoriteByDefault property value. Indicates whether the channel should automatically be marked 'favorite' for all members of the team. Can only be set programmatically with Create team. Default: false.
            ## @param value Value to set for the is_favorite_by_default property.
            ## @return a void
            ## 
            def is_favorite_by_default=(value)
                @is_favorite_by_default = value
            end
            ## 
            ## Gets the members property value. A collection of membership records associated with the channel.
            ## @return a conversation_member
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. A collection of membership records associated with the channel.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the membershipType property value. The type of the channel. Can be set during creation and can't be changed. The possible values are: standard, private, unknownFutureValue, shared. The default value is standard. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value in this evolvable enum: shared.
            ## @return a channel_membership_type
            ## 
            def membership_type
                return @membership_type
            end
            ## 
            ## Sets the membershipType property value. The type of the channel. Can be set during creation and can't be changed. The possible values are: standard, private, unknownFutureValue, shared. The default value is standard. Note that you must use the Prefer: include-unknown-enum-members request header to get the following value in this evolvable enum: shared.
            ## @param value Value to set for the membership_type property.
            ## @return a void
            ## 
            def membership_type=(value)
                @membership_type = value
            end
            ## 
            ## Gets the messages property value. A collection of all the messages in the channel. A navigation property. Nullable.
            ## @return a chat_message
            ## 
            def messages
                return @messages
            end
            ## 
            ## Sets the messages property value. A collection of all the messages in the channel. A navigation property. Nullable.
            ## @param value Value to set for the messages property.
            ## @return a void
            ## 
            def messages=(value)
                @messages = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_object_value("filesFolder", @files_folder)
                writer.write_boolean_value("isFavoriteByDefault", @is_favorite_by_default)
                writer.write_collection_of_object_values("members", @members)
                writer.write_enum_value("membershipType", @membership_type)
                writer.write_collection_of_object_values("messages", @messages)
                writer.write_collection_of_object_values("sharedWithTeams", @shared_with_teams)
                writer.write_collection_of_object_values("tabs", @tabs)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the sharedWithTeams property value. A collection of teams with which a channel is shared.
            ## @return a shared_with_channel_team_info
            ## 
            def shared_with_teams
                return @shared_with_teams
            end
            ## 
            ## Sets the sharedWithTeams property value. A collection of teams with which a channel is shared.
            ## @param value Value to set for the shared_with_teams property.
            ## @return a void
            ## 
            def shared_with_teams=(value)
                @shared_with_teams = value
            end
            ## 
            ## Gets the tabs property value. A collection of all the tabs in the channel. A navigation property.
            ## @return a teams_tab
            ## 
            def tabs
                return @tabs
            end
            ## 
            ## Sets the tabs property value. A collection of all the tabs in the channel. A navigation property.
            ## @param value Value to set for the tabs property.
            ## @return a void
            ## 
            def tabs=(value)
                @tabs = value
            end
            ## 
            ## Gets the tenantId property value. The ID of the Azure Active Directory tenant.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The ID of the Azure Active Directory tenant.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the webUrl property value. A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. A hyperlink that will go to the channel in Microsoft Teams. This is the URL that you get when you right-click a channel in Microsoft Teams and select Get link to channel. This URL should be treated as an opaque blob, and not parsed. Read-only.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
