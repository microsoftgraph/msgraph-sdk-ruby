require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Windows10EndpointProtectionConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values of AppLocker Application Control Types
            @app_locker_application_control
            ## 
            # Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)
            @application_guard_allow_persistence
            ## 
            # Allow printing to Local Printers from Container
            @application_guard_allow_print_to_local_printers
            ## 
            # Allow printing to Network Printers from Container
            @application_guard_allow_print_to_network_printers
            ## 
            # Allow printing to PDF from Container
            @application_guard_allow_print_to_p_d_f
            ## 
            # Allow printing to XPS from Container
            @application_guard_allow_print_to_x_p_s
            ## 
            # Possible values for applicationGuardBlockClipboardSharingType
            @application_guard_block_clipboard_sharing
            ## 
            # Possible values for applicationGuardBlockFileTransfer
            @application_guard_block_file_transfer
            ## 
            # Block enterprise sites to load non-enterprise content, such as third party plug-ins
            @application_guard_block_non_enterprise_content
            ## 
            # Enable Windows Defender Application Guard
            @application_guard_enabled
            ## 
            # Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)
            @application_guard_force_auditing
            ## 
            # Allows the Admin to disable the warning prompt for other disk encryption on the user machines.
            @bit_locker_disable_warning_for_other_disk_encryption
            ## 
            # Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.
            @bit_locker_enable_storage_card_encryption_on_mobile
            ## 
            # Allows the admin to require encryption to be turned on using BitLocker.
            @bit_locker_encrypt_device
            ## 
            # BitLocker Removable Drive Policy.
            @bit_locker_removable_drive_policy
            ## 
            # List of folder paths to be added to the list of protected folders
            @defender_additional_guarded_folders
            ## 
            # List of exe files and folders to be excluded from attack surface reduction rules
            @defender_attack_surface_reduction_excluded_paths
            ## 
            # Xml content containing information regarding exploit protection details.
            @defender_exploit_protection_xml
            ## 
            # Name of the file from which DefenderExploitProtectionXml was obtained.
            @defender_exploit_protection_xml_file_name
            ## 
            # List of paths to exe that are allowed to access protected folders
            @defender_guarded_folders_allowed_app_paths
            ## 
            # Indicates whether or not to block user from overriding Exploit Protection settings.
            @defender_security_center_block_exploit_protection_override
            ## 
            # Blocks stateful FTP connections to the device
            @firewall_block_stateful_f_t_p
            ## 
            # Possible values for firewallCertificateRevocationListCheckMethod
            @firewall_certificate_revocation_list_check_method
            ## 
            # Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic
            @firewall_i_p_sec_exemptions_allow_d_h_c_p
            ## 
            # Configures IPSec exemptions to allow ICMP
            @firewall_i_p_sec_exemptions_allow_i_c_m_p
            ## 
            # Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes
            @firewall_i_p_sec_exemptions_allow_neighbor_discovery
            ## 
            # Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes
            @firewall_i_p_sec_exemptions_allow_router_discovery
            ## 
            # Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600
            @firewall_idle_timeout_for_security_association_in_seconds
            ## 
            # If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set
            @firewall_merge_keying_module_settings
            ## 
            # Possible values for firewallPacketQueueingMethod
            @firewall_packet_queueing_method
            ## 
            # Possible values for firewallPreSharedKeyEncodingMethod
            @firewall_pre_shared_key_encoding_method
            ## 
            # Configures the firewall profile settings for domain networks
            @firewall_profile_domain
            ## 
            # Configures the firewall profile settings for private networks
            @firewall_profile_private
            ## 
            # Configures the firewall profile settings for public networks
            @firewall_profile_public
            ## 
            # Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.
            @smart_screen_block_override_for_files
            ## 
            # Allows IT Admins to configure SmartScreen for Windows.
            @smart_screen_enable_in_shell
            ## 
            ## Gets the appLockerApplicationControl property value. Possible values of AppLocker Application Control Types
            ## @return a app_locker_application_control_type
            ## 
            def app_locker_application_control
                return @app_locker_application_control
            end
            ## 
            ## Sets the appLockerApplicationControl property value. Possible values of AppLocker Application Control Types
            ## @param value Value to set for the app_locker_application_control property.
            ## @return a void
            ## 
            def app_locker_application_control=(value)
                @app_locker_application_control = value
            end
            ## 
            ## Gets the applicationGuardAllowPersistence property value. Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)
            ## @return a boolean
            ## 
            def application_guard_allow_persistence
                return @application_guard_allow_persistence
            end
            ## 
            ## Sets the applicationGuardAllowPersistence property value. Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)
            ## @param value Value to set for the application_guard_allow_persistence property.
            ## @return a void
            ## 
            def application_guard_allow_persistence=(value)
                @application_guard_allow_persistence = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToLocalPrinters property value. Allow printing to Local Printers from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_local_printers
                return @application_guard_allow_print_to_local_printers
            end
            ## 
            ## Sets the applicationGuardAllowPrintToLocalPrinters property value. Allow printing to Local Printers from Container
            ## @param value Value to set for the application_guard_allow_print_to_local_printers property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_local_printers=(value)
                @application_guard_allow_print_to_local_printers = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToNetworkPrinters property value. Allow printing to Network Printers from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_network_printers
                return @application_guard_allow_print_to_network_printers
            end
            ## 
            ## Sets the applicationGuardAllowPrintToNetworkPrinters property value. Allow printing to Network Printers from Container
            ## @param value Value to set for the application_guard_allow_print_to_network_printers property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_network_printers=(value)
                @application_guard_allow_print_to_network_printers = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToPDF property value. Allow printing to PDF from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_p_d_f
                return @application_guard_allow_print_to_p_d_f
            end
            ## 
            ## Sets the applicationGuardAllowPrintToPDF property value. Allow printing to PDF from Container
            ## @param value Value to set for the application_guard_allow_print_to_p_d_f property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_p_d_f=(value)
                @application_guard_allow_print_to_p_d_f = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToXPS property value. Allow printing to XPS from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_x_p_s
                return @application_guard_allow_print_to_x_p_s
            end
            ## 
            ## Sets the applicationGuardAllowPrintToXPS property value. Allow printing to XPS from Container
            ## @param value Value to set for the application_guard_allow_print_to_x_p_s property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_x_p_s=(value)
                @application_guard_allow_print_to_x_p_s = value
            end
            ## 
            ## Gets the applicationGuardBlockClipboardSharing property value. Possible values for applicationGuardBlockClipboardSharingType
            ## @return a application_guard_block_clipboard_sharing_type
            ## 
            def application_guard_block_clipboard_sharing
                return @application_guard_block_clipboard_sharing
            end
            ## 
            ## Sets the applicationGuardBlockClipboardSharing property value. Possible values for applicationGuardBlockClipboardSharingType
            ## @param value Value to set for the application_guard_block_clipboard_sharing property.
            ## @return a void
            ## 
            def application_guard_block_clipboard_sharing=(value)
                @application_guard_block_clipboard_sharing = value
            end
            ## 
            ## Gets the applicationGuardBlockFileTransfer property value. Possible values for applicationGuardBlockFileTransfer
            ## @return a application_guard_block_file_transfer_type
            ## 
            def application_guard_block_file_transfer
                return @application_guard_block_file_transfer
            end
            ## 
            ## Sets the applicationGuardBlockFileTransfer property value. Possible values for applicationGuardBlockFileTransfer
            ## @param value Value to set for the application_guard_block_file_transfer property.
            ## @return a void
            ## 
            def application_guard_block_file_transfer=(value)
                @application_guard_block_file_transfer = value
            end
            ## 
            ## Gets the applicationGuardBlockNonEnterpriseContent property value. Block enterprise sites to load non-enterprise content, such as third party plug-ins
            ## @return a boolean
            ## 
            def application_guard_block_non_enterprise_content
                return @application_guard_block_non_enterprise_content
            end
            ## 
            ## Sets the applicationGuardBlockNonEnterpriseContent property value. Block enterprise sites to load non-enterprise content, such as third party plug-ins
            ## @param value Value to set for the application_guard_block_non_enterprise_content property.
            ## @return a void
            ## 
            def application_guard_block_non_enterprise_content=(value)
                @application_guard_block_non_enterprise_content = value
            end
            ## 
            ## Gets the applicationGuardEnabled property value. Enable Windows Defender Application Guard
            ## @return a boolean
            ## 
            def application_guard_enabled
                return @application_guard_enabled
            end
            ## 
            ## Sets the applicationGuardEnabled property value. Enable Windows Defender Application Guard
            ## @param value Value to set for the application_guard_enabled property.
            ## @return a void
            ## 
            def application_guard_enabled=(value)
                @application_guard_enabled = value
            end
            ## 
            ## Gets the applicationGuardForceAuditing property value. Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)
            ## @return a boolean
            ## 
            def application_guard_force_auditing
                return @application_guard_force_auditing
            end
            ## 
            ## Sets the applicationGuardForceAuditing property value. Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)
            ## @param value Value to set for the application_guard_force_auditing property.
            ## @return a void
            ## 
            def application_guard_force_auditing=(value)
                @application_guard_force_auditing = value
            end
            ## 
            ## Gets the bitLockerDisableWarningForOtherDiskEncryption property value. Allows the Admin to disable the warning prompt for other disk encryption on the user machines.
            ## @return a boolean
            ## 
            def bit_locker_disable_warning_for_other_disk_encryption
                return @bit_locker_disable_warning_for_other_disk_encryption
            end
            ## 
            ## Sets the bitLockerDisableWarningForOtherDiskEncryption property value. Allows the Admin to disable the warning prompt for other disk encryption on the user machines.
            ## @param value Value to set for the bit_locker_disable_warning_for_other_disk_encryption property.
            ## @return a void
            ## 
            def bit_locker_disable_warning_for_other_disk_encryption=(value)
                @bit_locker_disable_warning_for_other_disk_encryption = value
            end
            ## 
            ## Gets the bitLockerEnableStorageCardEncryptionOnMobile property value. Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.
            ## @return a boolean
            ## 
            def bit_locker_enable_storage_card_encryption_on_mobile
                return @bit_locker_enable_storage_card_encryption_on_mobile
            end
            ## 
            ## Sets the bitLockerEnableStorageCardEncryptionOnMobile property value. Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.
            ## @param value Value to set for the bit_locker_enable_storage_card_encryption_on_mobile property.
            ## @return a void
            ## 
            def bit_locker_enable_storage_card_encryption_on_mobile=(value)
                @bit_locker_enable_storage_card_encryption_on_mobile = value
            end
            ## 
            ## Gets the bitLockerEncryptDevice property value. Allows the admin to require encryption to be turned on using BitLocker.
            ## @return a boolean
            ## 
            def bit_locker_encrypt_device
                return @bit_locker_encrypt_device
            end
            ## 
            ## Sets the bitLockerEncryptDevice property value. Allows the admin to require encryption to be turned on using BitLocker.
            ## @param value Value to set for the bit_locker_encrypt_device property.
            ## @return a void
            ## 
            def bit_locker_encrypt_device=(value)
                @bit_locker_encrypt_device = value
            end
            ## 
            ## Gets the bitLockerRemovableDrivePolicy property value. BitLocker Removable Drive Policy.
            ## @return a bit_locker_removable_drive_policy
            ## 
            def bit_locker_removable_drive_policy
                return @bit_locker_removable_drive_policy
            end
            ## 
            ## Sets the bitLockerRemovableDrivePolicy property value. BitLocker Removable Drive Policy.
            ## @param value Value to set for the bit_locker_removable_drive_policy property.
            ## @return a void
            ## 
            def bit_locker_removable_drive_policy=(value)
                @bit_locker_removable_drive_policy = value
            end
            ## 
            ## Instantiates a new Windows10EndpointProtectionConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10EndpointProtectionConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_endpoint_protection_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10EndpointProtectionConfiguration.new
            end
            ## 
            ## Gets the defenderAdditionalGuardedFolders property value. List of folder paths to be added to the list of protected folders
            ## @return a string
            ## 
            def defender_additional_guarded_folders
                return @defender_additional_guarded_folders
            end
            ## 
            ## Sets the defenderAdditionalGuardedFolders property value. List of folder paths to be added to the list of protected folders
            ## @param value Value to set for the defender_additional_guarded_folders property.
            ## @return a void
            ## 
            def defender_additional_guarded_folders=(value)
                @defender_additional_guarded_folders = value
            end
            ## 
            ## Gets the defenderAttackSurfaceReductionExcludedPaths property value. List of exe files and folders to be excluded from attack surface reduction rules
            ## @return a string
            ## 
            def defender_attack_surface_reduction_excluded_paths
                return @defender_attack_surface_reduction_excluded_paths
            end
            ## 
            ## Sets the defenderAttackSurfaceReductionExcludedPaths property value. List of exe files and folders to be excluded from attack surface reduction rules
            ## @param value Value to set for the defender_attack_surface_reduction_excluded_paths property.
            ## @return a void
            ## 
            def defender_attack_surface_reduction_excluded_paths=(value)
                @defender_attack_surface_reduction_excluded_paths = value
            end
            ## 
            ## Gets the defenderExploitProtectionXml property value. Xml content containing information regarding exploit protection details.
            ## @return a base64url
            ## 
            def defender_exploit_protection_xml
                return @defender_exploit_protection_xml
            end
            ## 
            ## Sets the defenderExploitProtectionXml property value. Xml content containing information regarding exploit protection details.
            ## @param value Value to set for the defender_exploit_protection_xml property.
            ## @return a void
            ## 
            def defender_exploit_protection_xml=(value)
                @defender_exploit_protection_xml = value
            end
            ## 
            ## Gets the defenderExploitProtectionXmlFileName property value. Name of the file from which DefenderExploitProtectionXml was obtained.
            ## @return a string
            ## 
            def defender_exploit_protection_xml_file_name
                return @defender_exploit_protection_xml_file_name
            end
            ## 
            ## Sets the defenderExploitProtectionXmlFileName property value. Name of the file from which DefenderExploitProtectionXml was obtained.
            ## @param value Value to set for the defender_exploit_protection_xml_file_name property.
            ## @return a void
            ## 
            def defender_exploit_protection_xml_file_name=(value)
                @defender_exploit_protection_xml_file_name = value
            end
            ## 
            ## Gets the defenderGuardedFoldersAllowedAppPaths property value. List of paths to exe that are allowed to access protected folders
            ## @return a string
            ## 
            def defender_guarded_folders_allowed_app_paths
                return @defender_guarded_folders_allowed_app_paths
            end
            ## 
            ## Sets the defenderGuardedFoldersAllowedAppPaths property value. List of paths to exe that are allowed to access protected folders
            ## @param value Value to set for the defender_guarded_folders_allowed_app_paths property.
            ## @return a void
            ## 
            def defender_guarded_folders_allowed_app_paths=(value)
                @defender_guarded_folders_allowed_app_paths = value
            end
            ## 
            ## Gets the defenderSecurityCenterBlockExploitProtectionOverride property value. Indicates whether or not to block user from overriding Exploit Protection settings.
            ## @return a boolean
            ## 
            def defender_security_center_block_exploit_protection_override
                return @defender_security_center_block_exploit_protection_override
            end
            ## 
            ## Sets the defenderSecurityCenterBlockExploitProtectionOverride property value. Indicates whether or not to block user from overriding Exploit Protection settings.
            ## @param value Value to set for the defender_security_center_block_exploit_protection_override property.
            ## @return a void
            ## 
            def defender_security_center_block_exploit_protection_override=(value)
                @defender_security_center_block_exploit_protection_override = value
            end
            ## 
            ## Gets the firewallBlockStatefulFTP property value. Blocks stateful FTP connections to the device
            ## @return a boolean
            ## 
            def firewall_block_stateful_f_t_p
                return @firewall_block_stateful_f_t_p
            end
            ## 
            ## Sets the firewallBlockStatefulFTP property value. Blocks stateful FTP connections to the device
            ## @param value Value to set for the firewall_block_stateful_f_t_p property.
            ## @return a void
            ## 
            def firewall_block_stateful_f_t_p=(value)
                @firewall_block_stateful_f_t_p = value
            end
            ## 
            ## Gets the firewallCertificateRevocationListCheckMethod property value. Possible values for firewallCertificateRevocationListCheckMethod
            ## @return a firewall_certificate_revocation_list_check_method_type
            ## 
            def firewall_certificate_revocation_list_check_method
                return @firewall_certificate_revocation_list_check_method
            end
            ## 
            ## Sets the firewallCertificateRevocationListCheckMethod property value. Possible values for firewallCertificateRevocationListCheckMethod
            ## @param value Value to set for the firewall_certificate_revocation_list_check_method property.
            ## @return a void
            ## 
            def firewall_certificate_revocation_list_check_method=(value)
                @firewall_certificate_revocation_list_check_method = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowDHCP property value. Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_d_h_c_p
                return @firewall_i_p_sec_exemptions_allow_d_h_c_p
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowDHCP property value. Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic
            ## @param value Value to set for the firewall_i_p_sec_exemptions_allow_d_h_c_p property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_d_h_c_p=(value)
                @firewall_i_p_sec_exemptions_allow_d_h_c_p = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowICMP property value. Configures IPSec exemptions to allow ICMP
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_i_c_m_p
                return @firewall_i_p_sec_exemptions_allow_i_c_m_p
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowICMP property value. Configures IPSec exemptions to allow ICMP
            ## @param value Value to set for the firewall_i_p_sec_exemptions_allow_i_c_m_p property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_i_c_m_p=(value)
                @firewall_i_p_sec_exemptions_allow_i_c_m_p = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowNeighborDiscovery property value. Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_neighbor_discovery
                return @firewall_i_p_sec_exemptions_allow_neighbor_discovery
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowNeighborDiscovery property value. Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes
            ## @param value Value to set for the firewall_i_p_sec_exemptions_allow_neighbor_discovery property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_neighbor_discovery=(value)
                @firewall_i_p_sec_exemptions_allow_neighbor_discovery = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowRouterDiscovery property value. Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_router_discovery
                return @firewall_i_p_sec_exemptions_allow_router_discovery
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowRouterDiscovery property value. Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes
            ## @param value Value to set for the firewall_i_p_sec_exemptions_allow_router_discovery property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_router_discovery=(value)
                @firewall_i_p_sec_exemptions_allow_router_discovery = value
            end
            ## 
            ## Gets the firewallIdleTimeoutForSecurityAssociationInSeconds property value. Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600
            ## @return a integer
            ## 
            def firewall_idle_timeout_for_security_association_in_seconds
                return @firewall_idle_timeout_for_security_association_in_seconds
            end
            ## 
            ## Sets the firewallIdleTimeoutForSecurityAssociationInSeconds property value. Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600
            ## @param value Value to set for the firewall_idle_timeout_for_security_association_in_seconds property.
            ## @return a void
            ## 
            def firewall_idle_timeout_for_security_association_in_seconds=(value)
                @firewall_idle_timeout_for_security_association_in_seconds = value
            end
            ## 
            ## Gets the firewallMergeKeyingModuleSettings property value. If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set
            ## @return a boolean
            ## 
            def firewall_merge_keying_module_settings
                return @firewall_merge_keying_module_settings
            end
            ## 
            ## Sets the firewallMergeKeyingModuleSettings property value. If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set
            ## @param value Value to set for the firewall_merge_keying_module_settings property.
            ## @return a void
            ## 
            def firewall_merge_keying_module_settings=(value)
                @firewall_merge_keying_module_settings = value
            end
            ## 
            ## Gets the firewallPacketQueueingMethod property value. Possible values for firewallPacketQueueingMethod
            ## @return a firewall_packet_queueing_method_type
            ## 
            def firewall_packet_queueing_method
                return @firewall_packet_queueing_method
            end
            ## 
            ## Sets the firewallPacketQueueingMethod property value. Possible values for firewallPacketQueueingMethod
            ## @param value Value to set for the firewall_packet_queueing_method property.
            ## @return a void
            ## 
            def firewall_packet_queueing_method=(value)
                @firewall_packet_queueing_method = value
            end
            ## 
            ## Gets the firewallPreSharedKeyEncodingMethod property value. Possible values for firewallPreSharedKeyEncodingMethod
            ## @return a firewall_pre_shared_key_encoding_method_type
            ## 
            def firewall_pre_shared_key_encoding_method
                return @firewall_pre_shared_key_encoding_method
            end
            ## 
            ## Sets the firewallPreSharedKeyEncodingMethod property value. Possible values for firewallPreSharedKeyEncodingMethod
            ## @param value Value to set for the firewall_pre_shared_key_encoding_method property.
            ## @return a void
            ## 
            def firewall_pre_shared_key_encoding_method=(value)
                @firewall_pre_shared_key_encoding_method = value
            end
            ## 
            ## Gets the firewallProfileDomain property value. Configures the firewall profile settings for domain networks
            ## @return a windows_firewall_network_profile
            ## 
            def firewall_profile_domain
                return @firewall_profile_domain
            end
            ## 
            ## Sets the firewallProfileDomain property value. Configures the firewall profile settings for domain networks
            ## @param value Value to set for the firewall_profile_domain property.
            ## @return a void
            ## 
            def firewall_profile_domain=(value)
                @firewall_profile_domain = value
            end
            ## 
            ## Gets the firewallProfilePrivate property value. Configures the firewall profile settings for private networks
            ## @return a windows_firewall_network_profile
            ## 
            def firewall_profile_private
                return @firewall_profile_private
            end
            ## 
            ## Sets the firewallProfilePrivate property value. Configures the firewall profile settings for private networks
            ## @param value Value to set for the firewall_profile_private property.
            ## @return a void
            ## 
            def firewall_profile_private=(value)
                @firewall_profile_private = value
            end
            ## 
            ## Gets the firewallProfilePublic property value. Configures the firewall profile settings for public networks
            ## @return a windows_firewall_network_profile
            ## 
            def firewall_profile_public
                return @firewall_profile_public
            end
            ## 
            ## Sets the firewallProfilePublic property value. Configures the firewall profile settings for public networks
            ## @param value Value to set for the firewall_profile_public property.
            ## @return a void
            ## 
            def firewall_profile_public=(value)
                @firewall_profile_public = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appLockerApplicationControl" => lambda {|n| @app_locker_application_control = n.get_enum_value(MicrosoftGraph::Models::AppLockerApplicationControlType) },
                    "applicationGuardAllowPersistence" => lambda {|n| @application_guard_allow_persistence = n.get_boolean_value() },
                    "applicationGuardAllowPrintToLocalPrinters" => lambda {|n| @application_guard_allow_print_to_local_printers = n.get_boolean_value() },
                    "applicationGuardAllowPrintToNetworkPrinters" => lambda {|n| @application_guard_allow_print_to_network_printers = n.get_boolean_value() },
                    "applicationGuardAllowPrintToPDF" => lambda {|n| @application_guard_allow_print_to_p_d_f = n.get_boolean_value() },
                    "applicationGuardAllowPrintToXPS" => lambda {|n| @application_guard_allow_print_to_x_p_s = n.get_boolean_value() },
                    "applicationGuardBlockClipboardSharing" => lambda {|n| @application_guard_block_clipboard_sharing = n.get_enum_value(MicrosoftGraph::Models::ApplicationGuardBlockClipboardSharingType) },
                    "applicationGuardBlockFileTransfer" => lambda {|n| @application_guard_block_file_transfer = n.get_enum_value(MicrosoftGraph::Models::ApplicationGuardBlockFileTransferType) },
                    "applicationGuardBlockNonEnterpriseContent" => lambda {|n| @application_guard_block_non_enterprise_content = n.get_boolean_value() },
                    "applicationGuardEnabled" => lambda {|n| @application_guard_enabled = n.get_boolean_value() },
                    "applicationGuardForceAuditing" => lambda {|n| @application_guard_force_auditing = n.get_boolean_value() },
                    "bitLockerDisableWarningForOtherDiskEncryption" => lambda {|n| @bit_locker_disable_warning_for_other_disk_encryption = n.get_boolean_value() },
                    "bitLockerEnableStorageCardEncryptionOnMobile" => lambda {|n| @bit_locker_enable_storage_card_encryption_on_mobile = n.get_boolean_value() },
                    "bitLockerEncryptDevice" => lambda {|n| @bit_locker_encrypt_device = n.get_boolean_value() },
                    "bitLockerRemovableDrivePolicy" => lambda {|n| @bit_locker_removable_drive_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BitLockerRemovableDrivePolicy.create_from_discriminator_value(pn) }) },
                    "defenderAdditionalGuardedFolders" => lambda {|n| @defender_additional_guarded_folders = n.get_collection_of_primitive_values(String) },
                    "defenderAttackSurfaceReductionExcludedPaths" => lambda {|n| @defender_attack_surface_reduction_excluded_paths = n.get_collection_of_primitive_values(String) },
                    "defenderExploitProtectionXml" => lambda {|n| @defender_exploit_protection_xml = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "defenderExploitProtectionXmlFileName" => lambda {|n| @defender_exploit_protection_xml_file_name = n.get_string_value() },
                    "defenderGuardedFoldersAllowedAppPaths" => lambda {|n| @defender_guarded_folders_allowed_app_paths = n.get_collection_of_primitive_values(String) },
                    "defenderSecurityCenterBlockExploitProtectionOverride" => lambda {|n| @defender_security_center_block_exploit_protection_override = n.get_boolean_value() },
                    "firewallBlockStatefulFTP" => lambda {|n| @firewall_block_stateful_f_t_p = n.get_boolean_value() },
                    "firewallCertificateRevocationListCheckMethod" => lambda {|n| @firewall_certificate_revocation_list_check_method = n.get_enum_value(MicrosoftGraph::Models::FirewallCertificateRevocationListCheckMethodType) },
                    "firewallIPSecExemptionsAllowDHCP" => lambda {|n| @firewall_i_p_sec_exemptions_allow_d_h_c_p = n.get_boolean_value() },
                    "firewallIPSecExemptionsAllowICMP" => lambda {|n| @firewall_i_p_sec_exemptions_allow_i_c_m_p = n.get_boolean_value() },
                    "firewallIPSecExemptionsAllowNeighborDiscovery" => lambda {|n| @firewall_i_p_sec_exemptions_allow_neighbor_discovery = n.get_boolean_value() },
                    "firewallIPSecExemptionsAllowRouterDiscovery" => lambda {|n| @firewall_i_p_sec_exemptions_allow_router_discovery = n.get_boolean_value() },
                    "firewallIdleTimeoutForSecurityAssociationInSeconds" => lambda {|n| @firewall_idle_timeout_for_security_association_in_seconds = n.get_number_value() },
                    "firewallMergeKeyingModuleSettings" => lambda {|n| @firewall_merge_keying_module_settings = n.get_boolean_value() },
                    "firewallPacketQueueingMethod" => lambda {|n| @firewall_packet_queueing_method = n.get_enum_value(MicrosoftGraph::Models::FirewallPacketQueueingMethodType) },
                    "firewallPreSharedKeyEncodingMethod" => lambda {|n| @firewall_pre_shared_key_encoding_method = n.get_enum_value(MicrosoftGraph::Models::FirewallPreSharedKeyEncodingMethodType) },
                    "firewallProfileDomain" => lambda {|n| @firewall_profile_domain = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WindowsFirewallNetworkProfile.create_from_discriminator_value(pn) }) },
                    "firewallProfilePrivate" => lambda {|n| @firewall_profile_private = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WindowsFirewallNetworkProfile.create_from_discriminator_value(pn) }) },
                    "firewallProfilePublic" => lambda {|n| @firewall_profile_public = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WindowsFirewallNetworkProfile.create_from_discriminator_value(pn) }) },
                    "smartScreenBlockOverrideForFiles" => lambda {|n| @smart_screen_block_override_for_files = n.get_boolean_value() },
                    "smartScreenEnableInShell" => lambda {|n| @smart_screen_enable_in_shell = n.get_boolean_value() },
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
                writer.write_enum_value("appLockerApplicationControl", @app_locker_application_control)
                writer.write_boolean_value("applicationGuardAllowPersistence", @application_guard_allow_persistence)
                writer.write_boolean_value("applicationGuardAllowPrintToLocalPrinters", @application_guard_allow_print_to_local_printers)
                writer.write_boolean_value("applicationGuardAllowPrintToNetworkPrinters", @application_guard_allow_print_to_network_printers)
                writer.write_boolean_value("applicationGuardAllowPrintToPDF", @application_guard_allow_print_to_p_d_f)
                writer.write_boolean_value("applicationGuardAllowPrintToXPS", @application_guard_allow_print_to_x_p_s)
                writer.write_enum_value("applicationGuardBlockClipboardSharing", @application_guard_block_clipboard_sharing)
                writer.write_enum_value("applicationGuardBlockFileTransfer", @application_guard_block_file_transfer)
                writer.write_boolean_value("applicationGuardBlockNonEnterpriseContent", @application_guard_block_non_enterprise_content)
                writer.write_boolean_value("applicationGuardEnabled", @application_guard_enabled)
                writer.write_boolean_value("applicationGuardForceAuditing", @application_guard_force_auditing)
                writer.write_boolean_value("bitLockerDisableWarningForOtherDiskEncryption", @bit_locker_disable_warning_for_other_disk_encryption)
                writer.write_boolean_value("bitLockerEnableStorageCardEncryptionOnMobile", @bit_locker_enable_storage_card_encryption_on_mobile)
                writer.write_boolean_value("bitLockerEncryptDevice", @bit_locker_encrypt_device)
                writer.write_object_value("bitLockerRemovableDrivePolicy", @bit_locker_removable_drive_policy)
                writer.write_collection_of_primitive_values("defenderAdditionalGuardedFolders", @defender_additional_guarded_folders)
                writer.write_collection_of_primitive_values("defenderAttackSurfaceReductionExcludedPaths", @defender_attack_surface_reduction_excluded_paths)
                writer.write_object_value("defenderExploitProtectionXml", @defender_exploit_protection_xml)
                writer.write_string_value("defenderExploitProtectionXmlFileName", @defender_exploit_protection_xml_file_name)
                writer.write_collection_of_primitive_values("defenderGuardedFoldersAllowedAppPaths", @defender_guarded_folders_allowed_app_paths)
                writer.write_boolean_value("defenderSecurityCenterBlockExploitProtectionOverride", @defender_security_center_block_exploit_protection_override)
                writer.write_boolean_value("firewallBlockStatefulFTP", @firewall_block_stateful_f_t_p)
                writer.write_enum_value("firewallCertificateRevocationListCheckMethod", @firewall_certificate_revocation_list_check_method)
                writer.write_boolean_value("firewallIPSecExemptionsAllowDHCP", @firewall_i_p_sec_exemptions_allow_d_h_c_p)
                writer.write_boolean_value("firewallIPSecExemptionsAllowICMP", @firewall_i_p_sec_exemptions_allow_i_c_m_p)
                writer.write_boolean_value("firewallIPSecExemptionsAllowNeighborDiscovery", @firewall_i_p_sec_exemptions_allow_neighbor_discovery)
                writer.write_boolean_value("firewallIPSecExemptionsAllowRouterDiscovery", @firewall_i_p_sec_exemptions_allow_router_discovery)
                writer.write_number_value("firewallIdleTimeoutForSecurityAssociationInSeconds", @firewall_idle_timeout_for_security_association_in_seconds)
                writer.write_boolean_value("firewallMergeKeyingModuleSettings", @firewall_merge_keying_module_settings)
                writer.write_enum_value("firewallPacketQueueingMethod", @firewall_packet_queueing_method)
                writer.write_enum_value("firewallPreSharedKeyEncodingMethod", @firewall_pre_shared_key_encoding_method)
                writer.write_object_value("firewallProfileDomain", @firewall_profile_domain)
                writer.write_object_value("firewallProfilePrivate", @firewall_profile_private)
                writer.write_object_value("firewallProfilePublic", @firewall_profile_public)
                writer.write_boolean_value("smartScreenBlockOverrideForFiles", @smart_screen_block_override_for_files)
                writer.write_boolean_value("smartScreenEnableInShell", @smart_screen_enable_in_shell)
            end
            ## 
            ## Gets the smartScreenBlockOverrideForFiles property value. Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.
            ## @return a boolean
            ## 
            def smart_screen_block_override_for_files
                return @smart_screen_block_override_for_files
            end
            ## 
            ## Sets the smartScreenBlockOverrideForFiles property value. Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.
            ## @param value Value to set for the smart_screen_block_override_for_files property.
            ## @return a void
            ## 
            def smart_screen_block_override_for_files=(value)
                @smart_screen_block_override_for_files = value
            end
            ## 
            ## Gets the smartScreenEnableInShell property value. Allows IT Admins to configure SmartScreen for Windows.
            ## @return a boolean
            ## 
            def smart_screen_enable_in_shell
                return @smart_screen_enable_in_shell
            end
            ## 
            ## Sets the smartScreenEnableInShell property value. Allows IT Admins to configure SmartScreen for Windows.
            ## @param value Value to set for the smart_screen_enable_in_shell property.
            ## @return a void
            ## 
            def smart_screen_enable_in_shell=(value)
                @smart_screen_enable_in_shell = value
            end
        end
    end
end
