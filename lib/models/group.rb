require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Group < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.
            @accepted_senders
            ## 
            # Indicates if people external to the organization can send messages to the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @allow_external_senders
            ## 
            # Represents the app roles a group has been granted for an application. Supports $expand.
            @app_role_assignments
            ## 
            # The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. Returned only on $select.
            @assigned_labels
            ## 
            # The licenses that are assigned to the group. Returned only on $select. Supports $filter (eq).Read-only.
            @assigned_licenses
            ## 
            # Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @auto_subscribe_new_members
            ## 
            # The group's calendar. Read-only.
            @calendar
            ## 
            # The calendar view for the calendar. Read-only.
            @calendar_view
            ## 
            # Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList setting value, based on the template definition.Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            @classification
            ## 
            # The group's conversations.
            @conversations
            ## 
            # Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only.
            @created_date_time
            ## 
            # The user (or application) that created the group. NOTE: This is not set if the user is an administrator. Read-only.
            @created_on_behalf_of
            ## 
            # An optional description for the group. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            @description
            ## 
            # The display name for the group. This property is required when a group is created and cannot be cleared during updates. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            @display_name
            ## 
            # The group's default drive. Read-only.
            @drive
            ## 
            # The group's drives. Read-only.
            @drives
            ## 
            # The group's calendar events.
            @events
            ## 
            # Timestamp of when the group is set to expire. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            @expiration_date_time
            ## 
            # The collection of open extensions defined for the group. Read-only. Nullable.
            @extensions
            ## 
            # The collection of lifecycle policies for this group. Read-only. Nullable.
            @group_lifecycle_policies
            ## 
            # Specifies the group type and its membership. If the collection contains Unified, the group is a Microsoft 365 group; otherwise, it's either a security group or distribution group. For details, see groups overview.If the collection includes DynamicMembership, the group has dynamic membership; otherwise, membership is static. Returned by default. Supports $filter (eq, not).
            @group_types
            ## 
            # Indicates whether there are members in this group that have license errors from its group-based license assignment. This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being true). See an example. Supports $filter (eq).
            @has_members_with_license_errors
            ## 
            # True if the group is not displayed in certain parts of the Outlook UI: the Address Book, address lists for selecting message recipients, and the Browse Groups dialog for searching groups; otherwise, false. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @hide_from_address_lists
            ## 
            # True if the group is not displayed in Outlook clients, such as Outlook for Windows and Outlook on the web; otherwise, false. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @hide_from_outlook_clients
            ## 
            # When a group is associated with a team this property determines whether the team is in read-only mode.To read this property, use the /group/{groupId}/team endpoint or the Get team API. To update this property, use the archiveTeam and unarchiveTeam APIs.
            @is_archived
            ## 
            # Indicates whether this group can be assigned to an Azure Active Directory role or not. Optional. This property can only be set while creating the group and is immutable. If set to true, the securityEnabled property must also be set to true, visibility must be Hidden, and the group cannot be a dynamic group (that is, groupTypes cannot contain DynamicMembership). Only callers in Global Administrator and Privileged Role Administrator roles can set this property. The caller must also be assigned the RoleManagement.ReadWrite.Directory permission to set this property or update the membership of such groups. For more, see Using a group to manage Azure AD role assignmentsUsing this feature requires a Azure AD Premium P1 license. Returned by default. Supports $filter (eq, ne, not).
            @is_assignable_to_role
            ## 
            # Indicates whether the signed-in user is subscribed to receive email conversations. Default value is true. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @is_subscribed_by_mail
            ## 
            # Indicates status of the group license assignment to all members of the group. Default value is false. Read-only. Possible values: QueuedForProcessing, ProcessingInProgress, and ProcessingComplete.Returned only on $select. Read-only.
            @license_processing_state
            ## 
            # The SMTP address for the group, for example, 'serviceadmins@contoso.onmicrosoft.com'. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @mail
            ## 
            # Specifies whether the group is mail-enabled. Required. Returned by default. Supports $filter (eq, ne, not).
            @mail_enabled
            ## 
            # The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the ASCII character set 0 - 127 except the following: @ () / [] ' ; : <> , SPACE. Required. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @mail_nickname
            ## 
            # Groups that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports $expand.
            @member_of
            ## 
            # The members of this group, who can be users, devices, other groups, or service principals. Supports the List members, Add member, and Remove member operations. Nullable. Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName).
            @members
            ## 
            # A list of group members with license errors from this group-based license assignment. Read-only.
            @members_with_license_errors
            ## 
            # The rule that determines members for this group if the group is a dynamic group (groupTypes contains DynamicMembership). For more information about the syntax of the membership rule, see Membership Rules syntax. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            @membership_rule
            ## 
            # Indicates whether the dynamic membership processing is on or paused. Possible values are On or Paused. Returned by default. Supports $filter (eq, ne, not, in).
            @membership_rule_processing_state
            ## 
            # The onPremisesDomainName property
            @on_premises_domain_name
            ## 
            # Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in).
            @on_premises_last_sync_date_time
            ## 
            # The onPremisesNetBiosName property
            @on_premises_net_bios_name
            ## 
            # Errors when using Microsoft synchronization product during provisioning. Returned by default. Supports $filter (eq, not).
            @on_premises_provisioning_errors
            ## 
            # Contains the on-premises SAM account name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith). Read-only.
            @on_premises_sam_account_name
            ## 
            # Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Returned by default. Supports $filter (eq including on null values). Read-only.
            @on_premises_security_identifier
            ## 
            # true if this group is synced from an on-premises directory; false if this group was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Returned by default. Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            @on_premises_sync_enabled
            ## 
            # The onenote property
            @onenote
            ## 
            # The owners of the group. Limited to 100 owners. Nullable. If this property is not specified when creating a Microsoft 365 group, the calling user is automatically assigned as the group owner.  Supports $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1). Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName).
            @owners
            ## 
            # The permission that has been granted for a group to a specific application. Supports $expand.
            @permission_grants
            ## 
            # The group's profile photo
            @photo
            ## 
            # The profile photos owned by the group. Read-only. Nullable.
            @photos
            ## 
            # Entry-point to Planner resource that might exist for a Unified Group.
            @planner
            ## 
            # The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling user must be assigned one of the following Azure AD roles:  Global Administrator  User Account Administrator Directory Writer  Exchange Administrator  SharePoint Administrator  For more information about this property, see OneDrive Online Multi-Geo. Nullable. Returned by default.
            @preferred_data_location
            ## 
            # The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @preferred_language
            ## 
            # Email addresses for the group that direct to the same group mailbox. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. The any operator is required to filter expressions on multi-valued properties. Returned by default. Read-only. Not nullable. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            @proxy_addresses
            ## 
            # The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable
            @rejected_senders
            ## 
            # Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the renew service action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            @renewed_date_time
            ## 
            # Specifies whether the group is a security group. Required. Returned by default. Supports $filter (eq, ne, not, in).
            @security_enabled
            ## 
            # Security identifier of the group, used in Windows scenarios. Returned by default.
            @security_identifier
            ## 
            # Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.
            @settings
            ## 
            # The list of SharePoint sites in this group. Access the default site with /sites/root.
            @sites
            ## 
            # The team associated with this group.
            @team
            ## 
            # Specifies a Microsoft 365 group's color theme. Possible values are Teal, Purple, Green, Blue, Pink, Orange or Red. Returned by default.
            @theme
            ## 
            # The group's conversation threads. Nullable.
            @threads
            ## 
            # The groups that a group is a member of, either directly and through nested membership. Nullable.
            @transitive_member_of
            ## 
            # The direct and transitive members of a group. Nullable.
            @transitive_members
            ## 
            # Count of conversations that have received new posts since the signed-in user last visited the group. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @unseen_count
            ## 
            # Specifies the group join policy and group content visibility for groups. Possible values are: Private, Public, or HiddenMembership. HiddenMembership can be set only for Microsoft 365 groups, when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation. If visibility value is not specified during group creation on Microsoft Graph, a security group is created as Private by default and Microsoft 365 group is Public. Groups assignable to roles are always Private. See group visibility options to learn more. Returned by default. Nullable.
            @visibility
            ## 
            ## Gets the acceptedSenders property value. The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.
            ## @return a directory_object
            ## 
            def accepted_senders
                return @accepted_senders
            end
            ## 
            ## Sets the acceptedSenders property value. The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.
            ## @param value Value to set for the accepted_senders property.
            ## @return a void
            ## 
            def accepted_senders=(value)
                @accepted_senders = value
            end
            ## 
            ## Gets the allowExternalSenders property value. Indicates if people external to the organization can send messages to the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def allow_external_senders
                return @allow_external_senders
            end
            ## 
            ## Sets the allowExternalSenders property value. Indicates if people external to the organization can send messages to the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the allow_external_senders property.
            ## @return a void
            ## 
            def allow_external_senders=(value)
                @allow_external_senders = value
            end
            ## 
            ## Gets the appRoleAssignments property value. Represents the app roles a group has been granted for an application. Supports $expand.
            ## @return a app_role_assignment
            ## 
            def app_role_assignments
                return @app_role_assignments
            end
            ## 
            ## Sets the appRoleAssignments property value. Represents the app roles a group has been granted for an application. Supports $expand.
            ## @param value Value to set for the app_role_assignments property.
            ## @return a void
            ## 
            def app_role_assignments=(value)
                @app_role_assignments = value
            end
            ## 
            ## Gets the assignedLabels property value. The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. Returned only on $select.
            ## @return a assigned_label
            ## 
            def assigned_labels
                return @assigned_labels
            end
            ## 
            ## Sets the assignedLabels property value. The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. Returned only on $select.
            ## @param value Value to set for the assigned_labels property.
            ## @return a void
            ## 
            def assigned_labels=(value)
                @assigned_labels = value
            end
            ## 
            ## Gets the assignedLicenses property value. The licenses that are assigned to the group. Returned only on $select. Supports $filter (eq).Read-only.
            ## @return a assigned_license
            ## 
            def assigned_licenses
                return @assigned_licenses
            end
            ## 
            ## Sets the assignedLicenses property value. The licenses that are assigned to the group. Returned only on $select. Supports $filter (eq).Read-only.
            ## @param value Value to set for the assigned_licenses property.
            ## @return a void
            ## 
            def assigned_licenses=(value)
                @assigned_licenses = value
            end
            ## 
            ## Gets the autoSubscribeNewMembers property value. Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def auto_subscribe_new_members
                return @auto_subscribe_new_members
            end
            ## 
            ## Sets the autoSubscribeNewMembers property value. Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the auto_subscribe_new_members property.
            ## @return a void
            ## 
            def auto_subscribe_new_members=(value)
                @auto_subscribe_new_members = value
            end
            ## 
            ## Gets the calendar property value. The group's calendar. Read-only.
            ## @return a calendar
            ## 
            def calendar
                return @calendar
            end
            ## 
            ## Sets the calendar property value. The group's calendar. Read-only.
            ## @param value Value to set for the calendar property.
            ## @return a void
            ## 
            def calendar=(value)
                @calendar = value
            end
            ## 
            ## Gets the calendarView property value. The calendar view for the calendar. Read-only.
            ## @return a event
            ## 
            def calendar_view
                return @calendar_view
            end
            ## 
            ## Sets the calendarView property value. The calendar view for the calendar. Read-only.
            ## @param value Value to set for the calendar_view property.
            ## @return a void
            ## 
            def calendar_view=(value)
                @calendar_view = value
            end
            ## 
            ## Gets the classification property value. Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList setting value, based on the template definition.Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @return a string
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList setting value, based on the template definition.Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new group and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.group"
            end
            ## 
            ## Gets the conversations property value. The group's conversations.
            ## @return a conversation
            ## 
            def conversations
                return @conversations
            end
            ## 
            ## Sets the conversations property value. The group's conversations.
            ## @param value Value to set for the conversations property.
            ## @return a void
            ## 
            def conversations=(value)
                @conversations = value
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Gets the createdOnBehalfOf property value. The user (or application) that created the group. NOTE: This is not set if the user is an administrator. Read-only.
            ## @return a directory_object
            ## 
            def created_on_behalf_of
                return @created_on_behalf_of
            end
            ## 
            ## Sets the createdOnBehalfOf property value. The user (or application) that created the group. NOTE: This is not set if the user is an administrator. Read-only.
            ## @param value Value to set for the created_on_behalf_of property.
            ## @return a void
            ## 
            def created_on_behalf_of=(value)
                @created_on_behalf_of = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Group.new
            end
            ## 
            ## Gets the description property value. An optional description for the group. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. An optional description for the group. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the group. This property is required when a group is created and cannot be cleared during updates. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the group. This property is required when a group is created and cannot be cleared during updates. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the drive property value. The group's default drive. Read-only.
            ## @return a drive
            ## 
            def drive
                return @drive
            end
            ## 
            ## Sets the drive property value. The group's default drive. Read-only.
            ## @param value Value to set for the drive property.
            ## @return a void
            ## 
            def drive=(value)
                @drive = value
            end
            ## 
            ## Gets the drives property value. The group's drives. Read-only.
            ## @return a drive
            ## 
            def drives
                return @drives
            end
            ## 
            ## Sets the drives property value. The group's drives. Read-only.
            ## @param value Value to set for the drives property.
            ## @return a void
            ## 
            def drives=(value)
                @drives = value
            end
            ## 
            ## Gets the events property value. The group's calendar events.
            ## @return a event
            ## 
            def events
                return @events
            end
            ## 
            ## Sets the events property value. The group's calendar events.
            ## @param value Value to set for the events property.
            ## @return a void
            ## 
            def events=(value)
                @events = value
            end
            ## 
            ## Gets the expirationDateTime property value. Timestamp of when the group is set to expire. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Timestamp of when the group is set to expire. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the group. Read-only. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the group. Read-only. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "acceptedSenders" => lambda {|n| @accepted_senders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "allowExternalSenders" => lambda {|n| @allow_external_senders = n.get_boolean_value() },
                    "appRoleAssignments" => lambda {|n| @app_role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppRoleAssignment.create_from_discriminator_value(pn) }) },
                    "assignedLabels" => lambda {|n| @assigned_labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedLabel.create_from_discriminator_value(pn) }) },
                    "assignedLicenses" => lambda {|n| @assigned_licenses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedLicense.create_from_discriminator_value(pn) }) },
                    "autoSubscribeNewMembers" => lambda {|n| @auto_subscribe_new_members = n.get_boolean_value() },
                    "calendar" => lambda {|n| @calendar = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Calendar.create_from_discriminator_value(pn) }) },
                    "calendarView" => lambda {|n| @calendar_view = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "classification" => lambda {|n| @classification = n.get_string_value() },
                    "conversations" => lambda {|n| @conversations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Conversation.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "createdOnBehalfOf" => lambda {|n| @created_on_behalf_of = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "drive" => lambda {|n| @drive = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }) },
                    "drives" => lambda {|n| @drives = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }) },
                    "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Extension.create_from_discriminator_value(pn) }) },
                    "groupLifecyclePolicies" => lambda {|n| @group_lifecycle_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::GroupLifecyclePolicy.create_from_discriminator_value(pn) }) },
                    "groupTypes" => lambda {|n| @group_types = n.get_collection_of_primitive_values(String) },
                    "hasMembersWithLicenseErrors" => lambda {|n| @has_members_with_license_errors = n.get_boolean_value() },
                    "hideFromAddressLists" => lambda {|n| @hide_from_address_lists = n.get_boolean_value() },
                    "hideFromOutlookClients" => lambda {|n| @hide_from_outlook_clients = n.get_boolean_value() },
                    "isArchived" => lambda {|n| @is_archived = n.get_boolean_value() },
                    "isAssignableToRole" => lambda {|n| @is_assignable_to_role = n.get_boolean_value() },
                    "isSubscribedByMail" => lambda {|n| @is_subscribed_by_mail = n.get_boolean_value() },
                    "licenseProcessingState" => lambda {|n| @license_processing_state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::LicenseProcessingState.create_from_discriminator_value(pn) }) },
                    "mail" => lambda {|n| @mail = n.get_string_value() },
                    "mailEnabled" => lambda {|n| @mail_enabled = n.get_boolean_value() },
                    "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                    "memberOf" => lambda {|n| @member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "membersWithLicenseErrors" => lambda {|n| @members_with_license_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "membershipRule" => lambda {|n| @membership_rule = n.get_string_value() },
                    "membershipRuleProcessingState" => lambda {|n| @membership_rule_processing_state = n.get_string_value() },
                    "onPremisesDomainName" => lambda {|n| @on_premises_domain_name = n.get_string_value() },
                    "onPremisesLastSyncDateTime" => lambda {|n| @on_premises_last_sync_date_time = n.get_date_time_value() },
                    "onPremisesNetBiosName" => lambda {|n| @on_premises_net_bios_name = n.get_string_value() },
                    "onPremisesProvisioningErrors" => lambda {|n| @on_premises_provisioning_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnPremisesProvisioningError.create_from_discriminator_value(pn) }) },
                    "onPremisesSamAccountName" => lambda {|n| @on_premises_sam_account_name = n.get_string_value() },
                    "onPremisesSecurityIdentifier" => lambda {|n| @on_premises_security_identifier = n.get_string_value() },
                    "onPremisesSyncEnabled" => lambda {|n| @on_premises_sync_enabled = n.get_boolean_value() },
                    "onenote" => lambda {|n| @onenote = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Onenote.create_from_discriminator_value(pn) }) },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "permissionGrants" => lambda {|n| @permission_grants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ResourceSpecificPermissionGrant.create_from_discriminator_value(pn) }) },
                    "photo" => lambda {|n| @photo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "photos" => lambda {|n| @photos = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "planner" => lambda {|n| @planner = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PlannerGroup.create_from_discriminator_value(pn) }) },
                    "preferredDataLocation" => lambda {|n| @preferred_data_location = n.get_string_value() },
                    "preferredLanguage" => lambda {|n| @preferred_language = n.get_string_value() },
                    "proxyAddresses" => lambda {|n| @proxy_addresses = n.get_collection_of_primitive_values(String) },
                    "rejectedSenders" => lambda {|n| @rejected_senders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "renewedDateTime" => lambda {|n| @renewed_date_time = n.get_date_time_value() },
                    "securityEnabled" => lambda {|n| @security_enabled = n.get_boolean_value() },
                    "securityIdentifier" => lambda {|n| @security_identifier = n.get_string_value() },
                    "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::GroupSetting.create_from_discriminator_value(pn) }) },
                    "sites" => lambda {|n| @sites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Site.create_from_discriminator_value(pn) }) },
                    "team" => lambda {|n| @team = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }) },
                    "theme" => lambda {|n| @theme = n.get_string_value() },
                    "threads" => lambda {|n| @threads = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ConversationThread.create_from_discriminator_value(pn) }) },
                    "transitiveMemberOf" => lambda {|n| @transitive_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "transitiveMembers" => lambda {|n| @transitive_members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "unseenCount" => lambda {|n| @unseen_count = n.get_number_value() },
                    "visibility" => lambda {|n| @visibility = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupLifecyclePolicies property value. The collection of lifecycle policies for this group. Read-only. Nullable.
            ## @return a group_lifecycle_policy
            ## 
            def group_lifecycle_policies
                return @group_lifecycle_policies
            end
            ## 
            ## Sets the groupLifecyclePolicies property value. The collection of lifecycle policies for this group. Read-only. Nullable.
            ## @param value Value to set for the group_lifecycle_policies property.
            ## @return a void
            ## 
            def group_lifecycle_policies=(value)
                @group_lifecycle_policies = value
            end
            ## 
            ## Gets the groupTypes property value. Specifies the group type and its membership. If the collection contains Unified, the group is a Microsoft 365 group; otherwise, it's either a security group or distribution group. For details, see groups overview.If the collection includes DynamicMembership, the group has dynamic membership; otherwise, membership is static. Returned by default. Supports $filter (eq, not).
            ## @return a string
            ## 
            def group_types
                return @group_types
            end
            ## 
            ## Sets the groupTypes property value. Specifies the group type and its membership. If the collection contains Unified, the group is a Microsoft 365 group; otherwise, it's either a security group or distribution group. For details, see groups overview.If the collection includes DynamicMembership, the group has dynamic membership; otherwise, membership is static. Returned by default. Supports $filter (eq, not).
            ## @param value Value to set for the group_types property.
            ## @return a void
            ## 
            def group_types=(value)
                @group_types = value
            end
            ## 
            ## Gets the hasMembersWithLicenseErrors property value. Indicates whether there are members in this group that have license errors from its group-based license assignment. This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being true). See an example. Supports $filter (eq).
            ## @return a boolean
            ## 
            def has_members_with_license_errors
                return @has_members_with_license_errors
            end
            ## 
            ## Sets the hasMembersWithLicenseErrors property value. Indicates whether there are members in this group that have license errors from its group-based license assignment. This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being true). See an example. Supports $filter (eq).
            ## @param value Value to set for the has_members_with_license_errors property.
            ## @return a void
            ## 
            def has_members_with_license_errors=(value)
                @has_members_with_license_errors = value
            end
            ## 
            ## Gets the hideFromAddressLists property value. True if the group is not displayed in certain parts of the Outlook UI: the Address Book, address lists for selecting message recipients, and the Browse Groups dialog for searching groups; otherwise, false. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def hide_from_address_lists
                return @hide_from_address_lists
            end
            ## 
            ## Sets the hideFromAddressLists property value. True if the group is not displayed in certain parts of the Outlook UI: the Address Book, address lists for selecting message recipients, and the Browse Groups dialog for searching groups; otherwise, false. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the hide_from_address_lists property.
            ## @return a void
            ## 
            def hide_from_address_lists=(value)
                @hide_from_address_lists = value
            end
            ## 
            ## Gets the hideFromOutlookClients property value. True if the group is not displayed in Outlook clients, such as Outlook for Windows and Outlook on the web; otherwise, false. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def hide_from_outlook_clients
                return @hide_from_outlook_clients
            end
            ## 
            ## Sets the hideFromOutlookClients property value. True if the group is not displayed in Outlook clients, such as Outlook for Windows and Outlook on the web; otherwise, false. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the hide_from_outlook_clients property.
            ## @return a void
            ## 
            def hide_from_outlook_clients=(value)
                @hide_from_outlook_clients = value
            end
            ## 
            ## Gets the isArchived property value. When a group is associated with a team this property determines whether the team is in read-only mode.To read this property, use the /group/{groupId}/team endpoint or the Get team API. To update this property, use the archiveTeam and unarchiveTeam APIs.
            ## @return a boolean
            ## 
            def is_archived
                return @is_archived
            end
            ## 
            ## Sets the isArchived property value. When a group is associated with a team this property determines whether the team is in read-only mode.To read this property, use the /group/{groupId}/team endpoint or the Get team API. To update this property, use the archiveTeam and unarchiveTeam APIs.
            ## @param value Value to set for the is_archived property.
            ## @return a void
            ## 
            def is_archived=(value)
                @is_archived = value
            end
            ## 
            ## Gets the isAssignableToRole property value. Indicates whether this group can be assigned to an Azure Active Directory role or not. Optional. This property can only be set while creating the group and is immutable. If set to true, the securityEnabled property must also be set to true, visibility must be Hidden, and the group cannot be a dynamic group (that is, groupTypes cannot contain DynamicMembership). Only callers in Global Administrator and Privileged Role Administrator roles can set this property. The caller must also be assigned the RoleManagement.ReadWrite.Directory permission to set this property or update the membership of such groups. For more, see Using a group to manage Azure AD role assignmentsUsing this feature requires a Azure AD Premium P1 license. Returned by default. Supports $filter (eq, ne, not).
            ## @return a boolean
            ## 
            def is_assignable_to_role
                return @is_assignable_to_role
            end
            ## 
            ## Sets the isAssignableToRole property value. Indicates whether this group can be assigned to an Azure Active Directory role or not. Optional. This property can only be set while creating the group and is immutable. If set to true, the securityEnabled property must also be set to true, visibility must be Hidden, and the group cannot be a dynamic group (that is, groupTypes cannot contain DynamicMembership). Only callers in Global Administrator and Privileged Role Administrator roles can set this property. The caller must also be assigned the RoleManagement.ReadWrite.Directory permission to set this property or update the membership of such groups. For more, see Using a group to manage Azure AD role assignmentsUsing this feature requires a Azure AD Premium P1 license. Returned by default. Supports $filter (eq, ne, not).
            ## @param value Value to set for the is_assignable_to_role property.
            ## @return a void
            ## 
            def is_assignable_to_role=(value)
                @is_assignable_to_role = value
            end
            ## 
            ## Gets the isSubscribedByMail property value. Indicates whether the signed-in user is subscribed to receive email conversations. Default value is true. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def is_subscribed_by_mail
                return @is_subscribed_by_mail
            end
            ## 
            ## Sets the isSubscribedByMail property value. Indicates whether the signed-in user is subscribed to receive email conversations. Default value is true. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the is_subscribed_by_mail property.
            ## @return a void
            ## 
            def is_subscribed_by_mail=(value)
                @is_subscribed_by_mail = value
            end
            ## 
            ## Gets the licenseProcessingState property value. Indicates status of the group license assignment to all members of the group. Default value is false. Read-only. Possible values: QueuedForProcessing, ProcessingInProgress, and ProcessingComplete.Returned only on $select. Read-only.
            ## @return a license_processing_state
            ## 
            def license_processing_state
                return @license_processing_state
            end
            ## 
            ## Sets the licenseProcessingState property value. Indicates status of the group license assignment to all members of the group. Default value is false. Read-only. Possible values: QueuedForProcessing, ProcessingInProgress, and ProcessingComplete.Returned only on $select. Read-only.
            ## @param value Value to set for the license_processing_state property.
            ## @return a void
            ## 
            def license_processing_state=(value)
                @license_processing_state = value
            end
            ## 
            ## Gets the mail property value. The SMTP address for the group, for example, 'serviceadmins@contoso.onmicrosoft.com'. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def mail
                return @mail
            end
            ## 
            ## Sets the mail property value. The SMTP address for the group, for example, 'serviceadmins@contoso.onmicrosoft.com'. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the mail property.
            ## @return a void
            ## 
            def mail=(value)
                @mail = value
            end
            ## 
            ## Gets the mailEnabled property value. Specifies whether the group is mail-enabled. Required. Returned by default. Supports $filter (eq, ne, not).
            ## @return a boolean
            ## 
            def mail_enabled
                return @mail_enabled
            end
            ## 
            ## Sets the mailEnabled property value. Specifies whether the group is mail-enabled. Required. Returned by default. Supports $filter (eq, ne, not).
            ## @param value Value to set for the mail_enabled property.
            ## @return a void
            ## 
            def mail_enabled=(value)
                @mail_enabled = value
            end
            ## 
            ## Gets the mailNickname property value. The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the ASCII character set 0 - 127 except the following: @ () / [] ' ; : <> , SPACE. Required. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def mail_nickname
                return @mail_nickname
            end
            ## 
            ## Sets the mailNickname property value. The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the ASCII character set 0 - 127 except the following: @ () / [] ' ; : <> , SPACE. Required. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the mail_nickname property.
            ## @return a void
            ## 
            def mail_nickname=(value)
                @mail_nickname = value
            end
            ## 
            ## Gets the memberOf property value. Groups that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. Groups that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the member_of property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Gets the members property value. The members of this group, who can be users, devices, other groups, or service principals. Supports the List members, Add member, and Remove member operations. Nullable. Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName).
            ## @return a directory_object
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. The members of this group, who can be users, devices, other groups, or service principals. Supports the List members, Add member, and Remove member operations. Nullable. Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName).
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the membersWithLicenseErrors property value. A list of group members with license errors from this group-based license assignment. Read-only.
            ## @return a directory_object
            ## 
            def members_with_license_errors
                return @members_with_license_errors
            end
            ## 
            ## Sets the membersWithLicenseErrors property value. A list of group members with license errors from this group-based license assignment. Read-only.
            ## @param value Value to set for the members_with_license_errors property.
            ## @return a void
            ## 
            def members_with_license_errors=(value)
                @members_with_license_errors = value
            end
            ## 
            ## Gets the membershipRule property value. The rule that determines members for this group if the group is a dynamic group (groupTypes contains DynamicMembership). For more information about the syntax of the membership rule, see Membership Rules syntax. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @return a string
            ## 
            def membership_rule
                return @membership_rule
            end
            ## 
            ## Sets the membershipRule property value. The rule that determines members for this group if the group is a dynamic group (groupTypes contains DynamicMembership). For more information about the syntax of the membership rule, see Membership Rules syntax. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @param value Value to set for the membership_rule property.
            ## @return a void
            ## 
            def membership_rule=(value)
                @membership_rule = value
            end
            ## 
            ## Gets the membershipRuleProcessingState property value. Indicates whether the dynamic membership processing is on or paused. Possible values are On or Paused. Returned by default. Supports $filter (eq, ne, not, in).
            ## @return a string
            ## 
            def membership_rule_processing_state
                return @membership_rule_processing_state
            end
            ## 
            ## Sets the membershipRuleProcessingState property value. Indicates whether the dynamic membership processing is on or paused. Possible values are On or Paused. Returned by default. Supports $filter (eq, ne, not, in).
            ## @param value Value to set for the membership_rule_processing_state property.
            ## @return a void
            ## 
            def membership_rule_processing_state=(value)
                @membership_rule_processing_state = value
            end
            ## 
            ## Gets the onPremisesDomainName property value. The onPremisesDomainName property
            ## @return a string
            ## 
            def on_premises_domain_name
                return @on_premises_domain_name
            end
            ## 
            ## Sets the onPremisesDomainName property value. The onPremisesDomainName property
            ## @param value Value to set for the on_premises_domain_name property.
            ## @return a void
            ## 
            def on_premises_domain_name=(value)
                @on_premises_domain_name = value
            end
            ## 
            ## Gets the onPremisesLastSyncDateTime property value. Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in).
            ## @return a date_time
            ## 
            def on_premises_last_sync_date_time
                return @on_premises_last_sync_date_time
            end
            ## 
            ## Sets the onPremisesLastSyncDateTime property value. Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in).
            ## @param value Value to set for the on_premises_last_sync_date_time property.
            ## @return a void
            ## 
            def on_premises_last_sync_date_time=(value)
                @on_premises_last_sync_date_time = value
            end
            ## 
            ## Gets the onPremisesNetBiosName property value. The onPremisesNetBiosName property
            ## @return a string
            ## 
            def on_premises_net_bios_name
                return @on_premises_net_bios_name
            end
            ## 
            ## Sets the onPremisesNetBiosName property value. The onPremisesNetBiosName property
            ## @param value Value to set for the on_premises_net_bios_name property.
            ## @return a void
            ## 
            def on_premises_net_bios_name=(value)
                @on_premises_net_bios_name = value
            end
            ## 
            ## Gets the onPremisesProvisioningErrors property value. Errors when using Microsoft synchronization product during provisioning. Returned by default. Supports $filter (eq, not).
            ## @return a on_premises_provisioning_error
            ## 
            def on_premises_provisioning_errors
                return @on_premises_provisioning_errors
            end
            ## 
            ## Sets the onPremisesProvisioningErrors property value. Errors when using Microsoft synchronization product during provisioning. Returned by default. Supports $filter (eq, not).
            ## @param value Value to set for the on_premises_provisioning_errors property.
            ## @return a void
            ## 
            def on_premises_provisioning_errors=(value)
                @on_premises_provisioning_errors = value
            end
            ## 
            ## Gets the onPremisesSamAccountName property value. Contains the on-premises SAM account name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith). Read-only.
            ## @return a string
            ## 
            def on_premises_sam_account_name
                return @on_premises_sam_account_name
            end
            ## 
            ## Sets the onPremisesSamAccountName property value. Contains the on-premises SAM account name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith). Read-only.
            ## @param value Value to set for the on_premises_sam_account_name property.
            ## @return a void
            ## 
            def on_premises_sam_account_name=(value)
                @on_premises_sam_account_name = value
            end
            ## 
            ## Gets the onPremisesSecurityIdentifier property value. Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Returned by default. Supports $filter (eq including on null values). Read-only.
            ## @return a string
            ## 
            def on_premises_security_identifier
                return @on_premises_security_identifier
            end
            ## 
            ## Sets the onPremisesSecurityIdentifier property value. Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Returned by default. Supports $filter (eq including on null values). Read-only.
            ## @param value Value to set for the on_premises_security_identifier property.
            ## @return a void
            ## 
            def on_premises_security_identifier=(value)
                @on_premises_security_identifier = value
            end
            ## 
            ## Gets the onPremisesSyncEnabled property value. true if this group is synced from an on-premises directory; false if this group was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Returned by default. Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @return a boolean
            ## 
            def on_premises_sync_enabled
                return @on_premises_sync_enabled
            end
            ## 
            ## Sets the onPremisesSyncEnabled property value. true if this group is synced from an on-premises directory; false if this group was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Returned by default. Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @param value Value to set for the on_premises_sync_enabled property.
            ## @return a void
            ## 
            def on_premises_sync_enabled=(value)
                @on_premises_sync_enabled = value
            end
            ## 
            ## Gets the onenote property value. The onenote property
            ## @return a onenote
            ## 
            def onenote
                return @onenote
            end
            ## 
            ## Sets the onenote property value. The onenote property
            ## @param value Value to set for the onenote property.
            ## @return a void
            ## 
            def onenote=(value)
                @onenote = value
            end
            ## 
            ## Gets the owners property value. The owners of the group. Limited to 100 owners. Nullable. If this property is not specified when creating a Microsoft 365 group, the calling user is automatically assigned as the group owner.  Supports $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1). Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName).
            ## @return a directory_object
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. The owners of the group. Limited to 100 owners. Nullable. If this property is not specified when creating a Microsoft 365 group, the calling user is automatically assigned as the group owner.  Supports $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1). Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName).
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the permissionGrants property value. The permission that has been granted for a group to a specific application. Supports $expand.
            ## @return a resource_specific_permission_grant
            ## 
            def permission_grants
                return @permission_grants
            end
            ## 
            ## Sets the permissionGrants property value. The permission that has been granted for a group to a specific application. Supports $expand.
            ## @param value Value to set for the permission_grants property.
            ## @return a void
            ## 
            def permission_grants=(value)
                @permission_grants = value
            end
            ## 
            ## Gets the photo property value. The group's profile photo
            ## @return a profile_photo
            ## 
            def photo
                return @photo
            end
            ## 
            ## Sets the photo property value. The group's profile photo
            ## @param value Value to set for the photo property.
            ## @return a void
            ## 
            def photo=(value)
                @photo = value
            end
            ## 
            ## Gets the photos property value. The profile photos owned by the group. Read-only. Nullable.
            ## @return a profile_photo
            ## 
            def photos
                return @photos
            end
            ## 
            ## Sets the photos property value. The profile photos owned by the group. Read-only. Nullable.
            ## @param value Value to set for the photos property.
            ## @return a void
            ## 
            def photos=(value)
                @photos = value
            end
            ## 
            ## Gets the planner property value. Entry-point to Planner resource that might exist for a Unified Group.
            ## @return a planner_group
            ## 
            def planner
                return @planner
            end
            ## 
            ## Sets the planner property value. Entry-point to Planner resource that might exist for a Unified Group.
            ## @param value Value to set for the planner property.
            ## @return a void
            ## 
            def planner=(value)
                @planner = value
            end
            ## 
            ## Gets the preferredDataLocation property value. The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling user must be assigned one of the following Azure AD roles:  Global Administrator  User Account Administrator Directory Writer  Exchange Administrator  SharePoint Administrator  For more information about this property, see OneDrive Online Multi-Geo. Nullable. Returned by default.
            ## @return a string
            ## 
            def preferred_data_location
                return @preferred_data_location
            end
            ## 
            ## Sets the preferredDataLocation property value. The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling user must be assigned one of the following Azure AD roles:  Global Administrator  User Account Administrator Directory Writer  Exchange Administrator  SharePoint Administrator  For more information about this property, see OneDrive Online Multi-Geo. Nullable. Returned by default.
            ## @param value Value to set for the preferred_data_location property.
            ## @return a void
            ## 
            def preferred_data_location=(value)
                @preferred_data_location = value
            end
            ## 
            ## Gets the preferredLanguage property value. The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def preferred_language
                return @preferred_language
            end
            ## 
            ## Sets the preferredLanguage property value. The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the preferred_language property.
            ## @return a void
            ## 
            def preferred_language=(value)
                @preferred_language = value
            end
            ## 
            ## Gets the proxyAddresses property value. Email addresses for the group that direct to the same group mailbox. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. The any operator is required to filter expressions on multi-valued properties. Returned by default. Read-only. Not nullable. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @return a string
            ## 
            def proxy_addresses
                return @proxy_addresses
            end
            ## 
            ## Sets the proxyAddresses property value. Email addresses for the group that direct to the same group mailbox. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. The any operator is required to filter expressions on multi-valued properties. Returned by default. Read-only. Not nullable. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @param value Value to set for the proxy_addresses property.
            ## @return a void
            ## 
            def proxy_addresses=(value)
                @proxy_addresses = value
            end
            ## 
            ## Gets the rejectedSenders property value. The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable
            ## @return a directory_object
            ## 
            def rejected_senders
                return @rejected_senders
            end
            ## 
            ## Sets the rejectedSenders property value. The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable
            ## @param value Value to set for the rejected_senders property.
            ## @return a void
            ## 
            def rejected_senders=(value)
                @rejected_senders = value
            end
            ## 
            ## Gets the renewedDateTime property value. Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the renew service action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @return a date_time
            ## 
            def renewed_date_time
                return @renewed_date_time
            end
            ## 
            ## Sets the renewedDateTime property value. Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the renew service action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @param value Value to set for the renewed_date_time property.
            ## @return a void
            ## 
            def renewed_date_time=(value)
                @renewed_date_time = value
            end
            ## 
            ## Gets the securityEnabled property value. Specifies whether the group is a security group. Required. Returned by default. Supports $filter (eq, ne, not, in).
            ## @return a boolean
            ## 
            def security_enabled
                return @security_enabled
            end
            ## 
            ## Sets the securityEnabled property value. Specifies whether the group is a security group. Required. Returned by default. Supports $filter (eq, ne, not, in).
            ## @param value Value to set for the security_enabled property.
            ## @return a void
            ## 
            def security_enabled=(value)
                @security_enabled = value
            end
            ## 
            ## Gets the securityIdentifier property value. Security identifier of the group, used in Windows scenarios. Returned by default.
            ## @return a string
            ## 
            def security_identifier
                return @security_identifier
            end
            ## 
            ## Sets the securityIdentifier property value. Security identifier of the group, used in Windows scenarios. Returned by default.
            ## @param value Value to set for the security_identifier property.
            ## @return a void
            ## 
            def security_identifier=(value)
                @security_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("acceptedSenders", @accepted_senders)
                writer.write_boolean_value("allowExternalSenders", @allow_external_senders)
                writer.write_collection_of_object_values("appRoleAssignments", @app_role_assignments)
                writer.write_collection_of_object_values("assignedLabels", @assigned_labels)
                writer.write_collection_of_object_values("assignedLicenses", @assigned_licenses)
                writer.write_boolean_value("autoSubscribeNewMembers", @auto_subscribe_new_members)
                writer.write_object_value("calendar", @calendar)
                writer.write_collection_of_object_values("calendarView", @calendar_view)
                writer.write_string_value("classification", @classification)
                writer.write_collection_of_object_values("conversations", @conversations)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("createdOnBehalfOf", @created_on_behalf_of)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("drive", @drive)
                writer.write_collection_of_object_values("drives", @drives)
                writer.write_collection_of_object_values("events", @events)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_collection_of_object_values("groupLifecyclePolicies", @group_lifecycle_policies)
                writer.write_collection_of_primitive_values("groupTypes", @group_types)
                writer.write_boolean_value("hasMembersWithLicenseErrors", @has_members_with_license_errors)
                writer.write_boolean_value("hideFromAddressLists", @hide_from_address_lists)
                writer.write_boolean_value("hideFromOutlookClients", @hide_from_outlook_clients)
                writer.write_boolean_value("isArchived", @is_archived)
                writer.write_boolean_value("isAssignableToRole", @is_assignable_to_role)
                writer.write_boolean_value("isSubscribedByMail", @is_subscribed_by_mail)
                writer.write_object_value("licenseProcessingState", @license_processing_state)
                writer.write_string_value("mail", @mail)
                writer.write_boolean_value("mailEnabled", @mail_enabled)
                writer.write_string_value("mailNickname", @mail_nickname)
                writer.write_collection_of_object_values("memberOf", @member_of)
                writer.write_collection_of_object_values("members", @members)
                writer.write_collection_of_object_values("membersWithLicenseErrors", @members_with_license_errors)
                writer.write_string_value("membershipRule", @membership_rule)
                writer.write_string_value("membershipRuleProcessingState", @membership_rule_processing_state)
                writer.write_string_value("onPremisesDomainName", @on_premises_domain_name)
                writer.write_date_time_value("onPremisesLastSyncDateTime", @on_premises_last_sync_date_time)
                writer.write_string_value("onPremisesNetBiosName", @on_premises_net_bios_name)
                writer.write_collection_of_object_values("onPremisesProvisioningErrors", @on_premises_provisioning_errors)
                writer.write_string_value("onPremisesSamAccountName", @on_premises_sam_account_name)
                writer.write_string_value("onPremisesSecurityIdentifier", @on_premises_security_identifier)
                writer.write_boolean_value("onPremisesSyncEnabled", @on_premises_sync_enabled)
                writer.write_object_value("onenote", @onenote)
                writer.write_collection_of_object_values("owners", @owners)
                writer.write_collection_of_object_values("permissionGrants", @permission_grants)
                writer.write_object_value("photo", @photo)
                writer.write_collection_of_object_values("photos", @photos)
                writer.write_object_value("planner", @planner)
                writer.write_string_value("preferredDataLocation", @preferred_data_location)
                writer.write_string_value("preferredLanguage", @preferred_language)
                writer.write_collection_of_primitive_values("proxyAddresses", @proxy_addresses)
                writer.write_collection_of_object_values("rejectedSenders", @rejected_senders)
                writer.write_date_time_value("renewedDateTime", @renewed_date_time)
                writer.write_boolean_value("securityEnabled", @security_enabled)
                writer.write_string_value("securityIdentifier", @security_identifier)
                writer.write_collection_of_object_values("settings", @settings)
                writer.write_collection_of_object_values("sites", @sites)
                writer.write_object_value("team", @team)
                writer.write_string_value("theme", @theme)
                writer.write_collection_of_object_values("threads", @threads)
                writer.write_collection_of_object_values("transitiveMemberOf", @transitive_member_of)
                writer.write_collection_of_object_values("transitiveMembers", @transitive_members)
                writer.write_number_value("unseenCount", @unseen_count)
                writer.write_string_value("visibility", @visibility)
            end
            ## 
            ## Gets the settings property value. Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.
            ## @return a group_setting
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the sites property value. The list of SharePoint sites in this group. Access the default site with /sites/root.
            ## @return a site
            ## 
            def sites
                return @sites
            end
            ## 
            ## Sets the sites property value. The list of SharePoint sites in this group. Access the default site with /sites/root.
            ## @param value Value to set for the sites property.
            ## @return a void
            ## 
            def sites=(value)
                @sites = value
            end
            ## 
            ## Gets the team property value. The team associated with this group.
            ## @return a team
            ## 
            def team
                return @team
            end
            ## 
            ## Sets the team property value. The team associated with this group.
            ## @param value Value to set for the team property.
            ## @return a void
            ## 
            def team=(value)
                @team = value
            end
            ## 
            ## Gets the theme property value. Specifies a Microsoft 365 group's color theme. Possible values are Teal, Purple, Green, Blue, Pink, Orange or Red. Returned by default.
            ## @return a string
            ## 
            def theme
                return @theme
            end
            ## 
            ## Sets the theme property value. Specifies a Microsoft 365 group's color theme. Possible values are Teal, Purple, Green, Blue, Pink, Orange or Red. Returned by default.
            ## @param value Value to set for the theme property.
            ## @return a void
            ## 
            def theme=(value)
                @theme = value
            end
            ## 
            ## Gets the threads property value. The group's conversation threads. Nullable.
            ## @return a conversation_thread
            ## 
            def threads
                return @threads
            end
            ## 
            ## Sets the threads property value. The group's conversation threads. Nullable.
            ## @param value Value to set for the threads property.
            ## @return a void
            ## 
            def threads=(value)
                @threads = value
            end
            ## 
            ## Gets the transitiveMemberOf property value. The groups that a group is a member of, either directly and through nested membership. Nullable.
            ## @return a directory_object
            ## 
            def transitive_member_of
                return @transitive_member_of
            end
            ## 
            ## Sets the transitiveMemberOf property value. The groups that a group is a member of, either directly and through nested membership. Nullable.
            ## @param value Value to set for the transitive_member_of property.
            ## @return a void
            ## 
            def transitive_member_of=(value)
                @transitive_member_of = value
            end
            ## 
            ## Gets the transitiveMembers property value. The direct and transitive members of a group. Nullable.
            ## @return a directory_object
            ## 
            def transitive_members
                return @transitive_members
            end
            ## 
            ## Sets the transitiveMembers property value. The direct and transitive members of a group. Nullable.
            ## @param value Value to set for the transitive_members property.
            ## @return a void
            ## 
            def transitive_members=(value)
                @transitive_members = value
            end
            ## 
            ## Gets the unseenCount property value. Count of conversations that have received new posts since the signed-in user last visited the group. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a integer
            ## 
            def unseen_count
                return @unseen_count
            end
            ## 
            ## Sets the unseenCount property value. Count of conversations that have received new posts since the signed-in user last visited the group. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the unseen_count property.
            ## @return a void
            ## 
            def unseen_count=(value)
                @unseen_count = value
            end
            ## 
            ## Gets the visibility property value. Specifies the group join policy and group content visibility for groups. Possible values are: Private, Public, or HiddenMembership. HiddenMembership can be set only for Microsoft 365 groups, when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation. If visibility value is not specified during group creation on Microsoft Graph, a security group is created as Private by default and Microsoft 365 group is Public. Groups assignable to roles are always Private. See group visibility options to learn more. Returned by default. Nullable.
            ## @return a string
            ## 
            def visibility
                return @visibility
            end
            ## 
            ## Sets the visibility property value. Specifies the group join policy and group content visibility for groups. Possible values are: Private, Public, or HiddenMembership. HiddenMembership can be set only for Microsoft 365 groups, when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation. If visibility value is not specified during group creation on Microsoft Graph, a security group is created as Private by default and Microsoft 365 group is Public. Groups assignable to roles are always Private. See group visibility options to learn more. Returned by default. Nullable.
            ## @param value Value to set for the visibility property.
            ## @return a void
            ## 
            def visibility=(value)
                @visibility = value
            end
        end
    end
end
