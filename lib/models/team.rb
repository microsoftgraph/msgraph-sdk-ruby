require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Team < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of channels either hosted in or shared with the team (incoming channels).
            @all_channels
            ## 
            # The collection of channels and messages associated with the team.
            @channels
            ## 
            # An optional label. Typically describes the data or business sensitivity of the team. Must match one of a pre-configured set in the tenant's directory.
            @classification
            ## 
            # Timestamp at which the team was created.
            @created_date_time
            ## 
            # An optional description for the team. Maximum length: 1024 characters.
            @description
            ## 
            # The name of the team.
            @display_name
            ## 
            # Settings to configure use of Giphy, memes, and stickers in the team.
            @fun_settings
            ## 
            # The group property
            @group
            ## 
            # Settings to configure whether guests can create, update, or delete channels in the team.
            @guest_settings
            ## 
            # List of channels shared with the team.
            @incoming_channels
            ## 
            # The apps installed in this team.
            @installed_apps
            ## 
            # A unique ID for the team that has been used in a few places such as the audit log/Office 365 Management Activity API.
            @internal_id
            ## 
            # Whether this team is in read-only mode.
            @is_archived
            ## 
            # Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the team.
            @member_settings
            ## 
            # Members and owners of the team.
            @members
            ## 
            # Settings to configure messaging and mentions in the team.
            @messaging_settings
            ## 
            # The async operations that ran or are running on this team.
            @operations
            ## 
            # The profile photo for the team.
            @photo
            ## 
            # The general channel for the team.
            @primary_channel
            ## 
            # The schedule of shifts for this team.
            @schedule
            ## 
            # Optional. Indicates whether the team is intended for a particular use case.  Each team specialization has access to unique behaviors and experiences targeted to its use case.
            @specialization
            ## 
            # Contains summary information about the team, including number of owners, members, and guests.
            @summary
            ## 
            # The tags associated with the team.
            @tags
            ## 
            # The template this team was created from. See available templates.
            @template
            ## 
            # The ID of the Azure Active Directory tenant.
            @tenant_id
            ## 
            # The visibility of the group and team. Defaults to Public.
            @visibility
            ## 
            # A hyperlink that will go to the team in the Microsoft Teams client. This is the URL that you get when you right-click a team in the Microsoft Teams client and select Get link to team. This URL should be treated as an opaque blob, and not parsed.
            @web_url
            ## 
            ## Gets the allChannels property value. List of channels either hosted in or shared with the team (incoming channels).
            ## @return a channel
            ## 
            def all_channels
                return @all_channels
            end
            ## 
            ## Sets the allChannels property value. List of channels either hosted in or shared with the team (incoming channels).
            ## @param value Value to set for the all_channels property.
            ## @return a void
            ## 
            def all_channels=(value)
                @all_channels = value
            end
            ## 
            ## Gets the channels property value. The collection of channels and messages associated with the team.
            ## @return a channel
            ## 
            def channels
                return @channels
            end
            ## 
            ## Sets the channels property value. The collection of channels and messages associated with the team.
            ## @param value Value to set for the channels property.
            ## @return a void
            ## 
            def channels=(value)
                @channels = value
            end
            ## 
            ## Gets the classification property value. An optional label. Typically describes the data or business sensitivity of the team. Must match one of a pre-configured set in the tenant's directory.
            ## @return a string
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. An optional label. Typically describes the data or business sensitivity of the team. Must match one of a pre-configured set in the tenant's directory.
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new team and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp at which the team was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp at which the team was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a team
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Team.new
            end
            ## 
            ## Gets the description property value. An optional description for the team. Maximum length: 1024 characters.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. An optional description for the team. Maximum length: 1024 characters.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the team.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the team.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the funSettings property value. Settings to configure use of Giphy, memes, and stickers in the team.
            ## @return a team_fun_settings
            ## 
            def fun_settings
                return @fun_settings
            end
            ## 
            ## Sets the funSettings property value. Settings to configure use of Giphy, memes, and stickers in the team.
            ## @param value Value to set for the fun_settings property.
            ## @return a void
            ## 
            def fun_settings=(value)
                @fun_settings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allChannels" => lambda {|n| @all_channels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Channel.create_from_discriminator_value(pn) }) },
                    "channels" => lambda {|n| @channels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Channel.create_from_discriminator_value(pn) }) },
                    "classification" => lambda {|n| @classification = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "funSettings" => lambda {|n| @fun_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamFunSettings.create_from_discriminator_value(pn) }) },
                    "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "guestSettings" => lambda {|n| @guest_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamGuestSettings.create_from_discriminator_value(pn) }) },
                    "incomingChannels" => lambda {|n| @incoming_channels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Channel.create_from_discriminator_value(pn) }) },
                    "installedApps" => lambda {|n| @installed_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamsAppInstallation.create_from_discriminator_value(pn) }) },
                    "internalId" => lambda {|n| @internal_id = n.get_string_value() },
                    "isArchived" => lambda {|n| @is_archived = n.get_boolean_value() },
                    "memberSettings" => lambda {|n| @member_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamMemberSettings.create_from_discriminator_value(pn) }) },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConversationMember.create_from_discriminator_value(pn) }) },
                    "messagingSettings" => lambda {|n| @messaging_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamMessagingSettings.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamsAsyncOperation.create_from_discriminator_value(pn) }) },
                    "photo" => lambda {|n| @photo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "primaryChannel" => lambda {|n| @primary_channel = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Channel.create_from_discriminator_value(pn) }) },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Schedule.create_from_discriminator_value(pn) }) },
                    "specialization" => lambda {|n| @specialization = n.get_enum_value(MicrosoftGraph::Models::TeamSpecialization) },
                    "summary" => lambda {|n| @summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamSummary.create_from_discriminator_value(pn) }) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TeamworkTag.create_from_discriminator_value(pn) }) },
                    "template" => lambda {|n| @template = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsTemplate.create_from_discriminator_value(pn) }) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "visibility" => lambda {|n| @visibility = n.get_enum_value(MicrosoftGraph::Models::TeamVisibilityType) },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the group property value. The group property
            ## @return a group
            ## 
            def group
                return @group
            end
            ## 
            ## Sets the group property value. The group property
            ## @param value Value to set for the group property.
            ## @return a void
            ## 
            def group=(value)
                @group = value
            end
            ## 
            ## Gets the guestSettings property value. Settings to configure whether guests can create, update, or delete channels in the team.
            ## @return a team_guest_settings
            ## 
            def guest_settings
                return @guest_settings
            end
            ## 
            ## Sets the guestSettings property value. Settings to configure whether guests can create, update, or delete channels in the team.
            ## @param value Value to set for the guest_settings property.
            ## @return a void
            ## 
            def guest_settings=(value)
                @guest_settings = value
            end
            ## 
            ## Gets the incomingChannels property value. List of channels shared with the team.
            ## @return a channel
            ## 
            def incoming_channels
                return @incoming_channels
            end
            ## 
            ## Sets the incomingChannels property value. List of channels shared with the team.
            ## @param value Value to set for the incoming_channels property.
            ## @return a void
            ## 
            def incoming_channels=(value)
                @incoming_channels = value
            end
            ## 
            ## Gets the installedApps property value. The apps installed in this team.
            ## @return a teams_app_installation
            ## 
            def installed_apps
                return @installed_apps
            end
            ## 
            ## Sets the installedApps property value. The apps installed in this team.
            ## @param value Value to set for the installed_apps property.
            ## @return a void
            ## 
            def installed_apps=(value)
                @installed_apps = value
            end
            ## 
            ## Gets the internalId property value. A unique ID for the team that has been used in a few places such as the audit log/Office 365 Management Activity API.
            ## @return a string
            ## 
            def internal_id
                return @internal_id
            end
            ## 
            ## Sets the internalId property value. A unique ID for the team that has been used in a few places such as the audit log/Office 365 Management Activity API.
            ## @param value Value to set for the internal_id property.
            ## @return a void
            ## 
            def internal_id=(value)
                @internal_id = value
            end
            ## 
            ## Gets the isArchived property value. Whether this team is in read-only mode.
            ## @return a boolean
            ## 
            def is_archived
                return @is_archived
            end
            ## 
            ## Sets the isArchived property value. Whether this team is in read-only mode.
            ## @param value Value to set for the is_archived property.
            ## @return a void
            ## 
            def is_archived=(value)
                @is_archived = value
            end
            ## 
            ## Gets the memberSettings property value. Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the team.
            ## @return a team_member_settings
            ## 
            def member_settings
                return @member_settings
            end
            ## 
            ## Sets the memberSettings property value. Settings to configure whether members can perform certain actions, for example, create channels and add bots, in the team.
            ## @param value Value to set for the member_settings property.
            ## @return a void
            ## 
            def member_settings=(value)
                @member_settings = value
            end
            ## 
            ## Gets the members property value. Members and owners of the team.
            ## @return a conversation_member
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. Members and owners of the team.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the messagingSettings property value. Settings to configure messaging and mentions in the team.
            ## @return a team_messaging_settings
            ## 
            def messaging_settings
                return @messaging_settings
            end
            ## 
            ## Sets the messagingSettings property value. Settings to configure messaging and mentions in the team.
            ## @param value Value to set for the messaging_settings property.
            ## @return a void
            ## 
            def messaging_settings=(value)
                @messaging_settings = value
            end
            ## 
            ## Gets the operations property value. The async operations that ran or are running on this team.
            ## @return a teams_async_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The async operations that ran or are running on this team.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the photo property value. The profile photo for the team.
            ## @return a profile_photo
            ## 
            def photo
                return @photo
            end
            ## 
            ## Sets the photo property value. The profile photo for the team.
            ## @param value Value to set for the photo property.
            ## @return a void
            ## 
            def photo=(value)
                @photo = value
            end
            ## 
            ## Gets the primaryChannel property value. The general channel for the team.
            ## @return a channel
            ## 
            def primary_channel
                return @primary_channel
            end
            ## 
            ## Sets the primaryChannel property value. The general channel for the team.
            ## @param value Value to set for the primary_channel property.
            ## @return a void
            ## 
            def primary_channel=(value)
                @primary_channel = value
            end
            ## 
            ## Gets the schedule property value. The schedule of shifts for this team.
            ## @return a schedule
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. The schedule of shifts for this team.
            ## @param value Value to set for the schedule property.
            ## @return a void
            ## 
            def schedule=(value)
                @schedule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("allChannels", @all_channels)
                writer.write_collection_of_object_values("channels", @channels)
                writer.write_string_value("classification", @classification)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("funSettings", @fun_settings)
                writer.write_object_value("group", @group)
                writer.write_object_value("guestSettings", @guest_settings)
                writer.write_collection_of_object_values("incomingChannels", @incoming_channels)
                writer.write_collection_of_object_values("installedApps", @installed_apps)
                writer.write_string_value("internalId", @internal_id)
                writer.write_boolean_value("isArchived", @is_archived)
                writer.write_object_value("memberSettings", @member_settings)
                writer.write_collection_of_object_values("members", @members)
                writer.write_object_value("messagingSettings", @messaging_settings)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_object_value("photo", @photo)
                writer.write_object_value("primaryChannel", @primary_channel)
                writer.write_object_value("schedule", @schedule)
                writer.write_enum_value("specialization", @specialization)
                writer.write_object_value("summary", @summary)
                writer.write_collection_of_object_values("tags", @tags)
                writer.write_object_value("template", @template)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_enum_value("visibility", @visibility)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the specialization property value. Optional. Indicates whether the team is intended for a particular use case.  Each team specialization has access to unique behaviors and experiences targeted to its use case.
            ## @return a team_specialization
            ## 
            def specialization
                return @specialization
            end
            ## 
            ## Sets the specialization property value. Optional. Indicates whether the team is intended for a particular use case.  Each team specialization has access to unique behaviors and experiences targeted to its use case.
            ## @param value Value to set for the specialization property.
            ## @return a void
            ## 
            def specialization=(value)
                @specialization = value
            end
            ## 
            ## Gets the summary property value. Contains summary information about the team, including number of owners, members, and guests.
            ## @return a team_summary
            ## 
            def summary
                return @summary
            end
            ## 
            ## Sets the summary property value. Contains summary information about the team, including number of owners, members, and guests.
            ## @param value Value to set for the summary property.
            ## @return a void
            ## 
            def summary=(value)
                @summary = value
            end
            ## 
            ## Gets the tags property value. The tags associated with the team.
            ## @return a teamwork_tag
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The tags associated with the team.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the template property value. The template this team was created from. See available templates.
            ## @return a teams_template
            ## 
            def template
                return @template
            end
            ## 
            ## Sets the template property value. The template this team was created from. See available templates.
            ## @param value Value to set for the template property.
            ## @return a void
            ## 
            def template=(value)
                @template = value
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
            ## Gets the visibility property value. The visibility of the group and team. Defaults to Public.
            ## @return a team_visibility_type
            ## 
            def visibility
                return @visibility
            end
            ## 
            ## Sets the visibility property value. The visibility of the group and team. Defaults to Public.
            ## @param value Value to set for the visibility property.
            ## @return a void
            ## 
            def visibility=(value)
                @visibility = value
            end
            ## 
            ## Gets the webUrl property value. A hyperlink that will go to the team in the Microsoft Teams client. This is the URL that you get when you right-click a team in the Microsoft Teams client and select Get link to team. This URL should be treated as an opaque blob, and not parsed.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. A hyperlink that will go to the team in the Microsoft Teams client. This is the URL that you get when you right-click a team in the Microsoft Teams client and select Get link to team. This URL should be treated as an opaque blob, and not parsed.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
