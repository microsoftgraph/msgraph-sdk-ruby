require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ManagedAppProtection < MicrosoftGraph::Models::ManagedAppPolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Data storage locations where a user may store managed data.
            @allowed_data_storage_locations
            ## 
            # Data can be transferred from/to these classes of apps
            @allowed_inbound_data_transfer_sources
            ## 
            # Represents the level to which the device's clipboard may be shared between apps
            @allowed_outbound_clipboard_sharing_level
            ## 
            # Data can be transferred from/to these classes of apps
            @allowed_outbound_data_transfer_destinations
            ## 
            # Indicates whether contacts can be synced to the user's device.
            @contact_sync_blocked
            ## 
            # Indicates whether the backup of a managed app's data is blocked.
            @data_backup_blocked
            ## 
            # Indicates whether device compliance is required.
            @device_compliance_required
            ## 
            # Indicates whether use of the app pin is required if the device pin is set.
            @disable_app_pin_if_device_pin_is_set
            ## 
            # Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True.
            @fingerprint_blocked
            ## 
            # Type of managed browser
            @managed_browser
            ## 
            # Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android)
            @managed_browser_to_open_links_required
            ## 
            # Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped.
            @maximum_pin_retries
            ## 
            # Minimum pin length required for an app-level pin if PinRequired is set to True
            @minimum_pin_length
            ## 
            # Versions less than the specified version will block the managed app from accessing company data.
            @minimum_required_app_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data.
            @minimum_required_os_version
            ## 
            # Versions less than the specified version will result in warning message on the managed app.
            @minimum_warning_app_version
            ## 
            # Versions less than the specified version will result in warning message on the managed app from accessing company data.
            @minimum_warning_os_version
            ## 
            # Indicates whether organizational credentials are required for app use.
            @organizational_credentials_required
            ## 
            # TimePeriod before the all-level pin must be reset if PinRequired is set to True.
            @period_before_pin_reset
            ## 
            # The period after which access is checked when the device is not connected to the internet.
            @period_offline_before_access_check
            ## 
            # The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped.
            @period_offline_before_wipe_is_enforced
            ## 
            # The period after which access is checked when the device is connected to the internet.
            @period_online_before_access_check
            ## 
            # Character set which is to be used for a user's app PIN
            @pin_character_set
            ## 
            # Indicates whether an app-level pin is required.
            @pin_required
            ## 
            # Indicates whether printing is allowed from managed apps.
            @print_blocked
            ## 
            # Indicates whether users may use the 'Save As' menu item to save a copy of protected files.
            @save_as_blocked
            ## 
            # Indicates whether simplePin is blocked.
            @simple_pin_blocked
            ## 
            ## Gets the allowedDataStorageLocations property value. Data storage locations where a user may store managed data.
            ## @return a managed_app_data_storage_location
            ## 
            def allowed_data_storage_locations
                return @allowed_data_storage_locations
            end
            ## 
            ## Sets the allowedDataStorageLocations property value. Data storage locations where a user may store managed data.
            ## @param value Value to set for the allowed_data_storage_locations property.
            ## @return a void
            ## 
            def allowed_data_storage_locations=(value)
                @allowed_data_storage_locations = value
            end
            ## 
            ## Gets the allowedInboundDataTransferSources property value. Data can be transferred from/to these classes of apps
            ## @return a managed_app_data_transfer_level
            ## 
            def allowed_inbound_data_transfer_sources
                return @allowed_inbound_data_transfer_sources
            end
            ## 
            ## Sets the allowedInboundDataTransferSources property value. Data can be transferred from/to these classes of apps
            ## @param value Value to set for the allowed_inbound_data_transfer_sources property.
            ## @return a void
            ## 
            def allowed_inbound_data_transfer_sources=(value)
                @allowed_inbound_data_transfer_sources = value
            end
            ## 
            ## Gets the allowedOutboundClipboardSharingLevel property value. Represents the level to which the device's clipboard may be shared between apps
            ## @return a managed_app_clipboard_sharing_level
            ## 
            def allowed_outbound_clipboard_sharing_level
                return @allowed_outbound_clipboard_sharing_level
            end
            ## 
            ## Sets the allowedOutboundClipboardSharingLevel property value. Represents the level to which the device's clipboard may be shared between apps
            ## @param value Value to set for the allowed_outbound_clipboard_sharing_level property.
            ## @return a void
            ## 
            def allowed_outbound_clipboard_sharing_level=(value)
                @allowed_outbound_clipboard_sharing_level = value
            end
            ## 
            ## Gets the allowedOutboundDataTransferDestinations property value. Data can be transferred from/to these classes of apps
            ## @return a managed_app_data_transfer_level
            ## 
            def allowed_outbound_data_transfer_destinations
                return @allowed_outbound_data_transfer_destinations
            end
            ## 
            ## Sets the allowedOutboundDataTransferDestinations property value. Data can be transferred from/to these classes of apps
            ## @param value Value to set for the allowed_outbound_data_transfer_destinations property.
            ## @return a void
            ## 
            def allowed_outbound_data_transfer_destinations=(value)
                @allowed_outbound_data_transfer_destinations = value
            end
            ## 
            ## Instantiates a new ManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.managedAppProtection"
            end
            ## 
            ## Gets the contactSyncBlocked property value. Indicates whether contacts can be synced to the user's device.
            ## @return a boolean
            ## 
            def contact_sync_blocked
                return @contact_sync_blocked
            end
            ## 
            ## Sets the contactSyncBlocked property value. Indicates whether contacts can be synced to the user's device.
            ## @param value Value to set for the contact_sync_blocked property.
            ## @return a void
            ## 
            def contact_sync_blocked=(value)
                @contact_sync_blocked = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidManagedAppProtection"
                            return AndroidManagedAppProtection.new
                        when "#microsoft.graph.defaultManagedAppProtection"
                            return DefaultManagedAppProtection.new
                        when "#microsoft.graph.iosManagedAppProtection"
                            return IosManagedAppProtection.new
                        when "#microsoft.graph.targetedManagedAppProtection"
                            return TargetedManagedAppProtection.new
                    end
                end
                return ManagedAppProtection.new
            end
            ## 
            ## Gets the dataBackupBlocked property value. Indicates whether the backup of a managed app's data is blocked.
            ## @return a boolean
            ## 
            def data_backup_blocked
                return @data_backup_blocked
            end
            ## 
            ## Sets the dataBackupBlocked property value. Indicates whether the backup of a managed app's data is blocked.
            ## @param value Value to set for the data_backup_blocked property.
            ## @return a void
            ## 
            def data_backup_blocked=(value)
                @data_backup_blocked = value
            end
            ## 
            ## Gets the deviceComplianceRequired property value. Indicates whether device compliance is required.
            ## @return a boolean
            ## 
            def device_compliance_required
                return @device_compliance_required
            end
            ## 
            ## Sets the deviceComplianceRequired property value. Indicates whether device compliance is required.
            ## @param value Value to set for the device_compliance_required property.
            ## @return a void
            ## 
            def device_compliance_required=(value)
                @device_compliance_required = value
            end
            ## 
            ## Gets the disableAppPinIfDevicePinIsSet property value. Indicates whether use of the app pin is required if the device pin is set.
            ## @return a boolean
            ## 
            def disable_app_pin_if_device_pin_is_set
                return @disable_app_pin_if_device_pin_is_set
            end
            ## 
            ## Sets the disableAppPinIfDevicePinIsSet property value. Indicates whether use of the app pin is required if the device pin is set.
            ## @param value Value to set for the disable_app_pin_if_device_pin_is_set property.
            ## @return a void
            ## 
            def disable_app_pin_if_device_pin_is_set=(value)
                @disable_app_pin_if_device_pin_is_set = value
            end
            ## 
            ## Gets the fingerprintBlocked property value. Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True.
            ## @return a boolean
            ## 
            def fingerprint_blocked
                return @fingerprint_blocked
            end
            ## 
            ## Sets the fingerprintBlocked property value. Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True.
            ## @param value Value to set for the fingerprint_blocked property.
            ## @return a void
            ## 
            def fingerprint_blocked=(value)
                @fingerprint_blocked = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedDataStorageLocations" => lambda {|n| @allowed_data_storage_locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedAppDataStorageLocation.create_from_discriminator_value(pn) }) },
                    "allowedInboundDataTransferSources" => lambda {|n| @allowed_inbound_data_transfer_sources = n.get_enum_value(MicrosoftGraph::Models::ManagedAppDataTransferLevel) },
                    "allowedOutboundClipboardSharingLevel" => lambda {|n| @allowed_outbound_clipboard_sharing_level = n.get_enum_value(MicrosoftGraph::Models::ManagedAppClipboardSharingLevel) },
                    "allowedOutboundDataTransferDestinations" => lambda {|n| @allowed_outbound_data_transfer_destinations = n.get_enum_value(MicrosoftGraph::Models::ManagedAppDataTransferLevel) },
                    "contactSyncBlocked" => lambda {|n| @contact_sync_blocked = n.get_boolean_value() },
                    "dataBackupBlocked" => lambda {|n| @data_backup_blocked = n.get_boolean_value() },
                    "deviceComplianceRequired" => lambda {|n| @device_compliance_required = n.get_boolean_value() },
                    "disableAppPinIfDevicePinIsSet" => lambda {|n| @disable_app_pin_if_device_pin_is_set = n.get_boolean_value() },
                    "fingerprintBlocked" => lambda {|n| @fingerprint_blocked = n.get_boolean_value() },
                    "managedBrowser" => lambda {|n| @managed_browser = n.get_enum_value(MicrosoftGraph::Models::ManagedBrowserType) },
                    "managedBrowserToOpenLinksRequired" => lambda {|n| @managed_browser_to_open_links_required = n.get_boolean_value() },
                    "maximumPinRetries" => lambda {|n| @maximum_pin_retries = n.get_number_value() },
                    "minimumPinLength" => lambda {|n| @minimum_pin_length = n.get_number_value() },
                    "minimumRequiredAppVersion" => lambda {|n| @minimum_required_app_version = n.get_string_value() },
                    "minimumRequiredOsVersion" => lambda {|n| @minimum_required_os_version = n.get_string_value() },
                    "minimumWarningAppVersion" => lambda {|n| @minimum_warning_app_version = n.get_string_value() },
                    "minimumWarningOsVersion" => lambda {|n| @minimum_warning_os_version = n.get_string_value() },
                    "organizationalCredentialsRequired" => lambda {|n| @organizational_credentials_required = n.get_boolean_value() },
                    "periodBeforePinReset" => lambda {|n| @period_before_pin_reset = n.get_duration_value() },
                    "periodOfflineBeforeAccessCheck" => lambda {|n| @period_offline_before_access_check = n.get_duration_value() },
                    "periodOfflineBeforeWipeIsEnforced" => lambda {|n| @period_offline_before_wipe_is_enforced = n.get_duration_value() },
                    "periodOnlineBeforeAccessCheck" => lambda {|n| @period_online_before_access_check = n.get_duration_value() },
                    "pinCharacterSet" => lambda {|n| @pin_character_set = n.get_enum_value(MicrosoftGraph::Models::ManagedAppPinCharacterSet) },
                    "pinRequired" => lambda {|n| @pin_required = n.get_boolean_value() },
                    "printBlocked" => lambda {|n| @print_blocked = n.get_boolean_value() },
                    "saveAsBlocked" => lambda {|n| @save_as_blocked = n.get_boolean_value() },
                    "simplePinBlocked" => lambda {|n| @simple_pin_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the managedBrowser property value. Type of managed browser
            ## @return a managed_browser_type
            ## 
            def managed_browser
                return @managed_browser
            end
            ## 
            ## Sets the managedBrowser property value. Type of managed browser
            ## @param value Value to set for the managed_browser property.
            ## @return a void
            ## 
            def managed_browser=(value)
                @managed_browser = value
            end
            ## 
            ## Gets the managedBrowserToOpenLinksRequired property value. Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android)
            ## @return a boolean
            ## 
            def managed_browser_to_open_links_required
                return @managed_browser_to_open_links_required
            end
            ## 
            ## Sets the managedBrowserToOpenLinksRequired property value. Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android)
            ## @param value Value to set for the managed_browser_to_open_links_required property.
            ## @return a void
            ## 
            def managed_browser_to_open_links_required=(value)
                @managed_browser_to_open_links_required = value
            end
            ## 
            ## Gets the maximumPinRetries property value. Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped.
            ## @return a integer
            ## 
            def maximum_pin_retries
                return @maximum_pin_retries
            end
            ## 
            ## Sets the maximumPinRetries property value. Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped.
            ## @param value Value to set for the maximum_pin_retries property.
            ## @return a void
            ## 
            def maximum_pin_retries=(value)
                @maximum_pin_retries = value
            end
            ## 
            ## Gets the minimumPinLength property value. Minimum pin length required for an app-level pin if PinRequired is set to True
            ## @return a integer
            ## 
            def minimum_pin_length
                return @minimum_pin_length
            end
            ## 
            ## Sets the minimumPinLength property value. Minimum pin length required for an app-level pin if PinRequired is set to True
            ## @param value Value to set for the minimum_pin_length property.
            ## @return a void
            ## 
            def minimum_pin_length=(value)
                @minimum_pin_length = value
            end
            ## 
            ## Gets the minimumRequiredAppVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_required_app_version
                return @minimum_required_app_version
            end
            ## 
            ## Sets the minimumRequiredAppVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @param value Value to set for the minimum_required_app_version property.
            ## @return a void
            ## 
            def minimum_required_app_version=(value)
                @minimum_required_app_version = value
            end
            ## 
            ## Gets the minimumRequiredOsVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_required_os_version
                return @minimum_required_os_version
            end
            ## 
            ## Sets the minimumRequiredOsVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @param value Value to set for the minimum_required_os_version property.
            ## @return a void
            ## 
            def minimum_required_os_version=(value)
                @minimum_required_os_version = value
            end
            ## 
            ## Gets the minimumWarningAppVersion property value. Versions less than the specified version will result in warning message on the managed app.
            ## @return a string
            ## 
            def minimum_warning_app_version
                return @minimum_warning_app_version
            end
            ## 
            ## Sets the minimumWarningAppVersion property value. Versions less than the specified version will result in warning message on the managed app.
            ## @param value Value to set for the minimum_warning_app_version property.
            ## @return a void
            ## 
            def minimum_warning_app_version=(value)
                @minimum_warning_app_version = value
            end
            ## 
            ## Gets the minimumWarningOsVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_warning_os_version
                return @minimum_warning_os_version
            end
            ## 
            ## Sets the minimumWarningOsVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data.
            ## @param value Value to set for the minimum_warning_os_version property.
            ## @return a void
            ## 
            def minimum_warning_os_version=(value)
                @minimum_warning_os_version = value
            end
            ## 
            ## Gets the organizationalCredentialsRequired property value. Indicates whether organizational credentials are required for app use.
            ## @return a boolean
            ## 
            def organizational_credentials_required
                return @organizational_credentials_required
            end
            ## 
            ## Sets the organizationalCredentialsRequired property value. Indicates whether organizational credentials are required for app use.
            ## @param value Value to set for the organizational_credentials_required property.
            ## @return a void
            ## 
            def organizational_credentials_required=(value)
                @organizational_credentials_required = value
            end
            ## 
            ## Gets the periodBeforePinReset property value. TimePeriod before the all-level pin must be reset if PinRequired is set to True.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def period_before_pin_reset
                return @period_before_pin_reset
            end
            ## 
            ## Sets the periodBeforePinReset property value. TimePeriod before the all-level pin must be reset if PinRequired is set to True.
            ## @param value Value to set for the period_before_pin_reset property.
            ## @return a void
            ## 
            def period_before_pin_reset=(value)
                @period_before_pin_reset = value
            end
            ## 
            ## Gets the periodOfflineBeforeAccessCheck property value. The period after which access is checked when the device is not connected to the internet.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def period_offline_before_access_check
                return @period_offline_before_access_check
            end
            ## 
            ## Sets the periodOfflineBeforeAccessCheck property value. The period after which access is checked when the device is not connected to the internet.
            ## @param value Value to set for the period_offline_before_access_check property.
            ## @return a void
            ## 
            def period_offline_before_access_check=(value)
                @period_offline_before_access_check = value
            end
            ## 
            ## Gets the periodOfflineBeforeWipeIsEnforced property value. The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def period_offline_before_wipe_is_enforced
                return @period_offline_before_wipe_is_enforced
            end
            ## 
            ## Sets the periodOfflineBeforeWipeIsEnforced property value. The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped.
            ## @param value Value to set for the period_offline_before_wipe_is_enforced property.
            ## @return a void
            ## 
            def period_offline_before_wipe_is_enforced=(value)
                @period_offline_before_wipe_is_enforced = value
            end
            ## 
            ## Gets the periodOnlineBeforeAccessCheck property value. The period after which access is checked when the device is connected to the internet.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def period_online_before_access_check
                return @period_online_before_access_check
            end
            ## 
            ## Sets the periodOnlineBeforeAccessCheck property value. The period after which access is checked when the device is connected to the internet.
            ## @param value Value to set for the period_online_before_access_check property.
            ## @return a void
            ## 
            def period_online_before_access_check=(value)
                @period_online_before_access_check = value
            end
            ## 
            ## Gets the pinCharacterSet property value. Character set which is to be used for a user's app PIN
            ## @return a managed_app_pin_character_set
            ## 
            def pin_character_set
                return @pin_character_set
            end
            ## 
            ## Sets the pinCharacterSet property value. Character set which is to be used for a user's app PIN
            ## @param value Value to set for the pin_character_set property.
            ## @return a void
            ## 
            def pin_character_set=(value)
                @pin_character_set = value
            end
            ## 
            ## Gets the pinRequired property value. Indicates whether an app-level pin is required.
            ## @return a boolean
            ## 
            def pin_required
                return @pin_required
            end
            ## 
            ## Sets the pinRequired property value. Indicates whether an app-level pin is required.
            ## @param value Value to set for the pin_required property.
            ## @return a void
            ## 
            def pin_required=(value)
                @pin_required = value
            end
            ## 
            ## Gets the printBlocked property value. Indicates whether printing is allowed from managed apps.
            ## @return a boolean
            ## 
            def print_blocked
                return @print_blocked
            end
            ## 
            ## Sets the printBlocked property value. Indicates whether printing is allowed from managed apps.
            ## @param value Value to set for the print_blocked property.
            ## @return a void
            ## 
            def print_blocked=(value)
                @print_blocked = value
            end
            ## 
            ## Gets the saveAsBlocked property value. Indicates whether users may use the 'Save As' menu item to save a copy of protected files.
            ## @return a boolean
            ## 
            def save_as_blocked
                return @save_as_blocked
            end
            ## 
            ## Sets the saveAsBlocked property value. Indicates whether users may use the 'Save As' menu item to save a copy of protected files.
            ## @param value Value to set for the save_as_blocked property.
            ## @return a void
            ## 
            def save_as_blocked=(value)
                @save_as_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("allowedDataStorageLocations", @allowed_data_storage_locations)
                writer.write_enum_value("allowedInboundDataTransferSources", @allowed_inbound_data_transfer_sources)
                writer.write_enum_value("allowedOutboundClipboardSharingLevel", @allowed_outbound_clipboard_sharing_level)
                writer.write_enum_value("allowedOutboundDataTransferDestinations", @allowed_outbound_data_transfer_destinations)
                writer.write_boolean_value("contactSyncBlocked", @contact_sync_blocked)
                writer.write_boolean_value("dataBackupBlocked", @data_backup_blocked)
                writer.write_boolean_value("deviceComplianceRequired", @device_compliance_required)
                writer.write_boolean_value("disableAppPinIfDevicePinIsSet", @disable_app_pin_if_device_pin_is_set)
                writer.write_boolean_value("fingerprintBlocked", @fingerprint_blocked)
                writer.write_enum_value("managedBrowser", @managed_browser)
                writer.write_boolean_value("managedBrowserToOpenLinksRequired", @managed_browser_to_open_links_required)
                writer.write_number_value("maximumPinRetries", @maximum_pin_retries)
                writer.write_number_value("minimumPinLength", @minimum_pin_length)
                writer.write_string_value("minimumRequiredAppVersion", @minimum_required_app_version)
                writer.write_string_value("minimumRequiredOsVersion", @minimum_required_os_version)
                writer.write_string_value("minimumWarningAppVersion", @minimum_warning_app_version)
                writer.write_string_value("minimumWarningOsVersion", @minimum_warning_os_version)
                writer.write_boolean_value("organizationalCredentialsRequired", @organizational_credentials_required)
                writer.write_duration_value("periodBeforePinReset", @period_before_pin_reset)
                writer.write_duration_value("periodOfflineBeforeAccessCheck", @period_offline_before_access_check)
                writer.write_duration_value("periodOfflineBeforeWipeIsEnforced", @period_offline_before_wipe_is_enforced)
                writer.write_duration_value("periodOnlineBeforeAccessCheck", @period_online_before_access_check)
                writer.write_enum_value("pinCharacterSet", @pin_character_set)
                writer.write_boolean_value("pinRequired", @pin_required)
                writer.write_boolean_value("printBlocked", @print_blocked)
                writer.write_boolean_value("saveAsBlocked", @save_as_blocked)
                writer.write_boolean_value("simplePinBlocked", @simple_pin_blocked)
            end
            ## 
            ## Gets the simplePinBlocked property value. Indicates whether simplePin is blocked.
            ## @return a boolean
            ## 
            def simple_pin_blocked
                return @simple_pin_blocked
            end
            ## 
            ## Sets the simplePinBlocked property value. Indicates whether simplePin is blocked.
            ## @param value Value to set for the simple_pin_blocked property.
            ## @return a void
            ## 
            def simple_pin_blocked=(value)
                @simple_pin_blocked = value
            end
        end
    end
end
