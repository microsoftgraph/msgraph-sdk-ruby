require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharepointSettings < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of trusted domain GUIDs for the OneDrive sync app.
            @allowed_domain_guids_for_sync_app
            ## 
            # Collection of managed paths available for site creation. Read-only.
            @available_managed_paths_for_site_creation
            ## 
            # The number of days for preserving a deleted user's OneDrive.
            @deleted_user_personal_site_retention_period_in_days
            ## 
            # Collection of file extensions not uploaded by the OneDrive sync app.
            @excluded_file_extensions_for_sync_app
            ## 
            # Specifies the idle session sign-out policies for the tenant.
            @idle_session_sign_out
            ## 
            # Specifies the image tagging option for the tenant. Possible values are: disabled, basic, enhanced.
            @image_tagging_option
            ## 
            # Indicates whether comments are allowed on modern site pages in SharePoint.
            @is_commenting_on_site_pages_enabled
            ## 
            # Indicates whether push notifications are enabled for OneDrive events.
            @is_file_activity_notification_enabled
            ## 
            # Indicates whether legacy authentication protocols are enabled for the tenant.
            @is_legacy_auth_protocols_enabled
            ## 
            # Indicates whether if Fluid Framework is allowed on SharePoint sites.
            @is_loop_enabled
            ## 
            # Indicates whether files can be synced using the OneDrive sync app for Mac.
            @is_mac_sync_app_enabled
            ## 
            # Indicates whether guests must sign in using the same account to which sharing invitations are sent.
            @is_require_accepting_user_to_match_invited_user_enabled
            ## 
            # Indicates whether guests are allowed to reshare files, folders, and sites they don't own.
            @is_resharing_by_external_users_enabled
            ## 
            # Indicates whether mobile push notifications are enabled for SharePoint.
            @is_share_point_mobile_notification_enabled
            ## 
            # Indicates whether the newsfeed is allowed on the modern site pages in SharePoint.
            @is_share_point_newsfeed_enabled
            ## 
            # Indicates whether users are allowed to create sites.
            @is_site_creation_enabled
            ## 
            # Indicates whether the UI commands for creating sites are shown.
            @is_site_creation_u_i_enabled
            ## 
            # Indicates whether creating new modern pages is allowed on SharePoint sites.
            @is_site_pages_creation_enabled
            ## 
            # Indicates whether site storage space is automatically managed or if specific storage limits are set per site.
            @is_sites_storage_limit_automatic
            ## 
            # Indicates whether the sync button in OneDrive is hidden.
            @is_sync_button_hidden_on_personal_site
            ## 
            # Indicates whether users are allowed to sync files only on PCs joined to specific domains.
            @is_unmanaged_sync_app_for_tenant_restricted
            ## 
            # The default OneDrive storage limit for all new and existing users who are assigned a qualifying license. Measured in megabytes (MB).
            @personal_site_default_storage_limit_in_m_b
            ## 
            # Collection of email domains that are allowed for sharing outside the organization.
            @sharing_allowed_domain_list
            ## 
            # Collection of email domains that are blocked for sharing outside the organization.
            @sharing_blocked_domain_list
            ## 
            # Sharing capability for the tenant. Possible values are: disabled, externalUserSharingOnly, externalUserAndGuestSharing, existingExternalUserSharingOnly.
            @sharing_capability
            ## 
            # Specifies the external sharing mode for domains. Possible values are: none, allowList, blockList.
            @sharing_domain_restriction_mode
            ## 
            # The value of the team site managed path. This is the path under which new team sites will be created.
            @site_creation_default_managed_path
            ## 
            # The default storage quota for a new site upon creation. Measured in megabytes (MB).
            @site_creation_default_storage_limit_in_m_b
            ## 
            # The default timezone of a tenant for newly created sites. For a list of possible values, see SPRegionalSettings.TimeZones property.
            @tenant_default_timezone
            ## 
            ## Gets the allowedDomainGuidsForSyncApp property value. Collection of trusted domain GUIDs for the OneDrive sync app.
            ## @return a guid
            ## 
            def allowed_domain_guids_for_sync_app
                return @allowed_domain_guids_for_sync_app
            end
            ## 
            ## Sets the allowedDomainGuidsForSyncApp property value. Collection of trusted domain GUIDs for the OneDrive sync app.
            ## @param value Value to set for the allowed_domain_guids_for_sync_app property.
            ## @return a void
            ## 
            def allowed_domain_guids_for_sync_app=(value)
                @allowed_domain_guids_for_sync_app = value
            end
            ## 
            ## Gets the availableManagedPathsForSiteCreation property value. Collection of managed paths available for site creation. Read-only.
            ## @return a string
            ## 
            def available_managed_paths_for_site_creation
                return @available_managed_paths_for_site_creation
            end
            ## 
            ## Sets the availableManagedPathsForSiteCreation property value. Collection of managed paths available for site creation. Read-only.
            ## @param value Value to set for the available_managed_paths_for_site_creation property.
            ## @return a void
            ## 
            def available_managed_paths_for_site_creation=(value)
                @available_managed_paths_for_site_creation = value
            end
            ## 
            ## Instantiates a new sharepointSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sharepoint_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharepointSettings.new
            end
            ## 
            ## Gets the deletedUserPersonalSiteRetentionPeriodInDays property value. The number of days for preserving a deleted user's OneDrive.
            ## @return a integer
            ## 
            def deleted_user_personal_site_retention_period_in_days
                return @deleted_user_personal_site_retention_period_in_days
            end
            ## 
            ## Sets the deletedUserPersonalSiteRetentionPeriodInDays property value. The number of days for preserving a deleted user's OneDrive.
            ## @param value Value to set for the deleted_user_personal_site_retention_period_in_days property.
            ## @return a void
            ## 
            def deleted_user_personal_site_retention_period_in_days=(value)
                @deleted_user_personal_site_retention_period_in_days = value
            end
            ## 
            ## Gets the excludedFileExtensionsForSyncApp property value. Collection of file extensions not uploaded by the OneDrive sync app.
            ## @return a string
            ## 
            def excluded_file_extensions_for_sync_app
                return @excluded_file_extensions_for_sync_app
            end
            ## 
            ## Sets the excludedFileExtensionsForSyncApp property value. Collection of file extensions not uploaded by the OneDrive sync app.
            ## @param value Value to set for the excluded_file_extensions_for_sync_app property.
            ## @return a void
            ## 
            def excluded_file_extensions_for_sync_app=(value)
                @excluded_file_extensions_for_sync_app = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedDomainGuidsForSyncApp" => lambda {|n| @allowed_domain_guids_for_sync_app = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                    "availableManagedPathsForSiteCreation" => lambda {|n| @available_managed_paths_for_site_creation = n.get_collection_of_primitive_values(String) },
                    "deletedUserPersonalSiteRetentionPeriodInDays" => lambda {|n| @deleted_user_personal_site_retention_period_in_days = n.get_number_value() },
                    "excludedFileExtensionsForSyncApp" => lambda {|n| @excluded_file_extensions_for_sync_app = n.get_collection_of_primitive_values(String) },
                    "idleSessionSignOut" => lambda {|n| @idle_session_sign_out = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdleSessionSignOut.create_from_discriminator_value(pn) }) },
                    "imageTaggingOption" => lambda {|n| @image_tagging_option = n.get_enum_value(MicrosoftGraph::Models::ImageTaggingChoice) },
                    "isCommentingOnSitePagesEnabled" => lambda {|n| @is_commenting_on_site_pages_enabled = n.get_boolean_value() },
                    "isFileActivityNotificationEnabled" => lambda {|n| @is_file_activity_notification_enabled = n.get_boolean_value() },
                    "isLegacyAuthProtocolsEnabled" => lambda {|n| @is_legacy_auth_protocols_enabled = n.get_boolean_value() },
                    "isLoopEnabled" => lambda {|n| @is_loop_enabled = n.get_boolean_value() },
                    "isMacSyncAppEnabled" => lambda {|n| @is_mac_sync_app_enabled = n.get_boolean_value() },
                    "isRequireAcceptingUserToMatchInvitedUserEnabled" => lambda {|n| @is_require_accepting_user_to_match_invited_user_enabled = n.get_boolean_value() },
                    "isResharingByExternalUsersEnabled" => lambda {|n| @is_resharing_by_external_users_enabled = n.get_boolean_value() },
                    "isSharePointMobileNotificationEnabled" => lambda {|n| @is_share_point_mobile_notification_enabled = n.get_boolean_value() },
                    "isSharePointNewsfeedEnabled" => lambda {|n| @is_share_point_newsfeed_enabled = n.get_boolean_value() },
                    "isSiteCreationEnabled" => lambda {|n| @is_site_creation_enabled = n.get_boolean_value() },
                    "isSiteCreationUIEnabled" => lambda {|n| @is_site_creation_u_i_enabled = n.get_boolean_value() },
                    "isSitePagesCreationEnabled" => lambda {|n| @is_site_pages_creation_enabled = n.get_boolean_value() },
                    "isSitesStorageLimitAutomatic" => lambda {|n| @is_sites_storage_limit_automatic = n.get_boolean_value() },
                    "isSyncButtonHiddenOnPersonalSite" => lambda {|n| @is_sync_button_hidden_on_personal_site = n.get_boolean_value() },
                    "isUnmanagedSyncAppForTenantRestricted" => lambda {|n| @is_unmanaged_sync_app_for_tenant_restricted = n.get_boolean_value() },
                    "personalSiteDefaultStorageLimitInMB" => lambda {|n| @personal_site_default_storage_limit_in_m_b = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sharingAllowedDomainList" => lambda {|n| @sharing_allowed_domain_list = n.get_collection_of_primitive_values(String) },
                    "sharingBlockedDomainList" => lambda {|n| @sharing_blocked_domain_list = n.get_collection_of_primitive_values(String) },
                    "sharingCapability" => lambda {|n| @sharing_capability = n.get_enum_value(MicrosoftGraph::Models::SharingCapabilities) },
                    "sharingDomainRestrictionMode" => lambda {|n| @sharing_domain_restriction_mode = n.get_enum_value(MicrosoftGraph::Models::SharingDomainRestrictionMode) },
                    "siteCreationDefaultManagedPath" => lambda {|n| @site_creation_default_managed_path = n.get_string_value() },
                    "siteCreationDefaultStorageLimitInMB" => lambda {|n| @site_creation_default_storage_limit_in_m_b = n.get_number_value() },
                    "tenantDefaultTimezone" => lambda {|n| @tenant_default_timezone = n.get_string_value() },
                })
            end
            ## 
            ## Gets the idleSessionSignOut property value. Specifies the idle session sign-out policies for the tenant.
            ## @return a idle_session_sign_out
            ## 
            def idle_session_sign_out
                return @idle_session_sign_out
            end
            ## 
            ## Sets the idleSessionSignOut property value. Specifies the idle session sign-out policies for the tenant.
            ## @param value Value to set for the idle_session_sign_out property.
            ## @return a void
            ## 
            def idle_session_sign_out=(value)
                @idle_session_sign_out = value
            end
            ## 
            ## Gets the imageTaggingOption property value. Specifies the image tagging option for the tenant. Possible values are: disabled, basic, enhanced.
            ## @return a image_tagging_choice
            ## 
            def image_tagging_option
                return @image_tagging_option
            end
            ## 
            ## Sets the imageTaggingOption property value. Specifies the image tagging option for the tenant. Possible values are: disabled, basic, enhanced.
            ## @param value Value to set for the image_tagging_option property.
            ## @return a void
            ## 
            def image_tagging_option=(value)
                @image_tagging_option = value
            end
            ## 
            ## Gets the isCommentingOnSitePagesEnabled property value. Indicates whether comments are allowed on modern site pages in SharePoint.
            ## @return a boolean
            ## 
            def is_commenting_on_site_pages_enabled
                return @is_commenting_on_site_pages_enabled
            end
            ## 
            ## Sets the isCommentingOnSitePagesEnabled property value. Indicates whether comments are allowed on modern site pages in SharePoint.
            ## @param value Value to set for the is_commenting_on_site_pages_enabled property.
            ## @return a void
            ## 
            def is_commenting_on_site_pages_enabled=(value)
                @is_commenting_on_site_pages_enabled = value
            end
            ## 
            ## Gets the isFileActivityNotificationEnabled property value. Indicates whether push notifications are enabled for OneDrive events.
            ## @return a boolean
            ## 
            def is_file_activity_notification_enabled
                return @is_file_activity_notification_enabled
            end
            ## 
            ## Sets the isFileActivityNotificationEnabled property value. Indicates whether push notifications are enabled for OneDrive events.
            ## @param value Value to set for the is_file_activity_notification_enabled property.
            ## @return a void
            ## 
            def is_file_activity_notification_enabled=(value)
                @is_file_activity_notification_enabled = value
            end
            ## 
            ## Gets the isLegacyAuthProtocolsEnabled property value. Indicates whether legacy authentication protocols are enabled for the tenant.
            ## @return a boolean
            ## 
            def is_legacy_auth_protocols_enabled
                return @is_legacy_auth_protocols_enabled
            end
            ## 
            ## Sets the isLegacyAuthProtocolsEnabled property value. Indicates whether legacy authentication protocols are enabled for the tenant.
            ## @param value Value to set for the is_legacy_auth_protocols_enabled property.
            ## @return a void
            ## 
            def is_legacy_auth_protocols_enabled=(value)
                @is_legacy_auth_protocols_enabled = value
            end
            ## 
            ## Gets the isLoopEnabled property value. Indicates whether if Fluid Framework is allowed on SharePoint sites.
            ## @return a boolean
            ## 
            def is_loop_enabled
                return @is_loop_enabled
            end
            ## 
            ## Sets the isLoopEnabled property value. Indicates whether if Fluid Framework is allowed on SharePoint sites.
            ## @param value Value to set for the is_loop_enabled property.
            ## @return a void
            ## 
            def is_loop_enabled=(value)
                @is_loop_enabled = value
            end
            ## 
            ## Gets the isMacSyncAppEnabled property value. Indicates whether files can be synced using the OneDrive sync app for Mac.
            ## @return a boolean
            ## 
            def is_mac_sync_app_enabled
                return @is_mac_sync_app_enabled
            end
            ## 
            ## Sets the isMacSyncAppEnabled property value. Indicates whether files can be synced using the OneDrive sync app for Mac.
            ## @param value Value to set for the is_mac_sync_app_enabled property.
            ## @return a void
            ## 
            def is_mac_sync_app_enabled=(value)
                @is_mac_sync_app_enabled = value
            end
            ## 
            ## Gets the isRequireAcceptingUserToMatchInvitedUserEnabled property value. Indicates whether guests must sign in using the same account to which sharing invitations are sent.
            ## @return a boolean
            ## 
            def is_require_accepting_user_to_match_invited_user_enabled
                return @is_require_accepting_user_to_match_invited_user_enabled
            end
            ## 
            ## Sets the isRequireAcceptingUserToMatchInvitedUserEnabled property value. Indicates whether guests must sign in using the same account to which sharing invitations are sent.
            ## @param value Value to set for the is_require_accepting_user_to_match_invited_user_enabled property.
            ## @return a void
            ## 
            def is_require_accepting_user_to_match_invited_user_enabled=(value)
                @is_require_accepting_user_to_match_invited_user_enabled = value
            end
            ## 
            ## Gets the isResharingByExternalUsersEnabled property value. Indicates whether guests are allowed to reshare files, folders, and sites they don't own.
            ## @return a boolean
            ## 
            def is_resharing_by_external_users_enabled
                return @is_resharing_by_external_users_enabled
            end
            ## 
            ## Sets the isResharingByExternalUsersEnabled property value. Indicates whether guests are allowed to reshare files, folders, and sites they don't own.
            ## @param value Value to set for the is_resharing_by_external_users_enabled property.
            ## @return a void
            ## 
            def is_resharing_by_external_users_enabled=(value)
                @is_resharing_by_external_users_enabled = value
            end
            ## 
            ## Gets the isSharePointMobileNotificationEnabled property value. Indicates whether mobile push notifications are enabled for SharePoint.
            ## @return a boolean
            ## 
            def is_share_point_mobile_notification_enabled
                return @is_share_point_mobile_notification_enabled
            end
            ## 
            ## Sets the isSharePointMobileNotificationEnabled property value. Indicates whether mobile push notifications are enabled for SharePoint.
            ## @param value Value to set for the is_share_point_mobile_notification_enabled property.
            ## @return a void
            ## 
            def is_share_point_mobile_notification_enabled=(value)
                @is_share_point_mobile_notification_enabled = value
            end
            ## 
            ## Gets the isSharePointNewsfeedEnabled property value. Indicates whether the newsfeed is allowed on the modern site pages in SharePoint.
            ## @return a boolean
            ## 
            def is_share_point_newsfeed_enabled
                return @is_share_point_newsfeed_enabled
            end
            ## 
            ## Sets the isSharePointNewsfeedEnabled property value. Indicates whether the newsfeed is allowed on the modern site pages in SharePoint.
            ## @param value Value to set for the is_share_point_newsfeed_enabled property.
            ## @return a void
            ## 
            def is_share_point_newsfeed_enabled=(value)
                @is_share_point_newsfeed_enabled = value
            end
            ## 
            ## Gets the isSiteCreationEnabled property value. Indicates whether users are allowed to create sites.
            ## @return a boolean
            ## 
            def is_site_creation_enabled
                return @is_site_creation_enabled
            end
            ## 
            ## Sets the isSiteCreationEnabled property value. Indicates whether users are allowed to create sites.
            ## @param value Value to set for the is_site_creation_enabled property.
            ## @return a void
            ## 
            def is_site_creation_enabled=(value)
                @is_site_creation_enabled = value
            end
            ## 
            ## Gets the isSiteCreationUIEnabled property value. Indicates whether the UI commands for creating sites are shown.
            ## @return a boolean
            ## 
            def is_site_creation_u_i_enabled
                return @is_site_creation_u_i_enabled
            end
            ## 
            ## Sets the isSiteCreationUIEnabled property value. Indicates whether the UI commands for creating sites are shown.
            ## @param value Value to set for the is_site_creation_u_i_enabled property.
            ## @return a void
            ## 
            def is_site_creation_u_i_enabled=(value)
                @is_site_creation_u_i_enabled = value
            end
            ## 
            ## Gets the isSitePagesCreationEnabled property value. Indicates whether creating new modern pages is allowed on SharePoint sites.
            ## @return a boolean
            ## 
            def is_site_pages_creation_enabled
                return @is_site_pages_creation_enabled
            end
            ## 
            ## Sets the isSitePagesCreationEnabled property value. Indicates whether creating new modern pages is allowed on SharePoint sites.
            ## @param value Value to set for the is_site_pages_creation_enabled property.
            ## @return a void
            ## 
            def is_site_pages_creation_enabled=(value)
                @is_site_pages_creation_enabled = value
            end
            ## 
            ## Gets the isSitesStorageLimitAutomatic property value. Indicates whether site storage space is automatically managed or if specific storage limits are set per site.
            ## @return a boolean
            ## 
            def is_sites_storage_limit_automatic
                return @is_sites_storage_limit_automatic
            end
            ## 
            ## Sets the isSitesStorageLimitAutomatic property value. Indicates whether site storage space is automatically managed or if specific storage limits are set per site.
            ## @param value Value to set for the is_sites_storage_limit_automatic property.
            ## @return a void
            ## 
            def is_sites_storage_limit_automatic=(value)
                @is_sites_storage_limit_automatic = value
            end
            ## 
            ## Gets the isSyncButtonHiddenOnPersonalSite property value. Indicates whether the sync button in OneDrive is hidden.
            ## @return a boolean
            ## 
            def is_sync_button_hidden_on_personal_site
                return @is_sync_button_hidden_on_personal_site
            end
            ## 
            ## Sets the isSyncButtonHiddenOnPersonalSite property value. Indicates whether the sync button in OneDrive is hidden.
            ## @param value Value to set for the is_sync_button_hidden_on_personal_site property.
            ## @return a void
            ## 
            def is_sync_button_hidden_on_personal_site=(value)
                @is_sync_button_hidden_on_personal_site = value
            end
            ## 
            ## Gets the isUnmanagedSyncAppForTenantRestricted property value. Indicates whether users are allowed to sync files only on PCs joined to specific domains.
            ## @return a boolean
            ## 
            def is_unmanaged_sync_app_for_tenant_restricted
                return @is_unmanaged_sync_app_for_tenant_restricted
            end
            ## 
            ## Sets the isUnmanagedSyncAppForTenantRestricted property value. Indicates whether users are allowed to sync files only on PCs joined to specific domains.
            ## @param value Value to set for the is_unmanaged_sync_app_for_tenant_restricted property.
            ## @return a void
            ## 
            def is_unmanaged_sync_app_for_tenant_restricted=(value)
                @is_unmanaged_sync_app_for_tenant_restricted = value
            end
            ## 
            ## Gets the personalSiteDefaultStorageLimitInMB property value. The default OneDrive storage limit for all new and existing users who are assigned a qualifying license. Measured in megabytes (MB).
            ## @return a int64
            ## 
            def personal_site_default_storage_limit_in_m_b
                return @personal_site_default_storage_limit_in_m_b
            end
            ## 
            ## Sets the personalSiteDefaultStorageLimitInMB property value. The default OneDrive storage limit for all new and existing users who are assigned a qualifying license. Measured in megabytes (MB).
            ## @param value Value to set for the personal_site_default_storage_limit_in_m_b property.
            ## @return a void
            ## 
            def personal_site_default_storage_limit_in_m_b=(value)
                @personal_site_default_storage_limit_in_m_b = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("allowedDomainGuidsForSyncApp", @allowed_domain_guids_for_sync_app)
                writer.write_collection_of_primitive_values("availableManagedPathsForSiteCreation", @available_managed_paths_for_site_creation)
                writer.write_number_value("deletedUserPersonalSiteRetentionPeriodInDays", @deleted_user_personal_site_retention_period_in_days)
                writer.write_collection_of_primitive_values("excludedFileExtensionsForSyncApp", @excluded_file_extensions_for_sync_app)
                writer.write_object_value("idleSessionSignOut", @idle_session_sign_out)
                writer.write_enum_value("imageTaggingOption", @image_tagging_option)
                writer.write_boolean_value("isCommentingOnSitePagesEnabled", @is_commenting_on_site_pages_enabled)
                writer.write_boolean_value("isFileActivityNotificationEnabled", @is_file_activity_notification_enabled)
                writer.write_boolean_value("isLegacyAuthProtocolsEnabled", @is_legacy_auth_protocols_enabled)
                writer.write_boolean_value("isLoopEnabled", @is_loop_enabled)
                writer.write_boolean_value("isMacSyncAppEnabled", @is_mac_sync_app_enabled)
                writer.write_boolean_value("isRequireAcceptingUserToMatchInvitedUserEnabled", @is_require_accepting_user_to_match_invited_user_enabled)
                writer.write_boolean_value("isResharingByExternalUsersEnabled", @is_resharing_by_external_users_enabled)
                writer.write_boolean_value("isSharePointMobileNotificationEnabled", @is_share_point_mobile_notification_enabled)
                writer.write_boolean_value("isSharePointNewsfeedEnabled", @is_share_point_newsfeed_enabled)
                writer.write_boolean_value("isSiteCreationEnabled", @is_site_creation_enabled)
                writer.write_boolean_value("isSiteCreationUIEnabled", @is_site_creation_u_i_enabled)
                writer.write_boolean_value("isSitePagesCreationEnabled", @is_site_pages_creation_enabled)
                writer.write_boolean_value("isSitesStorageLimitAutomatic", @is_sites_storage_limit_automatic)
                writer.write_boolean_value("isSyncButtonHiddenOnPersonalSite", @is_sync_button_hidden_on_personal_site)
                writer.write_boolean_value("isUnmanagedSyncAppForTenantRestricted", @is_unmanaged_sync_app_for_tenant_restricted)
                writer.write_object_value("personalSiteDefaultStorageLimitInMB", @personal_site_default_storage_limit_in_m_b)
                writer.write_collection_of_primitive_values("sharingAllowedDomainList", @sharing_allowed_domain_list)
                writer.write_collection_of_primitive_values("sharingBlockedDomainList", @sharing_blocked_domain_list)
                writer.write_enum_value("sharingCapability", @sharing_capability)
                writer.write_enum_value("sharingDomainRestrictionMode", @sharing_domain_restriction_mode)
                writer.write_string_value("siteCreationDefaultManagedPath", @site_creation_default_managed_path)
                writer.write_number_value("siteCreationDefaultStorageLimitInMB", @site_creation_default_storage_limit_in_m_b)
                writer.write_string_value("tenantDefaultTimezone", @tenant_default_timezone)
            end
            ## 
            ## Gets the sharingAllowedDomainList property value. Collection of email domains that are allowed for sharing outside the organization.
            ## @return a string
            ## 
            def sharing_allowed_domain_list
                return @sharing_allowed_domain_list
            end
            ## 
            ## Sets the sharingAllowedDomainList property value. Collection of email domains that are allowed for sharing outside the organization.
            ## @param value Value to set for the sharing_allowed_domain_list property.
            ## @return a void
            ## 
            def sharing_allowed_domain_list=(value)
                @sharing_allowed_domain_list = value
            end
            ## 
            ## Gets the sharingBlockedDomainList property value. Collection of email domains that are blocked for sharing outside the organization.
            ## @return a string
            ## 
            def sharing_blocked_domain_list
                return @sharing_blocked_domain_list
            end
            ## 
            ## Sets the sharingBlockedDomainList property value. Collection of email domains that are blocked for sharing outside the organization.
            ## @param value Value to set for the sharing_blocked_domain_list property.
            ## @return a void
            ## 
            def sharing_blocked_domain_list=(value)
                @sharing_blocked_domain_list = value
            end
            ## 
            ## Gets the sharingCapability property value. Sharing capability for the tenant. Possible values are: disabled, externalUserSharingOnly, externalUserAndGuestSharing, existingExternalUserSharingOnly.
            ## @return a sharing_capabilities
            ## 
            def sharing_capability
                return @sharing_capability
            end
            ## 
            ## Sets the sharingCapability property value. Sharing capability for the tenant. Possible values are: disabled, externalUserSharingOnly, externalUserAndGuestSharing, existingExternalUserSharingOnly.
            ## @param value Value to set for the sharing_capability property.
            ## @return a void
            ## 
            def sharing_capability=(value)
                @sharing_capability = value
            end
            ## 
            ## Gets the sharingDomainRestrictionMode property value. Specifies the external sharing mode for domains. Possible values are: none, allowList, blockList.
            ## @return a sharing_domain_restriction_mode
            ## 
            def sharing_domain_restriction_mode
                return @sharing_domain_restriction_mode
            end
            ## 
            ## Sets the sharingDomainRestrictionMode property value. Specifies the external sharing mode for domains. Possible values are: none, allowList, blockList.
            ## @param value Value to set for the sharing_domain_restriction_mode property.
            ## @return a void
            ## 
            def sharing_domain_restriction_mode=(value)
                @sharing_domain_restriction_mode = value
            end
            ## 
            ## Gets the siteCreationDefaultManagedPath property value. The value of the team site managed path. This is the path under which new team sites will be created.
            ## @return a string
            ## 
            def site_creation_default_managed_path
                return @site_creation_default_managed_path
            end
            ## 
            ## Sets the siteCreationDefaultManagedPath property value. The value of the team site managed path. This is the path under which new team sites will be created.
            ## @param value Value to set for the site_creation_default_managed_path property.
            ## @return a void
            ## 
            def site_creation_default_managed_path=(value)
                @site_creation_default_managed_path = value
            end
            ## 
            ## Gets the siteCreationDefaultStorageLimitInMB property value. The default storage quota for a new site upon creation. Measured in megabytes (MB).
            ## @return a integer
            ## 
            def site_creation_default_storage_limit_in_m_b
                return @site_creation_default_storage_limit_in_m_b
            end
            ## 
            ## Sets the siteCreationDefaultStorageLimitInMB property value. The default storage quota for a new site upon creation. Measured in megabytes (MB).
            ## @param value Value to set for the site_creation_default_storage_limit_in_m_b property.
            ## @return a void
            ## 
            def site_creation_default_storage_limit_in_m_b=(value)
                @site_creation_default_storage_limit_in_m_b = value
            end
            ## 
            ## Gets the tenantDefaultTimezone property value. The default timezone of a tenant for newly created sites. For a list of possible values, see SPRegionalSettings.TimeZones property.
            ## @return a string
            ## 
            def tenant_default_timezone
                return @tenant_default_timezone
            end
            ## 
            ## Sets the tenantDefaultTimezone property value. The default timezone of a tenant for newly created sites. For a list of possible values, see SPRegionalSettings.TimeZones property.
            ## @param value Value to set for the tenant_default_timezone property.
            ## @return a void
            ## 
            def tenant_default_timezone=(value)
                @tenant_default_timezone = value
            end
        end
    end
end
