require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnPremisesDirectorySynchronizationFeature
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Used to block cloud object takeover via source anchor hard match if enabled.
            @block_cloud_object_takeover_through_hard_match_enabled
            ## 
            # Use to block soft match for all objects if enabled for the  tenant. Customers are encouraged to enable this feature and keep it enabled until soft matching is required again for their tenancy. This flag should be enabled again after any soft matching has been completed and is no longer needed.
            @block_soft_match_enabled
            ## 
            # When true, persists the values of Mobile and OtherMobile in on-premises AD during sync cycles instead of values of MobilePhone or AlternateMobilePhones in Azure AD.
            @bypass_dir_sync_overrides_enabled
            ## 
            # Used to indicate that cloud password policy applies to users whose passwords are synchronized from on-premises.
            @cloud_password_policy_for_password_synced_users_enabled
            ## 
            # Used to enable concurrent user credentials update in OrgId.
            @concurrent_credential_update_enabled
            ## 
            # Used to enable concurrent user creation in OrgId.
            @concurrent_org_id_provisioning_enabled
            ## 
            # Used to indicate that device write-back is enabled.
            @device_writeback_enabled
            ## 
            # Used to indicate that directory extensions are being synced from on-premises AD to Azure AD.
            @directory_extensions_enabled
            ## 
            # Used to indicate that for a Microsoft Forefront Online Protection for Exchange (FOPE) migrated tenant, the conflicting proxy address should be migrated over.
            @fope_conflict_resolution_enabled
            ## 
            # Used to enable object-level group writeback feature for additional group types.
            @group_write_back_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Used to indicate on-premise password synchronization is enabled.
            @password_sync_enabled
            ## 
            # Used to indicate that writeback of password resets from Azure AD to on-premises AD is enabled.
            @password_writeback_enabled
            ## 
            # Used to indicate that we should quarantine objects with conflicting proxy address.
            @quarantine_upon_proxy_addresses_conflict_enabled
            ## 
            # Used to indicate that we should quarantine objects conflicting with duplicate userPrincipalName.
            @quarantine_upon_upn_conflict_enabled
            ## 
            # Used to indicate that we should soft match objects based on userPrincipalName.
            @soft_match_on_upn_enabled
            ## 
            # Used to indicate that we should synchronize userPrincipalName objects for managed users with licenses.
            @synchronize_upn_for_managed_users_enabled
            ## 
            # Used to indicate that Microsoft 365 Group write-back is enabled.
            @unified_group_writeback_enabled
            ## 
            # Used to indicate that feature to force password change for a user on logon is enabled while synchronizing on-premise credentials.
            @user_force_password_change_on_logon_enabled
            ## 
            # Used to indicate that user writeback is enabled.
            @user_writeback_enabled
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the blockCloudObjectTakeoverThroughHardMatchEnabled property value. Used to block cloud object takeover via source anchor hard match if enabled.
            ## @return a boolean
            ## 
            def block_cloud_object_takeover_through_hard_match_enabled
                return @block_cloud_object_takeover_through_hard_match_enabled
            end
            ## 
            ## Sets the blockCloudObjectTakeoverThroughHardMatchEnabled property value. Used to block cloud object takeover via source anchor hard match if enabled.
            ## @param value Value to set for the block_cloud_object_takeover_through_hard_match_enabled property.
            ## @return a void
            ## 
            def block_cloud_object_takeover_through_hard_match_enabled=(value)
                @block_cloud_object_takeover_through_hard_match_enabled = value
            end
            ## 
            ## Gets the blockSoftMatchEnabled property value. Use to block soft match for all objects if enabled for the  tenant. Customers are encouraged to enable this feature and keep it enabled until soft matching is required again for their tenancy. This flag should be enabled again after any soft matching has been completed and is no longer needed.
            ## @return a boolean
            ## 
            def block_soft_match_enabled
                return @block_soft_match_enabled
            end
            ## 
            ## Sets the blockSoftMatchEnabled property value. Use to block soft match for all objects if enabled for the  tenant. Customers are encouraged to enable this feature and keep it enabled until soft matching is required again for their tenancy. This flag should be enabled again after any soft matching has been completed and is no longer needed.
            ## @param value Value to set for the block_soft_match_enabled property.
            ## @return a void
            ## 
            def block_soft_match_enabled=(value)
                @block_soft_match_enabled = value
            end
            ## 
            ## Gets the bypassDirSyncOverridesEnabled property value. When true, persists the values of Mobile and OtherMobile in on-premises AD during sync cycles instead of values of MobilePhone or AlternateMobilePhones in Azure AD.
            ## @return a boolean
            ## 
            def bypass_dir_sync_overrides_enabled
                return @bypass_dir_sync_overrides_enabled
            end
            ## 
            ## Sets the bypassDirSyncOverridesEnabled property value. When true, persists the values of Mobile and OtherMobile in on-premises AD during sync cycles instead of values of MobilePhone or AlternateMobilePhones in Azure AD.
            ## @param value Value to set for the bypass_dir_sync_overrides_enabled property.
            ## @return a void
            ## 
            def bypass_dir_sync_overrides_enabled=(value)
                @bypass_dir_sync_overrides_enabled = value
            end
            ## 
            ## Gets the cloudPasswordPolicyForPasswordSyncedUsersEnabled property value. Used to indicate that cloud password policy applies to users whose passwords are synchronized from on-premises.
            ## @return a boolean
            ## 
            def cloud_password_policy_for_password_synced_users_enabled
                return @cloud_password_policy_for_password_synced_users_enabled
            end
            ## 
            ## Sets the cloudPasswordPolicyForPasswordSyncedUsersEnabled property value. Used to indicate that cloud password policy applies to users whose passwords are synchronized from on-premises.
            ## @param value Value to set for the cloud_password_policy_for_password_synced_users_enabled property.
            ## @return a void
            ## 
            def cloud_password_policy_for_password_synced_users_enabled=(value)
                @cloud_password_policy_for_password_synced_users_enabled = value
            end
            ## 
            ## Gets the concurrentCredentialUpdateEnabled property value. Used to enable concurrent user credentials update in OrgId.
            ## @return a boolean
            ## 
            def concurrent_credential_update_enabled
                return @concurrent_credential_update_enabled
            end
            ## 
            ## Sets the concurrentCredentialUpdateEnabled property value. Used to enable concurrent user credentials update in OrgId.
            ## @param value Value to set for the concurrent_credential_update_enabled property.
            ## @return a void
            ## 
            def concurrent_credential_update_enabled=(value)
                @concurrent_credential_update_enabled = value
            end
            ## 
            ## Gets the concurrentOrgIdProvisioningEnabled property value. Used to enable concurrent user creation in OrgId.
            ## @return a boolean
            ## 
            def concurrent_org_id_provisioning_enabled
                return @concurrent_org_id_provisioning_enabled
            end
            ## 
            ## Sets the concurrentOrgIdProvisioningEnabled property value. Used to enable concurrent user creation in OrgId.
            ## @param value Value to set for the concurrent_org_id_provisioning_enabled property.
            ## @return a void
            ## 
            def concurrent_org_id_provisioning_enabled=(value)
                @concurrent_org_id_provisioning_enabled = value
            end
            ## 
            ## Instantiates a new onPremisesDirectorySynchronizationFeature and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_directory_synchronization_feature
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesDirectorySynchronizationFeature.new
            end
            ## 
            ## Gets the deviceWritebackEnabled property value. Used to indicate that device write-back is enabled.
            ## @return a boolean
            ## 
            def device_writeback_enabled
                return @device_writeback_enabled
            end
            ## 
            ## Sets the deviceWritebackEnabled property value. Used to indicate that device write-back is enabled.
            ## @param value Value to set for the device_writeback_enabled property.
            ## @return a void
            ## 
            def device_writeback_enabled=(value)
                @device_writeback_enabled = value
            end
            ## 
            ## Gets the directoryExtensionsEnabled property value. Used to indicate that directory extensions are being synced from on-premises AD to Azure AD.
            ## @return a boolean
            ## 
            def directory_extensions_enabled
                return @directory_extensions_enabled
            end
            ## 
            ## Sets the directoryExtensionsEnabled property value. Used to indicate that directory extensions are being synced from on-premises AD to Azure AD.
            ## @param value Value to set for the directory_extensions_enabled property.
            ## @return a void
            ## 
            def directory_extensions_enabled=(value)
                @directory_extensions_enabled = value
            end
            ## 
            ## Gets the fopeConflictResolutionEnabled property value. Used to indicate that for a Microsoft Forefront Online Protection for Exchange (FOPE) migrated tenant, the conflicting proxy address should be migrated over.
            ## @return a boolean
            ## 
            def fope_conflict_resolution_enabled
                return @fope_conflict_resolution_enabled
            end
            ## 
            ## Sets the fopeConflictResolutionEnabled property value. Used to indicate that for a Microsoft Forefront Online Protection for Exchange (FOPE) migrated tenant, the conflicting proxy address should be migrated over.
            ## @param value Value to set for the fope_conflict_resolution_enabled property.
            ## @return a void
            ## 
            def fope_conflict_resolution_enabled=(value)
                @fope_conflict_resolution_enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "blockCloudObjectTakeoverThroughHardMatchEnabled" => lambda {|n| @block_cloud_object_takeover_through_hard_match_enabled = n.get_boolean_value() },
                    "blockSoftMatchEnabled" => lambda {|n| @block_soft_match_enabled = n.get_boolean_value() },
                    "bypassDirSyncOverridesEnabled" => lambda {|n| @bypass_dir_sync_overrides_enabled = n.get_boolean_value() },
                    "cloudPasswordPolicyForPasswordSyncedUsersEnabled" => lambda {|n| @cloud_password_policy_for_password_synced_users_enabled = n.get_boolean_value() },
                    "concurrentCredentialUpdateEnabled" => lambda {|n| @concurrent_credential_update_enabled = n.get_boolean_value() },
                    "concurrentOrgIdProvisioningEnabled" => lambda {|n| @concurrent_org_id_provisioning_enabled = n.get_boolean_value() },
                    "deviceWritebackEnabled" => lambda {|n| @device_writeback_enabled = n.get_boolean_value() },
                    "directoryExtensionsEnabled" => lambda {|n| @directory_extensions_enabled = n.get_boolean_value() },
                    "fopeConflictResolutionEnabled" => lambda {|n| @fope_conflict_resolution_enabled = n.get_boolean_value() },
                    "groupWriteBackEnabled" => lambda {|n| @group_write_back_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "passwordSyncEnabled" => lambda {|n| @password_sync_enabled = n.get_boolean_value() },
                    "passwordWritebackEnabled" => lambda {|n| @password_writeback_enabled = n.get_boolean_value() },
                    "quarantineUponProxyAddressesConflictEnabled" => lambda {|n| @quarantine_upon_proxy_addresses_conflict_enabled = n.get_boolean_value() },
                    "quarantineUponUpnConflictEnabled" => lambda {|n| @quarantine_upon_upn_conflict_enabled = n.get_boolean_value() },
                    "softMatchOnUpnEnabled" => lambda {|n| @soft_match_on_upn_enabled = n.get_boolean_value() },
                    "synchronizeUpnForManagedUsersEnabled" => lambda {|n| @synchronize_upn_for_managed_users_enabled = n.get_boolean_value() },
                    "unifiedGroupWritebackEnabled" => lambda {|n| @unified_group_writeback_enabled = n.get_boolean_value() },
                    "userForcePasswordChangeOnLogonEnabled" => lambda {|n| @user_force_password_change_on_logon_enabled = n.get_boolean_value() },
                    "userWritebackEnabled" => lambda {|n| @user_writeback_enabled = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the groupWriteBackEnabled property value. Used to enable object-level group writeback feature for additional group types.
            ## @return a boolean
            ## 
            def group_write_back_enabled
                return @group_write_back_enabled
            end
            ## 
            ## Sets the groupWriteBackEnabled property value. Used to enable object-level group writeback feature for additional group types.
            ## @param value Value to set for the group_write_back_enabled property.
            ## @return a void
            ## 
            def group_write_back_enabled=(value)
                @group_write_back_enabled = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the passwordSyncEnabled property value. Used to indicate on-premise password synchronization is enabled.
            ## @return a boolean
            ## 
            def password_sync_enabled
                return @password_sync_enabled
            end
            ## 
            ## Sets the passwordSyncEnabled property value. Used to indicate on-premise password synchronization is enabled.
            ## @param value Value to set for the password_sync_enabled property.
            ## @return a void
            ## 
            def password_sync_enabled=(value)
                @password_sync_enabled = value
            end
            ## 
            ## Gets the passwordWritebackEnabled property value. Used to indicate that writeback of password resets from Azure AD to on-premises AD is enabled.
            ## @return a boolean
            ## 
            def password_writeback_enabled
                return @password_writeback_enabled
            end
            ## 
            ## Sets the passwordWritebackEnabled property value. Used to indicate that writeback of password resets from Azure AD to on-premises AD is enabled.
            ## @param value Value to set for the password_writeback_enabled property.
            ## @return a void
            ## 
            def password_writeback_enabled=(value)
                @password_writeback_enabled = value
            end
            ## 
            ## Gets the quarantineUponProxyAddressesConflictEnabled property value. Used to indicate that we should quarantine objects with conflicting proxy address.
            ## @return a boolean
            ## 
            def quarantine_upon_proxy_addresses_conflict_enabled
                return @quarantine_upon_proxy_addresses_conflict_enabled
            end
            ## 
            ## Sets the quarantineUponProxyAddressesConflictEnabled property value. Used to indicate that we should quarantine objects with conflicting proxy address.
            ## @param value Value to set for the quarantine_upon_proxy_addresses_conflict_enabled property.
            ## @return a void
            ## 
            def quarantine_upon_proxy_addresses_conflict_enabled=(value)
                @quarantine_upon_proxy_addresses_conflict_enabled = value
            end
            ## 
            ## Gets the quarantineUponUpnConflictEnabled property value. Used to indicate that we should quarantine objects conflicting with duplicate userPrincipalName.
            ## @return a boolean
            ## 
            def quarantine_upon_upn_conflict_enabled
                return @quarantine_upon_upn_conflict_enabled
            end
            ## 
            ## Sets the quarantineUponUpnConflictEnabled property value. Used to indicate that we should quarantine objects conflicting with duplicate userPrincipalName.
            ## @param value Value to set for the quarantine_upon_upn_conflict_enabled property.
            ## @return a void
            ## 
            def quarantine_upon_upn_conflict_enabled=(value)
                @quarantine_upon_upn_conflict_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("blockCloudObjectTakeoverThroughHardMatchEnabled", @block_cloud_object_takeover_through_hard_match_enabled)
                writer.write_boolean_value("blockSoftMatchEnabled", @block_soft_match_enabled)
                writer.write_boolean_value("bypassDirSyncOverridesEnabled", @bypass_dir_sync_overrides_enabled)
                writer.write_boolean_value("cloudPasswordPolicyForPasswordSyncedUsersEnabled", @cloud_password_policy_for_password_synced_users_enabled)
                writer.write_boolean_value("concurrentCredentialUpdateEnabled", @concurrent_credential_update_enabled)
                writer.write_boolean_value("concurrentOrgIdProvisioningEnabled", @concurrent_org_id_provisioning_enabled)
                writer.write_boolean_value("deviceWritebackEnabled", @device_writeback_enabled)
                writer.write_boolean_value("directoryExtensionsEnabled", @directory_extensions_enabled)
                writer.write_boolean_value("fopeConflictResolutionEnabled", @fope_conflict_resolution_enabled)
                writer.write_boolean_value("groupWriteBackEnabled", @group_write_back_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("passwordSyncEnabled", @password_sync_enabled)
                writer.write_boolean_value("passwordWritebackEnabled", @password_writeback_enabled)
                writer.write_boolean_value("quarantineUponProxyAddressesConflictEnabled", @quarantine_upon_proxy_addresses_conflict_enabled)
                writer.write_boolean_value("quarantineUponUpnConflictEnabled", @quarantine_upon_upn_conflict_enabled)
                writer.write_boolean_value("softMatchOnUpnEnabled", @soft_match_on_upn_enabled)
                writer.write_boolean_value("synchronizeUpnForManagedUsersEnabled", @synchronize_upn_for_managed_users_enabled)
                writer.write_boolean_value("unifiedGroupWritebackEnabled", @unified_group_writeback_enabled)
                writer.write_boolean_value("userForcePasswordChangeOnLogonEnabled", @user_force_password_change_on_logon_enabled)
                writer.write_boolean_value("userWritebackEnabled", @user_writeback_enabled)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the softMatchOnUpnEnabled property value. Used to indicate that we should soft match objects based on userPrincipalName.
            ## @return a boolean
            ## 
            def soft_match_on_upn_enabled
                return @soft_match_on_upn_enabled
            end
            ## 
            ## Sets the softMatchOnUpnEnabled property value. Used to indicate that we should soft match objects based on userPrincipalName.
            ## @param value Value to set for the soft_match_on_upn_enabled property.
            ## @return a void
            ## 
            def soft_match_on_upn_enabled=(value)
                @soft_match_on_upn_enabled = value
            end
            ## 
            ## Gets the synchronizeUpnForManagedUsersEnabled property value. Used to indicate that we should synchronize userPrincipalName objects for managed users with licenses.
            ## @return a boolean
            ## 
            def synchronize_upn_for_managed_users_enabled
                return @synchronize_upn_for_managed_users_enabled
            end
            ## 
            ## Sets the synchronizeUpnForManagedUsersEnabled property value. Used to indicate that we should synchronize userPrincipalName objects for managed users with licenses.
            ## @param value Value to set for the synchronize_upn_for_managed_users_enabled property.
            ## @return a void
            ## 
            def synchronize_upn_for_managed_users_enabled=(value)
                @synchronize_upn_for_managed_users_enabled = value
            end
            ## 
            ## Gets the unifiedGroupWritebackEnabled property value. Used to indicate that Microsoft 365 Group write-back is enabled.
            ## @return a boolean
            ## 
            def unified_group_writeback_enabled
                return @unified_group_writeback_enabled
            end
            ## 
            ## Sets the unifiedGroupWritebackEnabled property value. Used to indicate that Microsoft 365 Group write-back is enabled.
            ## @param value Value to set for the unified_group_writeback_enabled property.
            ## @return a void
            ## 
            def unified_group_writeback_enabled=(value)
                @unified_group_writeback_enabled = value
            end
            ## 
            ## Gets the userForcePasswordChangeOnLogonEnabled property value. Used to indicate that feature to force password change for a user on logon is enabled while synchronizing on-premise credentials.
            ## @return a boolean
            ## 
            def user_force_password_change_on_logon_enabled
                return @user_force_password_change_on_logon_enabled
            end
            ## 
            ## Sets the userForcePasswordChangeOnLogonEnabled property value. Used to indicate that feature to force password change for a user on logon is enabled while synchronizing on-premise credentials.
            ## @param value Value to set for the user_force_password_change_on_logon_enabled property.
            ## @return a void
            ## 
            def user_force_password_change_on_logon_enabled=(value)
                @user_force_password_change_on_logon_enabled = value
            end
            ## 
            ## Gets the userWritebackEnabled property value. Used to indicate that user writeback is enabled.
            ## @return a boolean
            ## 
            def user_writeback_enabled
                return @user_writeback_enabled
            end
            ## 
            ## Sets the userWritebackEnabled property value. Used to indicate that user writeback is enabled.
            ## @param value Value to set for the user_writeback_enabled property.
            ## @return a void
            ## 
            def user_writeback_enabled=(value)
                @user_writeback_enabled = value
            end
        end
    end
end
