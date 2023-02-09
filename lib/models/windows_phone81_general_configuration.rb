require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsPhone81GeneralConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Value indicating whether this policy only applies to Windows Phone 8.1. This property is read-only.
            @apply_only_to_windows_phone81
            ## 
            # Indicates whether or not to block copy paste.
            @apps_block_copy_paste
            ## 
            # Indicates whether or not to block bluetooth.
            @bluetooth_blocked
            ## 
            # Indicates whether or not to block camera.
            @camera_blocked
            ## 
            # Indicates whether or not to block Wi-Fi tethering. Has no impact if Wi-Fi is blocked.
            @cellular_block_wifi_tethering
            ## 
            # Possible values of the compliance app list.
            @compliant_app_list_type
            ## 
            # List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            @compliant_apps_list
            ## 
            # Indicates whether or not to block diagnostic data submission.
            @diagnostic_data_block_submission
            ## 
            # Indicates whether or not to block custom email accounts.
            @email_block_adding_accounts
            ## 
            # Indicates whether or not to block location services.
            @location_services_blocked
            ## 
            # Indicates whether or not to block using a Microsoft Account.
            @microsoft_account_blocked
            ## 
            # Indicates whether or not to block Near-Field Communication.
            @nfc_blocked
            ## 
            # Indicates whether or not to block syncing the calendar.
            @password_block_simple
            ## 
            # Number of days before the password expires.
            @password_expiration_days
            ## 
            # Number of character sets a password must contain.
            @password_minimum_character_set_count
            ## 
            # Minimum length of passwords.
            @password_minimum_length
            ## 
            # Minutes of inactivity before screen timeout.
            @password_minutes_of_inactivity_before_screen_timeout
            ## 
            # Number of previous passwords to block. Valid values 0 to 24
            @password_previous_password_block_count
            ## 
            # Indicates whether or not to require a password.
            @password_required
            ## 
            # Possible values of required passwords.
            @password_required_type
            ## 
            # Number of sign in failures allowed before factory reset.
            @password_sign_in_failure_count_before_factory_reset
            ## 
            # Indicates whether or not to block screenshots.
            @screen_capture_blocked
            ## 
            # Indicates whether or not to block removable storage.
            @storage_block_removable_storage
            ## 
            # Indicates whether or not to require encryption.
            @storage_require_encryption
            ## 
            # Indicates whether or not to block the web browser.
            @web_browser_blocked
            ## 
            # Indicates whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.
            @wifi_block_automatic_connect_hotspots
            ## 
            # Indicates whether or not to block Wi-Fi hotspot reporting. Has no impact if Wi-Fi is blocked.
            @wifi_block_hotspot_reporting
            ## 
            # Indicates whether or not to block Wi-Fi.
            @wifi_blocked
            ## 
            # Indicates whether or not to block the Windows Store.
            @windows_store_blocked
            ## 
            ## Gets the applyOnlyToWindowsPhone81 property value. Value indicating whether this policy only applies to Windows Phone 8.1. This property is read-only.
            ## @return a boolean
            ## 
            def apply_only_to_windows_phone81
                return @apply_only_to_windows_phone81
            end
            ## 
            ## Sets the applyOnlyToWindowsPhone81 property value. Value indicating whether this policy only applies to Windows Phone 8.1. This property is read-only.
            ## @param value Value to set for the apply_only_to_windows_phone81 property.
            ## @return a void
            ## 
            def apply_only_to_windows_phone81=(value)
                @apply_only_to_windows_phone81 = value
            end
            ## 
            ## Gets the appsBlockCopyPaste property value. Indicates whether or not to block copy paste.
            ## @return a boolean
            ## 
            def apps_block_copy_paste
                return @apps_block_copy_paste
            end
            ## 
            ## Sets the appsBlockCopyPaste property value. Indicates whether or not to block copy paste.
            ## @param value Value to set for the apps_block_copy_paste property.
            ## @return a void
            ## 
            def apps_block_copy_paste=(value)
                @apps_block_copy_paste = value
            end
            ## 
            ## Gets the bluetoothBlocked property value. Indicates whether or not to block bluetooth.
            ## @return a boolean
            ## 
            def bluetooth_blocked
                return @bluetooth_blocked
            end
            ## 
            ## Sets the bluetoothBlocked property value. Indicates whether or not to block bluetooth.
            ## @param value Value to set for the bluetooth_blocked property.
            ## @return a void
            ## 
            def bluetooth_blocked=(value)
                @bluetooth_blocked = value
            end
            ## 
            ## Gets the cameraBlocked property value. Indicates whether or not to block camera.
            ## @return a boolean
            ## 
            def camera_blocked
                return @camera_blocked
            end
            ## 
            ## Sets the cameraBlocked property value. Indicates whether or not to block camera.
            ## @param value Value to set for the camera_blocked property.
            ## @return a void
            ## 
            def camera_blocked=(value)
                @camera_blocked = value
            end
            ## 
            ## Gets the cellularBlockWifiTethering property value. Indicates whether or not to block Wi-Fi tethering. Has no impact if Wi-Fi is blocked.
            ## @return a boolean
            ## 
            def cellular_block_wifi_tethering
                return @cellular_block_wifi_tethering
            end
            ## 
            ## Sets the cellularBlockWifiTethering property value. Indicates whether or not to block Wi-Fi tethering. Has no impact if Wi-Fi is blocked.
            ## @param value Value to set for the cellular_block_wifi_tethering property.
            ## @return a void
            ## 
            def cellular_block_wifi_tethering=(value)
                @cellular_block_wifi_tethering = value
            end
            ## 
            ## Gets the compliantAppListType property value. Possible values of the compliance app list.
            ## @return a app_list_type
            ## 
            def compliant_app_list_type
                return @compliant_app_list_type
            end
            ## 
            ## Sets the compliantAppListType property value. Possible values of the compliance app list.
            ## @param value Value to set for the compliant_app_list_type property.
            ## @return a void
            ## 
            def compliant_app_list_type=(value)
                @compliant_app_list_type = value
            end
            ## 
            ## Gets the compliantAppsList property value. List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            ## @return a app_list_item
            ## 
            def compliant_apps_list
                return @compliant_apps_list
            end
            ## 
            ## Sets the compliantAppsList property value. List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            ## @param value Value to set for the compliant_apps_list property.
            ## @return a void
            ## 
            def compliant_apps_list=(value)
                @compliant_apps_list = value
            end
            ## 
            ## Instantiates a new WindowsPhone81GeneralConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsPhone81GeneralConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_phone81_general_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsPhone81GeneralConfiguration.new
            end
            ## 
            ## Gets the diagnosticDataBlockSubmission property value. Indicates whether or not to block diagnostic data submission.
            ## @return a boolean
            ## 
            def diagnostic_data_block_submission
                return @diagnostic_data_block_submission
            end
            ## 
            ## Sets the diagnosticDataBlockSubmission property value. Indicates whether or not to block diagnostic data submission.
            ## @param value Value to set for the diagnostic_data_block_submission property.
            ## @return a void
            ## 
            def diagnostic_data_block_submission=(value)
                @diagnostic_data_block_submission = value
            end
            ## 
            ## Gets the emailBlockAddingAccounts property value. Indicates whether or not to block custom email accounts.
            ## @return a boolean
            ## 
            def email_block_adding_accounts
                return @email_block_adding_accounts
            end
            ## 
            ## Sets the emailBlockAddingAccounts property value. Indicates whether or not to block custom email accounts.
            ## @param value Value to set for the email_block_adding_accounts property.
            ## @return a void
            ## 
            def email_block_adding_accounts=(value)
                @email_block_adding_accounts = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applyOnlyToWindowsPhone81" => lambda {|n| @apply_only_to_windows_phone81 = n.get_boolean_value() },
                    "appsBlockCopyPaste" => lambda {|n| @apps_block_copy_paste = n.get_boolean_value() },
                    "bluetoothBlocked" => lambda {|n| @bluetooth_blocked = n.get_boolean_value() },
                    "cameraBlocked" => lambda {|n| @camera_blocked = n.get_boolean_value() },
                    "cellularBlockWifiTethering" => lambda {|n| @cellular_block_wifi_tethering = n.get_boolean_value() },
                    "compliantAppListType" => lambda {|n| @compliant_app_list_type = n.get_enum_value(MicrosoftGraph::Models::AppListType) },
                    "compliantAppsList" => lambda {|n| @compliant_apps_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "diagnosticDataBlockSubmission" => lambda {|n| @diagnostic_data_block_submission = n.get_boolean_value() },
                    "emailBlockAddingAccounts" => lambda {|n| @email_block_adding_accounts = n.get_boolean_value() },
                    "locationServicesBlocked" => lambda {|n| @location_services_blocked = n.get_boolean_value() },
                    "microsoftAccountBlocked" => lambda {|n| @microsoft_account_blocked = n.get_boolean_value() },
                    "nfcBlocked" => lambda {|n| @nfc_blocked = n.get_boolean_value() },
                    "passwordBlockSimple" => lambda {|n| @password_block_simple = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumCharacterSetCount" => lambda {|n| @password_minimum_character_set_count = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraph::Models::RequiredPasswordType) },
                    "passwordSignInFailureCountBeforeFactoryReset" => lambda {|n| @password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "storageBlockRemovableStorage" => lambda {|n| @storage_block_removable_storage = n.get_boolean_value() },
                    "storageRequireEncryption" => lambda {|n| @storage_require_encryption = n.get_boolean_value() },
                    "webBrowserBlocked" => lambda {|n| @web_browser_blocked = n.get_boolean_value() },
                    "wifiBlockAutomaticConnectHotspots" => lambda {|n| @wifi_block_automatic_connect_hotspots = n.get_boolean_value() },
                    "wifiBlockHotspotReporting" => lambda {|n| @wifi_block_hotspot_reporting = n.get_boolean_value() },
                    "wifiBlocked" => lambda {|n| @wifi_blocked = n.get_boolean_value() },
                    "windowsStoreBlocked" => lambda {|n| @windows_store_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the locationServicesBlocked property value. Indicates whether or not to block location services.
            ## @return a boolean
            ## 
            def location_services_blocked
                return @location_services_blocked
            end
            ## 
            ## Sets the locationServicesBlocked property value. Indicates whether or not to block location services.
            ## @param value Value to set for the location_services_blocked property.
            ## @return a void
            ## 
            def location_services_blocked=(value)
                @location_services_blocked = value
            end
            ## 
            ## Gets the microsoftAccountBlocked property value. Indicates whether or not to block using a Microsoft Account.
            ## @return a boolean
            ## 
            def microsoft_account_blocked
                return @microsoft_account_blocked
            end
            ## 
            ## Sets the microsoftAccountBlocked property value. Indicates whether or not to block using a Microsoft Account.
            ## @param value Value to set for the microsoft_account_blocked property.
            ## @return a void
            ## 
            def microsoft_account_blocked=(value)
                @microsoft_account_blocked = value
            end
            ## 
            ## Gets the nfcBlocked property value. Indicates whether or not to block Near-Field Communication.
            ## @return a boolean
            ## 
            def nfc_blocked
                return @nfc_blocked
            end
            ## 
            ## Sets the nfcBlocked property value. Indicates whether or not to block Near-Field Communication.
            ## @param value Value to set for the nfc_blocked property.
            ## @return a void
            ## 
            def nfc_blocked=(value)
                @nfc_blocked = value
            end
            ## 
            ## Gets the passwordBlockSimple property value. Indicates whether or not to block syncing the calendar.
            ## @return a boolean
            ## 
            def password_block_simple
                return @password_block_simple
            end
            ## 
            ## Sets the passwordBlockSimple property value. Indicates whether or not to block syncing the calendar.
            ## @param value Value to set for the password_block_simple property.
            ## @return a void
            ## 
            def password_block_simple=(value)
                @password_block_simple = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. Number of days before the password expires.
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. Number of days before the password expires.
            ## @param value Value to set for the password_expiration_days property.
            ## @return a void
            ## 
            def password_expiration_days=(value)
                @password_expiration_days = value
            end
            ## 
            ## Gets the passwordMinimumCharacterSetCount property value. Number of character sets a password must contain.
            ## @return a integer
            ## 
            def password_minimum_character_set_count
                return @password_minimum_character_set_count
            end
            ## 
            ## Sets the passwordMinimumCharacterSetCount property value. Number of character sets a password must contain.
            ## @param value Value to set for the password_minimum_character_set_count property.
            ## @return a void
            ## 
            def password_minimum_character_set_count=(value)
                @password_minimum_character_set_count = value
            end
            ## 
            ## Gets the passwordMinimumLength property value. Minimum length of passwords.
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. Minimum length of passwords.
            ## @param value Value to set for the password_minimum_length property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before screen timeout.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_screen_timeout
                return @password_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before screen timeout.
            ## @param value Value to set for the password_minutes_of_inactivity_before_screen_timeout property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_screen_timeout=(value)
                @password_minutes_of_inactivity_before_screen_timeout = value
            end
            ## 
            ## Gets the passwordPreviousPasswordBlockCount property value. Number of previous passwords to block. Valid values 0 to 24
            ## @return a integer
            ## 
            def password_previous_password_block_count
                return @password_previous_password_block_count
            end
            ## 
            ## Sets the passwordPreviousPasswordBlockCount property value. Number of previous passwords to block. Valid values 0 to 24
            ## @param value Value to set for the password_previous_password_block_count property.
            ## @return a void
            ## 
            def password_previous_password_block_count=(value)
                @password_previous_password_block_count = value
            end
            ## 
            ## Gets the passwordRequired property value. Indicates whether or not to require a password.
            ## @return a boolean
            ## 
            def password_required
                return @password_required
            end
            ## 
            ## Sets the passwordRequired property value. Indicates whether or not to require a password.
            ## @param value Value to set for the password_required property.
            ## @return a void
            ## 
            def password_required=(value)
                @password_required = value
            end
            ## 
            ## Gets the passwordRequiredType property value. Possible values of required passwords.
            ## @return a required_password_type
            ## 
            def password_required_type
                return @password_required_type
            end
            ## 
            ## Sets the passwordRequiredType property value. Possible values of required passwords.
            ## @param value Value to set for the password_required_type property.
            ## @return a void
            ## 
            def password_required_type=(value)
                @password_required_type = value
            end
            ## 
            ## Gets the passwordSignInFailureCountBeforeFactoryReset property value. Number of sign in failures allowed before factory reset.
            ## @return a integer
            ## 
            def password_sign_in_failure_count_before_factory_reset
                return @password_sign_in_failure_count_before_factory_reset
            end
            ## 
            ## Sets the passwordSignInFailureCountBeforeFactoryReset property value. Number of sign in failures allowed before factory reset.
            ## @param value Value to set for the password_sign_in_failure_count_before_factory_reset property.
            ## @return a void
            ## 
            def password_sign_in_failure_count_before_factory_reset=(value)
                @password_sign_in_failure_count_before_factory_reset = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether or not to block screenshots.
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether or not to block screenshots.
            ## @param value Value to set for the screen_capture_blocked property.
            ## @return a void
            ## 
            def screen_capture_blocked=(value)
                @screen_capture_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("appsBlockCopyPaste", @apps_block_copy_paste)
                writer.write_boolean_value("bluetoothBlocked", @bluetooth_blocked)
                writer.write_boolean_value("cameraBlocked", @camera_blocked)
                writer.write_boolean_value("cellularBlockWifiTethering", @cellular_block_wifi_tethering)
                writer.write_enum_value("compliantAppListType", @compliant_app_list_type)
                writer.write_collection_of_object_values("compliantAppsList", @compliant_apps_list)
                writer.write_boolean_value("diagnosticDataBlockSubmission", @diagnostic_data_block_submission)
                writer.write_boolean_value("emailBlockAddingAccounts", @email_block_adding_accounts)
                writer.write_boolean_value("locationServicesBlocked", @location_services_blocked)
                writer.write_boolean_value("microsoftAccountBlocked", @microsoft_account_blocked)
                writer.write_boolean_value("nfcBlocked", @nfc_blocked)
                writer.write_boolean_value("passwordBlockSimple", @password_block_simple)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumCharacterSetCount", @password_minimum_character_set_count)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_number_value("passwordSignInFailureCountBeforeFactoryReset", @password_sign_in_failure_count_before_factory_reset)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_boolean_value("storageBlockRemovableStorage", @storage_block_removable_storage)
                writer.write_boolean_value("storageRequireEncryption", @storage_require_encryption)
                writer.write_boolean_value("webBrowserBlocked", @web_browser_blocked)
                writer.write_boolean_value("wifiBlockAutomaticConnectHotspots", @wifi_block_automatic_connect_hotspots)
                writer.write_boolean_value("wifiBlockHotspotReporting", @wifi_block_hotspot_reporting)
                writer.write_boolean_value("wifiBlocked", @wifi_blocked)
                writer.write_boolean_value("windowsStoreBlocked", @windows_store_blocked)
            end
            ## 
            ## Gets the storageBlockRemovableStorage property value. Indicates whether or not to block removable storage.
            ## @return a boolean
            ## 
            def storage_block_removable_storage
                return @storage_block_removable_storage
            end
            ## 
            ## Sets the storageBlockRemovableStorage property value. Indicates whether or not to block removable storage.
            ## @param value Value to set for the storage_block_removable_storage property.
            ## @return a void
            ## 
            def storage_block_removable_storage=(value)
                @storage_block_removable_storage = value
            end
            ## 
            ## Gets the storageRequireEncryption property value. Indicates whether or not to require encryption.
            ## @return a boolean
            ## 
            def storage_require_encryption
                return @storage_require_encryption
            end
            ## 
            ## Sets the storageRequireEncryption property value. Indicates whether or not to require encryption.
            ## @param value Value to set for the storage_require_encryption property.
            ## @return a void
            ## 
            def storage_require_encryption=(value)
                @storage_require_encryption = value
            end
            ## 
            ## Gets the webBrowserBlocked property value. Indicates whether or not to block the web browser.
            ## @return a boolean
            ## 
            def web_browser_blocked
                return @web_browser_blocked
            end
            ## 
            ## Sets the webBrowserBlocked property value. Indicates whether or not to block the web browser.
            ## @param value Value to set for the web_browser_blocked property.
            ## @return a void
            ## 
            def web_browser_blocked=(value)
                @web_browser_blocked = value
            end
            ## 
            ## Gets the wifiBlockAutomaticConnectHotspots property value. Indicates whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.
            ## @return a boolean
            ## 
            def wifi_block_automatic_connect_hotspots
                return @wifi_block_automatic_connect_hotspots
            end
            ## 
            ## Sets the wifiBlockAutomaticConnectHotspots property value. Indicates whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.
            ## @param value Value to set for the wifi_block_automatic_connect_hotspots property.
            ## @return a void
            ## 
            def wifi_block_automatic_connect_hotspots=(value)
                @wifi_block_automatic_connect_hotspots = value
            end
            ## 
            ## Gets the wifiBlockHotspotReporting property value. Indicates whether or not to block Wi-Fi hotspot reporting. Has no impact if Wi-Fi is blocked.
            ## @return a boolean
            ## 
            def wifi_block_hotspot_reporting
                return @wifi_block_hotspot_reporting
            end
            ## 
            ## Sets the wifiBlockHotspotReporting property value. Indicates whether or not to block Wi-Fi hotspot reporting. Has no impact if Wi-Fi is blocked.
            ## @param value Value to set for the wifi_block_hotspot_reporting property.
            ## @return a void
            ## 
            def wifi_block_hotspot_reporting=(value)
                @wifi_block_hotspot_reporting = value
            end
            ## 
            ## Gets the wifiBlocked property value. Indicates whether or not to block Wi-Fi.
            ## @return a boolean
            ## 
            def wifi_blocked
                return @wifi_blocked
            end
            ## 
            ## Sets the wifiBlocked property value. Indicates whether or not to block Wi-Fi.
            ## @param value Value to set for the wifi_blocked property.
            ## @return a void
            ## 
            def wifi_blocked=(value)
                @wifi_blocked = value
            end
            ## 
            ## Gets the windowsStoreBlocked property value. Indicates whether or not to block the Windows Store.
            ## @return a boolean
            ## 
            def windows_store_blocked
                return @windows_store_blocked
            end
            ## 
            ## Sets the windowsStoreBlocked property value. Indicates whether or not to block the Windows Store.
            ## @param value Value to set for the windows_store_blocked property.
            ## @return a void
            ## 
            def windows_store_blocked=(value)
                @windows_store_blocked = value
            end
        end
    end
end
