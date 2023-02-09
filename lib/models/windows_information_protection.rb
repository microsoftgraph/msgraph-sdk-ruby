require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsInformationProtection < MicrosoftGraph::Models::ManagedAppPolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Navigation property to list of security groups targeted for policy.
            @assignments
            ## 
            # Specifies whether to allow Azure RMS encryption for WIP
            @azure_rights_management_services_allowed
            ## 
            # Specifies a recovery certificate that can be used for data recovery of encrypted files. This is the same as the data recovery agent(DRA) certificate for encrypting file system(EFS)
            @data_recovery_certificate
            ## 
            # Possible values for WIP Protection enforcement levels
            @enforcement_level
            ## 
            # Primary enterprise domain
            @enterprise_domain
            ## 
            # Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to
            @enterprise_i_p_ranges
            ## 
            # Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false
            @enterprise_i_p_ranges_are_authoritative
            ## 
            # This is the comma-separated list of internal proxy servers. For example, '157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59'. These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseProxiedDomains policy to force traffic to the matched domains through these proxies
            @enterprise_internal_proxy_servers
            ## 
            # This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to
            @enterprise_network_domain_names
            ## 
            # List of enterprise domains to be protected
            @enterprise_protected_domain_names
            ## 
            # Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy
            @enterprise_proxied_domains
            ## 
            # This is a list of proxy servers. Any server not on this list is considered non-enterprise
            @enterprise_proxy_servers
            ## 
            # Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false
            @enterprise_proxy_servers_are_authoritative
            ## 
            # Another way to input exempt apps through xml files
            @exempt_app_locker_files
            ## 
            # Exempt applications can also access enterprise data, but the data handled by those applications are not protected. This is because some critical enterprise applications may have compatibility problems with encrypted data.
            @exempt_apps
            ## 
            # Determines whether overlays are added to icons for WIP protected files in Explorer and enterprise only app tiles in the Start menu. Starting in Windows 10, version 1703 this setting also configures the visibility of the WIP icon in the title bar of a WIP-protected app
            @icons_visible
            ## 
            # This switch is for the Windows Search Indexer, to allow or disallow indexing of items
            @indexing_encrypted_stores_or_items_blocked
            ## 
            # Indicates if the policy is deployed to any inclusion groups or not.
            @is_assigned
            ## 
            # List of domain names that can used for work or personal resource
            @neutral_domain_resources
            ## 
            # Another way to input protected apps through xml files
            @protected_app_locker_files
            ## 
            # Protected applications can access enterprise data and the data handled by those applications are protected with encryption
            @protected_apps
            ## 
            # Specifies whether the protection under lock feature (also known as encrypt under pin) should be configured
            @protection_under_lock_config_required
            ## 
            # This policy controls whether to revoke the WIP keys when a device unenrolls from the management service. If set to 1 (Don't revoke keys), the keys will not be revoked and the user will continue to have access to protected files after unenrollment. If the keys are not revoked, there will be no revoked file cleanup subsequently.
            @revoke_on_unenroll_disabled
            ## 
            # TemplateID GUID to use for RMS encryption. The RMS template allows the IT admin to configure the details about who has access to RMS-protected file and how long they have access
            @rights_management_services_template_id
            ## 
            # Specifies a list of file extensions, so that files with these extensions are encrypted when copying from an SMB share within the corporate boundary
            @smb_auto_encrypted_file_extensions
            ## 
            ## Gets the assignments property value. Navigation property to list of security groups targeted for policy.
            ## @return a targeted_managed_app_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Navigation property to list of security groups targeted for policy.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the azureRightsManagementServicesAllowed property value. Specifies whether to allow Azure RMS encryption for WIP
            ## @return a boolean
            ## 
            def azure_rights_management_services_allowed
                return @azure_rights_management_services_allowed
            end
            ## 
            ## Sets the azureRightsManagementServicesAllowed property value. Specifies whether to allow Azure RMS encryption for WIP
            ## @param value Value to set for the azure_rights_management_services_allowed property.
            ## @return a void
            ## 
            def azure_rights_management_services_allowed=(value)
                @azure_rights_management_services_allowed = value
            end
            ## 
            ## Instantiates a new WindowsInformationProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsInformationProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.mdmWindowsInformationProtectionPolicy"
                            return MdmWindowsInformationProtectionPolicy.new
                        when "#microsoft.graph.windowsInformationProtectionPolicy"
                            return WindowsInformationProtectionPolicy.new
                    end
                end
                return WindowsInformationProtection.new
            end
            ## 
            ## Gets the dataRecoveryCertificate property value. Specifies a recovery certificate that can be used for data recovery of encrypted files. This is the same as the data recovery agent(DRA) certificate for encrypting file system(EFS)
            ## @return a windows_information_protection_data_recovery_certificate
            ## 
            def data_recovery_certificate
                return @data_recovery_certificate
            end
            ## 
            ## Sets the dataRecoveryCertificate property value. Specifies a recovery certificate that can be used for data recovery of encrypted files. This is the same as the data recovery agent(DRA) certificate for encrypting file system(EFS)
            ## @param value Value to set for the data_recovery_certificate property.
            ## @return a void
            ## 
            def data_recovery_certificate=(value)
                @data_recovery_certificate = value
            end
            ## 
            ## Gets the enforcementLevel property value. Possible values for WIP Protection enforcement levels
            ## @return a windows_information_protection_enforcement_level
            ## 
            def enforcement_level
                return @enforcement_level
            end
            ## 
            ## Sets the enforcementLevel property value. Possible values for WIP Protection enforcement levels
            ## @param value Value to set for the enforcement_level property.
            ## @return a void
            ## 
            def enforcement_level=(value)
                @enforcement_level = value
            end
            ## 
            ## Gets the enterpriseDomain property value. Primary enterprise domain
            ## @return a string
            ## 
            def enterprise_domain
                return @enterprise_domain
            end
            ## 
            ## Sets the enterpriseDomain property value. Primary enterprise domain
            ## @param value Value to set for the enterprise_domain property.
            ## @return a void
            ## 
            def enterprise_domain=(value)
                @enterprise_domain = value
            end
            ## 
            ## Gets the enterpriseIPRanges property value. Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to
            ## @return a windows_information_protection_i_p_range_collection
            ## 
            def enterprise_i_p_ranges
                return @enterprise_i_p_ranges
            end
            ## 
            ## Sets the enterpriseIPRanges property value. Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to
            ## @param value Value to set for the enterprise_i_p_ranges property.
            ## @return a void
            ## 
            def enterprise_i_p_ranges=(value)
                @enterprise_i_p_ranges = value
            end
            ## 
            ## Gets the enterpriseIPRangesAreAuthoritative property value. Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false
            ## @return a boolean
            ## 
            def enterprise_i_p_ranges_are_authoritative
                return @enterprise_i_p_ranges_are_authoritative
            end
            ## 
            ## Sets the enterpriseIPRangesAreAuthoritative property value. Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false
            ## @param value Value to set for the enterprise_i_p_ranges_are_authoritative property.
            ## @return a void
            ## 
            def enterprise_i_p_ranges_are_authoritative=(value)
                @enterprise_i_p_ranges_are_authoritative = value
            end
            ## 
            ## Gets the enterpriseInternalProxyServers property value. This is the comma-separated list of internal proxy servers. For example, '157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59'. These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseProxiedDomains policy to force traffic to the matched domains through these proxies
            ## @return a windows_information_protection_resource_collection
            ## 
            def enterprise_internal_proxy_servers
                return @enterprise_internal_proxy_servers
            end
            ## 
            ## Sets the enterpriseInternalProxyServers property value. This is the comma-separated list of internal proxy servers. For example, '157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59'. These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseProxiedDomains policy to force traffic to the matched domains through these proxies
            ## @param value Value to set for the enterprise_internal_proxy_servers property.
            ## @return a void
            ## 
            def enterprise_internal_proxy_servers=(value)
                @enterprise_internal_proxy_servers = value
            end
            ## 
            ## Gets the enterpriseNetworkDomainNames property value. This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to
            ## @return a windows_information_protection_resource_collection
            ## 
            def enterprise_network_domain_names
                return @enterprise_network_domain_names
            end
            ## 
            ## Sets the enterpriseNetworkDomainNames property value. This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to
            ## @param value Value to set for the enterprise_network_domain_names property.
            ## @return a void
            ## 
            def enterprise_network_domain_names=(value)
                @enterprise_network_domain_names = value
            end
            ## 
            ## Gets the enterpriseProtectedDomainNames property value. List of enterprise domains to be protected
            ## @return a windows_information_protection_resource_collection
            ## 
            def enterprise_protected_domain_names
                return @enterprise_protected_domain_names
            end
            ## 
            ## Sets the enterpriseProtectedDomainNames property value. List of enterprise domains to be protected
            ## @param value Value to set for the enterprise_protected_domain_names property.
            ## @return a void
            ## 
            def enterprise_protected_domain_names=(value)
                @enterprise_protected_domain_names = value
            end
            ## 
            ## Gets the enterpriseProxiedDomains property value. Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy
            ## @return a windows_information_protection_proxied_domain_collection
            ## 
            def enterprise_proxied_domains
                return @enterprise_proxied_domains
            end
            ## 
            ## Sets the enterpriseProxiedDomains property value. Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy
            ## @param value Value to set for the enterprise_proxied_domains property.
            ## @return a void
            ## 
            def enterprise_proxied_domains=(value)
                @enterprise_proxied_domains = value
            end
            ## 
            ## Gets the enterpriseProxyServers property value. This is a list of proxy servers. Any server not on this list is considered non-enterprise
            ## @return a windows_information_protection_resource_collection
            ## 
            def enterprise_proxy_servers
                return @enterprise_proxy_servers
            end
            ## 
            ## Sets the enterpriseProxyServers property value. This is a list of proxy servers. Any server not on this list is considered non-enterprise
            ## @param value Value to set for the enterprise_proxy_servers property.
            ## @return a void
            ## 
            def enterprise_proxy_servers=(value)
                @enterprise_proxy_servers = value
            end
            ## 
            ## Gets the enterpriseProxyServersAreAuthoritative property value. Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false
            ## @return a boolean
            ## 
            def enterprise_proxy_servers_are_authoritative
                return @enterprise_proxy_servers_are_authoritative
            end
            ## 
            ## Sets the enterpriseProxyServersAreAuthoritative property value. Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false
            ## @param value Value to set for the enterprise_proxy_servers_are_authoritative property.
            ## @return a void
            ## 
            def enterprise_proxy_servers_are_authoritative=(value)
                @enterprise_proxy_servers_are_authoritative = value
            end
            ## 
            ## Gets the exemptAppLockerFiles property value. Another way to input exempt apps through xml files
            ## @return a windows_information_protection_app_locker_file
            ## 
            def exempt_app_locker_files
                return @exempt_app_locker_files
            end
            ## 
            ## Sets the exemptAppLockerFiles property value. Another way to input exempt apps through xml files
            ## @param value Value to set for the exempt_app_locker_files property.
            ## @return a void
            ## 
            def exempt_app_locker_files=(value)
                @exempt_app_locker_files = value
            end
            ## 
            ## Gets the exemptApps property value. Exempt applications can also access enterprise data, but the data handled by those applications are not protected. This is because some critical enterprise applications may have compatibility problems with encrypted data.
            ## @return a windows_information_protection_app
            ## 
            def exempt_apps
                return @exempt_apps
            end
            ## 
            ## Sets the exemptApps property value. Exempt applications can also access enterprise data, but the data handled by those applications are not protected. This is because some critical enterprise applications may have compatibility problems with encrypted data.
            ## @param value Value to set for the exempt_apps property.
            ## @return a void
            ## 
            def exempt_apps=(value)
                @exempt_apps = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TargetedManagedAppPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "azureRightsManagementServicesAllowed" => lambda {|n| @azure_rights_management_services_allowed = n.get_boolean_value() },
                    "dataRecoveryCertificate" => lambda {|n| @data_recovery_certificate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionDataRecoveryCertificate.create_from_discriminator_value(pn) }) },
                    "enforcementLevel" => lambda {|n| @enforcement_level = n.get_enum_value(MicrosoftGraph::Models::WindowsInformationProtectionEnforcementLevel) },
                    "enterpriseDomain" => lambda {|n| @enterprise_domain = n.get_string_value() },
                    "enterpriseIPRanges" => lambda {|n| @enterprise_i_p_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionIPRangeCollection.create_from_discriminator_value(pn) }) },
                    "enterpriseIPRangesAreAuthoritative" => lambda {|n| @enterprise_i_p_ranges_are_authoritative = n.get_boolean_value() },
                    "enterpriseInternalProxyServers" => lambda {|n| @enterprise_internal_proxy_servers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionResourceCollection.create_from_discriminator_value(pn) }) },
                    "enterpriseNetworkDomainNames" => lambda {|n| @enterprise_network_domain_names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionResourceCollection.create_from_discriminator_value(pn) }) },
                    "enterpriseProtectedDomainNames" => lambda {|n| @enterprise_protected_domain_names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionResourceCollection.create_from_discriminator_value(pn) }) },
                    "enterpriseProxiedDomains" => lambda {|n| @enterprise_proxied_domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionProxiedDomainCollection.create_from_discriminator_value(pn) }) },
                    "enterpriseProxyServers" => lambda {|n| @enterprise_proxy_servers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionResourceCollection.create_from_discriminator_value(pn) }) },
                    "enterpriseProxyServersAreAuthoritative" => lambda {|n| @enterprise_proxy_servers_are_authoritative = n.get_boolean_value() },
                    "exemptAppLockerFiles" => lambda {|n| @exempt_app_locker_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionAppLockerFile.create_from_discriminator_value(pn) }) },
                    "exemptApps" => lambda {|n| @exempt_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionApp.create_from_discriminator_value(pn) }) },
                    "iconsVisible" => lambda {|n| @icons_visible = n.get_boolean_value() },
                    "indexingEncryptedStoresOrItemsBlocked" => lambda {|n| @indexing_encrypted_stores_or_items_blocked = n.get_boolean_value() },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                    "neutralDomainResources" => lambda {|n| @neutral_domain_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionResourceCollection.create_from_discriminator_value(pn) }) },
                    "protectedAppLockerFiles" => lambda {|n| @protected_app_locker_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionAppLockerFile.create_from_discriminator_value(pn) }) },
                    "protectedApps" => lambda {|n| @protected_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionApp.create_from_discriminator_value(pn) }) },
                    "protectionUnderLockConfigRequired" => lambda {|n| @protection_under_lock_config_required = n.get_boolean_value() },
                    "revokeOnUnenrollDisabled" => lambda {|n| @revoke_on_unenroll_disabled = n.get_boolean_value() },
                    "rightsManagementServicesTemplateId" => lambda {|n| @rights_management_services_template_id = n.get_guid_value() },
                    "smbAutoEncryptedFileExtensions" => lambda {|n| @smb_auto_encrypted_file_extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WindowsInformationProtectionResourceCollection.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the iconsVisible property value. Determines whether overlays are added to icons for WIP protected files in Explorer and enterprise only app tiles in the Start menu. Starting in Windows 10, version 1703 this setting also configures the visibility of the WIP icon in the title bar of a WIP-protected app
            ## @return a boolean
            ## 
            def icons_visible
                return @icons_visible
            end
            ## 
            ## Sets the iconsVisible property value. Determines whether overlays are added to icons for WIP protected files in Explorer and enterprise only app tiles in the Start menu. Starting in Windows 10, version 1703 this setting also configures the visibility of the WIP icon in the title bar of a WIP-protected app
            ## @param value Value to set for the icons_visible property.
            ## @return a void
            ## 
            def icons_visible=(value)
                @icons_visible = value
            end
            ## 
            ## Gets the indexingEncryptedStoresOrItemsBlocked property value. This switch is for the Windows Search Indexer, to allow or disallow indexing of items
            ## @return a boolean
            ## 
            def indexing_encrypted_stores_or_items_blocked
                return @indexing_encrypted_stores_or_items_blocked
            end
            ## 
            ## Sets the indexingEncryptedStoresOrItemsBlocked property value. This switch is for the Windows Search Indexer, to allow or disallow indexing of items
            ## @param value Value to set for the indexing_encrypted_stores_or_items_blocked property.
            ## @return a void
            ## 
            def indexing_encrypted_stores_or_items_blocked=(value)
                @indexing_encrypted_stores_or_items_blocked = value
            end
            ## 
            ## Gets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @param value Value to set for the is_assigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Gets the neutralDomainResources property value. List of domain names that can used for work or personal resource
            ## @return a windows_information_protection_resource_collection
            ## 
            def neutral_domain_resources
                return @neutral_domain_resources
            end
            ## 
            ## Sets the neutralDomainResources property value. List of domain names that can used for work or personal resource
            ## @param value Value to set for the neutral_domain_resources property.
            ## @return a void
            ## 
            def neutral_domain_resources=(value)
                @neutral_domain_resources = value
            end
            ## 
            ## Gets the protectedAppLockerFiles property value. Another way to input protected apps through xml files
            ## @return a windows_information_protection_app_locker_file
            ## 
            def protected_app_locker_files
                return @protected_app_locker_files
            end
            ## 
            ## Sets the protectedAppLockerFiles property value. Another way to input protected apps through xml files
            ## @param value Value to set for the protected_app_locker_files property.
            ## @return a void
            ## 
            def protected_app_locker_files=(value)
                @protected_app_locker_files = value
            end
            ## 
            ## Gets the protectedApps property value. Protected applications can access enterprise data and the data handled by those applications are protected with encryption
            ## @return a windows_information_protection_app
            ## 
            def protected_apps
                return @protected_apps
            end
            ## 
            ## Sets the protectedApps property value. Protected applications can access enterprise data and the data handled by those applications are protected with encryption
            ## @param value Value to set for the protected_apps property.
            ## @return a void
            ## 
            def protected_apps=(value)
                @protected_apps = value
            end
            ## 
            ## Gets the protectionUnderLockConfigRequired property value. Specifies whether the protection under lock feature (also known as encrypt under pin) should be configured
            ## @return a boolean
            ## 
            def protection_under_lock_config_required
                return @protection_under_lock_config_required
            end
            ## 
            ## Sets the protectionUnderLockConfigRequired property value. Specifies whether the protection under lock feature (also known as encrypt under pin) should be configured
            ## @param value Value to set for the protection_under_lock_config_required property.
            ## @return a void
            ## 
            def protection_under_lock_config_required=(value)
                @protection_under_lock_config_required = value
            end
            ## 
            ## Gets the revokeOnUnenrollDisabled property value. This policy controls whether to revoke the WIP keys when a device unenrolls from the management service. If set to 1 (Don't revoke keys), the keys will not be revoked and the user will continue to have access to protected files after unenrollment. If the keys are not revoked, there will be no revoked file cleanup subsequently.
            ## @return a boolean
            ## 
            def revoke_on_unenroll_disabled
                return @revoke_on_unenroll_disabled
            end
            ## 
            ## Sets the revokeOnUnenrollDisabled property value. This policy controls whether to revoke the WIP keys when a device unenrolls from the management service. If set to 1 (Don't revoke keys), the keys will not be revoked and the user will continue to have access to protected files after unenrollment. If the keys are not revoked, there will be no revoked file cleanup subsequently.
            ## @param value Value to set for the revoke_on_unenroll_disabled property.
            ## @return a void
            ## 
            def revoke_on_unenroll_disabled=(value)
                @revoke_on_unenroll_disabled = value
            end
            ## 
            ## Gets the rightsManagementServicesTemplateId property value. TemplateID GUID to use for RMS encryption. The RMS template allows the IT admin to configure the details about who has access to RMS-protected file and how long they have access
            ## @return a guid
            ## 
            def rights_management_services_template_id
                return @rights_management_services_template_id
            end
            ## 
            ## Sets the rightsManagementServicesTemplateId property value. TemplateID GUID to use for RMS encryption. The RMS template allows the IT admin to configure the details about who has access to RMS-protected file and how long they have access
            ## @param value Value to set for the rights_management_services_template_id property.
            ## @return a void
            ## 
            def rights_management_services_template_id=(value)
                @rights_management_services_template_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_boolean_value("azureRightsManagementServicesAllowed", @azure_rights_management_services_allowed)
                writer.write_object_value("dataRecoveryCertificate", @data_recovery_certificate)
                writer.write_enum_value("enforcementLevel", @enforcement_level)
                writer.write_string_value("enterpriseDomain", @enterprise_domain)
                writer.write_collection_of_object_values("enterpriseIPRanges", @enterprise_i_p_ranges)
                writer.write_boolean_value("enterpriseIPRangesAreAuthoritative", @enterprise_i_p_ranges_are_authoritative)
                writer.write_collection_of_object_values("enterpriseInternalProxyServers", @enterprise_internal_proxy_servers)
                writer.write_collection_of_object_values("enterpriseNetworkDomainNames", @enterprise_network_domain_names)
                writer.write_collection_of_object_values("enterpriseProtectedDomainNames", @enterprise_protected_domain_names)
                writer.write_collection_of_object_values("enterpriseProxiedDomains", @enterprise_proxied_domains)
                writer.write_collection_of_object_values("enterpriseProxyServers", @enterprise_proxy_servers)
                writer.write_boolean_value("enterpriseProxyServersAreAuthoritative", @enterprise_proxy_servers_are_authoritative)
                writer.write_collection_of_object_values("exemptAppLockerFiles", @exempt_app_locker_files)
                writer.write_collection_of_object_values("exemptApps", @exempt_apps)
                writer.write_boolean_value("iconsVisible", @icons_visible)
                writer.write_boolean_value("indexingEncryptedStoresOrItemsBlocked", @indexing_encrypted_stores_or_items_blocked)
                writer.write_boolean_value("isAssigned", @is_assigned)
                writer.write_collection_of_object_values("neutralDomainResources", @neutral_domain_resources)
                writer.write_collection_of_object_values("protectedAppLockerFiles", @protected_app_locker_files)
                writer.write_collection_of_object_values("protectedApps", @protected_apps)
                writer.write_boolean_value("protectionUnderLockConfigRequired", @protection_under_lock_config_required)
                writer.write_boolean_value("revokeOnUnenrollDisabled", @revoke_on_unenroll_disabled)
                writer.write_guid_value("rightsManagementServicesTemplateId", @rights_management_services_template_id)
                writer.write_collection_of_object_values("smbAutoEncryptedFileExtensions", @smb_auto_encrypted_file_extensions)
            end
            ## 
            ## Gets the smbAutoEncryptedFileExtensions property value. Specifies a list of file extensions, so that files with these extensions are encrypted when copying from an SMB share within the corporate boundary
            ## @return a windows_information_protection_resource_collection
            ## 
            def smb_auto_encrypted_file_extensions
                return @smb_auto_encrypted_file_extensions
            end
            ## 
            ## Sets the smbAutoEncryptedFileExtensions property value. Specifies a list of file extensions, so that files with these extensions are encrypted when copying from an SMB share within the corporate boundary
            ## @param value Value to set for the smb_auto_encrypted_file_extensions property.
            ## @return a void
            ## 
            def smb_auto_encrypted_file_extensions=(value)
                @smb_auto_encrypted_file_extensions = value
            end
        end
    end
end
