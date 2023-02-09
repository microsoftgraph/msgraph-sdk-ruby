require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AndroidGeneralDeviceConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to block clipboard sharing to copy and paste between applications.
            @apps_block_clipboard_sharing
            ## 
            # Indicates whether or not to block copy and paste within applications.
            @apps_block_copy_paste
            ## 
            # Indicates whether or not to block the YouTube app.
            @apps_block_you_tube
            ## 
            # List of apps to be hidden on the KNOX device. This collection can contain a maximum of 500 elements.
            @apps_hide_list
            ## 
            # List of apps which can be installed on the KNOX device. This collection can contain a maximum of 500 elements.
            @apps_install_allow_list
            ## 
            # List of apps which are blocked from being launched on the KNOX device. This collection can contain a maximum of 500 elements.
            @apps_launch_block_list
            ## 
            # Indicates whether or not to block Bluetooth.
            @bluetooth_blocked
            ## 
            # Indicates whether or not to block the use of the camera.
            @camera_blocked
            ## 
            # Indicates whether or not to block data roaming.
            @cellular_block_data_roaming
            ## 
            # Indicates whether or not to block SMS/MMS messaging.
            @cellular_block_messaging
            ## 
            # Indicates whether or not to block voice roaming.
            @cellular_block_voice_roaming
            ## 
            # Indicates whether or not to block syncing Wi-Fi tethering.
            @cellular_block_wi_fi_tethering
            ## 
            # Possible values of the compliance app list.
            @compliant_app_list_type
            ## 
            # List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            @compliant_apps_list
            ## 
            # Indicates whether or not to allow device sharing mode.
            @device_sharing_allowed
            ## 
            # Indicates whether or not to block diagnostic data submission.
            @diagnostic_data_block_submission
            ## 
            # Indicates whether or not to block user performing a factory reset.
            @factory_reset_blocked
            ## 
            # Indicates whether or not to block Google account auto sync.
            @google_account_block_auto_sync
            ## 
            # Indicates whether or not to block the Google Play store.
            @google_play_store_blocked
            ## 
            # A list of apps that will be allowed to run when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.
            @kiosk_mode_apps
            ## 
            # Indicates whether or not to block the screen sleep button while in Kiosk Mode.
            @kiosk_mode_block_sleep_button
            ## 
            # Indicates whether or not to block the volume buttons while in Kiosk Mode.
            @kiosk_mode_block_volume_buttons
            ## 
            # Indicates whether or not to block location services.
            @location_services_blocked
            ## 
            # Indicates whether or not to block Near-Field Communication.
            @nfc_blocked
            ## 
            # Indicates whether or not to block fingerprint unlock.
            @password_block_fingerprint_unlock
            ## 
            # Indicates whether or not to block Smart Lock and other trust agents.
            @password_block_trust_agents
            ## 
            # Number of days before the password expires. Valid values 1 to 365
            @password_expiration_days
            ## 
            # Minimum length of passwords. Valid values 4 to 16
            @password_minimum_length
            ## 
            # Minutes of inactivity before the screen times out.
            @password_minutes_of_inactivity_before_screen_timeout
            ## 
            # Number of previous passwords to block. Valid values 0 to 24
            @password_previous_password_block_count
            ## 
            # Indicates whether or not to require a password.
            @password_required
            ## 
            # Android required password type.
            @password_required_type
            ## 
            # Number of sign in failures allowed before factory reset. Valid values 1 to 16
            @password_sign_in_failure_count_before_factory_reset
            ## 
            # Indicates whether or not to block powering off the device.
            @power_off_blocked
            ## 
            # Indicates whether or not to block screenshots.
            @screen_capture_blocked
            ## 
            # Require the Android Verify apps feature is turned on.
            @security_require_verify_apps
            ## 
            # Indicates whether or not to block Google Backup.
            @storage_block_google_backup
            ## 
            # Indicates whether or not to block removable storage usage.
            @storage_block_removable_storage
            ## 
            # Indicates whether or not to require device encryption.
            @storage_require_device_encryption
            ## 
            # Indicates whether or not to require removable storage encryption.
            @storage_require_removable_storage_encryption
            ## 
            # Indicates whether or not to block the use of the Voice Assistant.
            @voice_assistant_blocked
            ## 
            # Indicates whether or not to block voice dialing.
            @voice_dialing_blocked
            ## 
            # Indicates whether or not to block the web browser's auto fill feature.
            @web_browser_block_autofill
            ## 
            # Indicates whether or not to block JavaScript within the web browser.
            @web_browser_block_java_script
            ## 
            # Indicates whether or not to block popups within the web browser.
            @web_browser_block_popups
            ## 
            # Indicates whether or not to block the web browser.
            @web_browser_blocked
            ## 
            # Web Browser Cookie Settings.
            @web_browser_cookie_settings
            ## 
            # Indicates whether or not to block syncing Wi-Fi.
            @wi_fi_blocked
            ## 
            ## Gets the appsBlockClipboardSharing property value. Indicates whether or not to block clipboard sharing to copy and paste between applications.
            ## @return a boolean
            ## 
            def apps_block_clipboard_sharing
                return @apps_block_clipboard_sharing
            end
            ## 
            ## Sets the appsBlockClipboardSharing property value. Indicates whether or not to block clipboard sharing to copy and paste between applications.
            ## @param value Value to set for the apps_block_clipboard_sharing property.
            ## @return a void
            ## 
            def apps_block_clipboard_sharing=(value)
                @apps_block_clipboard_sharing = value
            end
            ## 
            ## Gets the appsBlockCopyPaste property value. Indicates whether or not to block copy and paste within applications.
            ## @return a boolean
            ## 
            def apps_block_copy_paste
                return @apps_block_copy_paste
            end
            ## 
            ## Sets the appsBlockCopyPaste property value. Indicates whether or not to block copy and paste within applications.
            ## @param value Value to set for the apps_block_copy_paste property.
            ## @return a void
            ## 
            def apps_block_copy_paste=(value)
                @apps_block_copy_paste = value
            end
            ## 
            ## Gets the appsBlockYouTube property value. Indicates whether or not to block the YouTube app.
            ## @return a boolean
            ## 
            def apps_block_you_tube
                return @apps_block_you_tube
            end
            ## 
            ## Sets the appsBlockYouTube property value. Indicates whether or not to block the YouTube app.
            ## @param value Value to set for the apps_block_you_tube property.
            ## @return a void
            ## 
            def apps_block_you_tube=(value)
                @apps_block_you_tube = value
            end
            ## 
            ## Gets the appsHideList property value. List of apps to be hidden on the KNOX device. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def apps_hide_list
                return @apps_hide_list
            end
            ## 
            ## Sets the appsHideList property value. List of apps to be hidden on the KNOX device. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the apps_hide_list property.
            ## @return a void
            ## 
            def apps_hide_list=(value)
                @apps_hide_list = value
            end
            ## 
            ## Gets the appsInstallAllowList property value. List of apps which can be installed on the KNOX device. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def apps_install_allow_list
                return @apps_install_allow_list
            end
            ## 
            ## Sets the appsInstallAllowList property value. List of apps which can be installed on the KNOX device. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the apps_install_allow_list property.
            ## @return a void
            ## 
            def apps_install_allow_list=(value)
                @apps_install_allow_list = value
            end
            ## 
            ## Gets the appsLaunchBlockList property value. List of apps which are blocked from being launched on the KNOX device. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def apps_launch_block_list
                return @apps_launch_block_list
            end
            ## 
            ## Sets the appsLaunchBlockList property value. List of apps which are blocked from being launched on the KNOX device. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the apps_launch_block_list property.
            ## @return a void
            ## 
            def apps_launch_block_list=(value)
                @apps_launch_block_list = value
            end
            ## 
            ## Gets the bluetoothBlocked property value. Indicates whether or not to block Bluetooth.
            ## @return a boolean
            ## 
            def bluetooth_blocked
                return @bluetooth_blocked
            end
            ## 
            ## Sets the bluetoothBlocked property value. Indicates whether or not to block Bluetooth.
            ## @param value Value to set for the bluetooth_blocked property.
            ## @return a void
            ## 
            def bluetooth_blocked=(value)
                @bluetooth_blocked = value
            end
            ## 
            ## Gets the cameraBlocked property value. Indicates whether or not to block the use of the camera.
            ## @return a boolean
            ## 
            def camera_blocked
                return @camera_blocked
            end
            ## 
            ## Sets the cameraBlocked property value. Indicates whether or not to block the use of the camera.
            ## @param value Value to set for the camera_blocked property.
            ## @return a void
            ## 
            def camera_blocked=(value)
                @camera_blocked = value
            end
            ## 
            ## Gets the cellularBlockDataRoaming property value. Indicates whether or not to block data roaming.
            ## @return a boolean
            ## 
            def cellular_block_data_roaming
                return @cellular_block_data_roaming
            end
            ## 
            ## Sets the cellularBlockDataRoaming property value. Indicates whether or not to block data roaming.
            ## @param value Value to set for the cellular_block_data_roaming property.
            ## @return a void
            ## 
            def cellular_block_data_roaming=(value)
                @cellular_block_data_roaming = value
            end
            ## 
            ## Gets the cellularBlockMessaging property value. Indicates whether or not to block SMS/MMS messaging.
            ## @return a boolean
            ## 
            def cellular_block_messaging
                return @cellular_block_messaging
            end
            ## 
            ## Sets the cellularBlockMessaging property value. Indicates whether or not to block SMS/MMS messaging.
            ## @param value Value to set for the cellular_block_messaging property.
            ## @return a void
            ## 
            def cellular_block_messaging=(value)
                @cellular_block_messaging = value
            end
            ## 
            ## Gets the cellularBlockVoiceRoaming property value. Indicates whether or not to block voice roaming.
            ## @return a boolean
            ## 
            def cellular_block_voice_roaming
                return @cellular_block_voice_roaming
            end
            ## 
            ## Sets the cellularBlockVoiceRoaming property value. Indicates whether or not to block voice roaming.
            ## @param value Value to set for the cellular_block_voice_roaming property.
            ## @return a void
            ## 
            def cellular_block_voice_roaming=(value)
                @cellular_block_voice_roaming = value
            end
            ## 
            ## Gets the cellularBlockWiFiTethering property value. Indicates whether or not to block syncing Wi-Fi tethering.
            ## @return a boolean
            ## 
            def cellular_block_wi_fi_tethering
                return @cellular_block_wi_fi_tethering
            end
            ## 
            ## Sets the cellularBlockWiFiTethering property value. Indicates whether or not to block syncing Wi-Fi tethering.
            ## @param value Value to set for the cellular_block_wi_fi_tethering property.
            ## @return a void
            ## 
            def cellular_block_wi_fi_tethering=(value)
                @cellular_block_wi_fi_tethering = value
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
            ## Instantiates a new AndroidGeneralDeviceConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidGeneralDeviceConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_general_device_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidGeneralDeviceConfiguration.new
            end
            ## 
            ## Gets the deviceSharingAllowed property value. Indicates whether or not to allow device sharing mode.
            ## @return a boolean
            ## 
            def device_sharing_allowed
                return @device_sharing_allowed
            end
            ## 
            ## Sets the deviceSharingAllowed property value. Indicates whether or not to allow device sharing mode.
            ## @param value Value to set for the device_sharing_allowed property.
            ## @return a void
            ## 
            def device_sharing_allowed=(value)
                @device_sharing_allowed = value
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
            ## Gets the factoryResetBlocked property value. Indicates whether or not to block user performing a factory reset.
            ## @return a boolean
            ## 
            def factory_reset_blocked
                return @factory_reset_blocked
            end
            ## 
            ## Sets the factoryResetBlocked property value. Indicates whether or not to block user performing a factory reset.
            ## @param value Value to set for the factory_reset_blocked property.
            ## @return a void
            ## 
            def factory_reset_blocked=(value)
                @factory_reset_blocked = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appsBlockClipboardSharing" => lambda {|n| @apps_block_clipboard_sharing = n.get_boolean_value() },
                    "appsBlockCopyPaste" => lambda {|n| @apps_block_copy_paste = n.get_boolean_value() },
                    "appsBlockYouTube" => lambda {|n| @apps_block_you_tube = n.get_boolean_value() },
                    "appsHideList" => lambda {|n| @apps_hide_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "appsInstallAllowList" => lambda {|n| @apps_install_allow_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "appsLaunchBlockList" => lambda {|n| @apps_launch_block_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "bluetoothBlocked" => lambda {|n| @bluetooth_blocked = n.get_boolean_value() },
                    "cameraBlocked" => lambda {|n| @camera_blocked = n.get_boolean_value() },
                    "cellularBlockDataRoaming" => lambda {|n| @cellular_block_data_roaming = n.get_boolean_value() },
                    "cellularBlockMessaging" => lambda {|n| @cellular_block_messaging = n.get_boolean_value() },
                    "cellularBlockVoiceRoaming" => lambda {|n| @cellular_block_voice_roaming = n.get_boolean_value() },
                    "cellularBlockWiFiTethering" => lambda {|n| @cellular_block_wi_fi_tethering = n.get_boolean_value() },
                    "compliantAppListType" => lambda {|n| @compliant_app_list_type = n.get_enum_value(MicrosoftGraph::Models::AppListType) },
                    "compliantAppsList" => lambda {|n| @compliant_apps_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "deviceSharingAllowed" => lambda {|n| @device_sharing_allowed = n.get_boolean_value() },
                    "diagnosticDataBlockSubmission" => lambda {|n| @diagnostic_data_block_submission = n.get_boolean_value() },
                    "factoryResetBlocked" => lambda {|n| @factory_reset_blocked = n.get_boolean_value() },
                    "googleAccountBlockAutoSync" => lambda {|n| @google_account_block_auto_sync = n.get_boolean_value() },
                    "googlePlayStoreBlocked" => lambda {|n| @google_play_store_blocked = n.get_boolean_value() },
                    "kioskModeApps" => lambda {|n| @kiosk_mode_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "kioskModeBlockSleepButton" => lambda {|n| @kiosk_mode_block_sleep_button = n.get_boolean_value() },
                    "kioskModeBlockVolumeButtons" => lambda {|n| @kiosk_mode_block_volume_buttons = n.get_boolean_value() },
                    "locationServicesBlocked" => lambda {|n| @location_services_blocked = n.get_boolean_value() },
                    "nfcBlocked" => lambda {|n| @nfc_blocked = n.get_boolean_value() },
                    "passwordBlockFingerprintUnlock" => lambda {|n| @password_block_fingerprint_unlock = n.get_boolean_value() },
                    "passwordBlockTrustAgents" => lambda {|n| @password_block_trust_agents = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraph::Models::AndroidRequiredPasswordType) },
                    "passwordSignInFailureCountBeforeFactoryReset" => lambda {|n| @password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                    "powerOffBlocked" => lambda {|n| @power_off_blocked = n.get_boolean_value() },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "securityRequireVerifyApps" => lambda {|n| @security_require_verify_apps = n.get_boolean_value() },
                    "storageBlockGoogleBackup" => lambda {|n| @storage_block_google_backup = n.get_boolean_value() },
                    "storageBlockRemovableStorage" => lambda {|n| @storage_block_removable_storage = n.get_boolean_value() },
                    "storageRequireDeviceEncryption" => lambda {|n| @storage_require_device_encryption = n.get_boolean_value() },
                    "storageRequireRemovableStorageEncryption" => lambda {|n| @storage_require_removable_storage_encryption = n.get_boolean_value() },
                    "voiceAssistantBlocked" => lambda {|n| @voice_assistant_blocked = n.get_boolean_value() },
                    "voiceDialingBlocked" => lambda {|n| @voice_dialing_blocked = n.get_boolean_value() },
                    "webBrowserBlockAutofill" => lambda {|n| @web_browser_block_autofill = n.get_boolean_value() },
                    "webBrowserBlockJavaScript" => lambda {|n| @web_browser_block_java_script = n.get_boolean_value() },
                    "webBrowserBlockPopups" => lambda {|n| @web_browser_block_popups = n.get_boolean_value() },
                    "webBrowserBlocked" => lambda {|n| @web_browser_blocked = n.get_boolean_value() },
                    "webBrowserCookieSettings" => lambda {|n| @web_browser_cookie_settings = n.get_enum_value(MicrosoftGraph::Models::WebBrowserCookieSettings) },
                    "wiFiBlocked" => lambda {|n| @wi_fi_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the googleAccountBlockAutoSync property value. Indicates whether or not to block Google account auto sync.
            ## @return a boolean
            ## 
            def google_account_block_auto_sync
                return @google_account_block_auto_sync
            end
            ## 
            ## Sets the googleAccountBlockAutoSync property value. Indicates whether or not to block Google account auto sync.
            ## @param value Value to set for the google_account_block_auto_sync property.
            ## @return a void
            ## 
            def google_account_block_auto_sync=(value)
                @google_account_block_auto_sync = value
            end
            ## 
            ## Gets the googlePlayStoreBlocked property value. Indicates whether or not to block the Google Play store.
            ## @return a boolean
            ## 
            def google_play_store_blocked
                return @google_play_store_blocked
            end
            ## 
            ## Sets the googlePlayStoreBlocked property value. Indicates whether or not to block the Google Play store.
            ## @param value Value to set for the google_play_store_blocked property.
            ## @return a void
            ## 
            def google_play_store_blocked=(value)
                @google_play_store_blocked = value
            end
            ## 
            ## Gets the kioskModeApps property value. A list of apps that will be allowed to run when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def kiosk_mode_apps
                return @kiosk_mode_apps
            end
            ## 
            ## Sets the kioskModeApps property value. A list of apps that will be allowed to run when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the kiosk_mode_apps property.
            ## @return a void
            ## 
            def kiosk_mode_apps=(value)
                @kiosk_mode_apps = value
            end
            ## 
            ## Gets the kioskModeBlockSleepButton property value. Indicates whether or not to block the screen sleep button while in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_block_sleep_button
                return @kiosk_mode_block_sleep_button
            end
            ## 
            ## Sets the kioskModeBlockSleepButton property value. Indicates whether or not to block the screen sleep button while in Kiosk Mode.
            ## @param value Value to set for the kiosk_mode_block_sleep_button property.
            ## @return a void
            ## 
            def kiosk_mode_block_sleep_button=(value)
                @kiosk_mode_block_sleep_button = value
            end
            ## 
            ## Gets the kioskModeBlockVolumeButtons property value. Indicates whether or not to block the volume buttons while in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_block_volume_buttons
                return @kiosk_mode_block_volume_buttons
            end
            ## 
            ## Sets the kioskModeBlockVolumeButtons property value. Indicates whether or not to block the volume buttons while in Kiosk Mode.
            ## @param value Value to set for the kiosk_mode_block_volume_buttons property.
            ## @return a void
            ## 
            def kiosk_mode_block_volume_buttons=(value)
                @kiosk_mode_block_volume_buttons = value
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
            ## Gets the passwordBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock.
            ## @return a boolean
            ## 
            def password_block_fingerprint_unlock
                return @password_block_fingerprint_unlock
            end
            ## 
            ## Sets the passwordBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock.
            ## @param value Value to set for the password_block_fingerprint_unlock property.
            ## @return a void
            ## 
            def password_block_fingerprint_unlock=(value)
                @password_block_fingerprint_unlock = value
            end
            ## 
            ## Gets the passwordBlockTrustAgents property value. Indicates whether or not to block Smart Lock and other trust agents.
            ## @return a boolean
            ## 
            def password_block_trust_agents
                return @password_block_trust_agents
            end
            ## 
            ## Sets the passwordBlockTrustAgents property value. Indicates whether or not to block Smart Lock and other trust agents.
            ## @param value Value to set for the password_block_trust_agents property.
            ## @return a void
            ## 
            def password_block_trust_agents=(value)
                @password_block_trust_agents = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. Number of days before the password expires. Valid values 1 to 365
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. Number of days before the password expires. Valid values 1 to 365
            ## @param value Value to set for the password_expiration_days property.
            ## @return a void
            ## 
            def password_expiration_days=(value)
                @password_expiration_days = value
            end
            ## 
            ## Gets the passwordMinimumLength property value. Minimum length of passwords. Valid values 4 to 16
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. Minimum length of passwords. Valid values 4 to 16
            ## @param value Value to set for the password_minimum_length property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_screen_timeout
                return @password_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
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
            ## Gets the passwordRequiredType property value. Android required password type.
            ## @return a android_required_password_type
            ## 
            def password_required_type
                return @password_required_type
            end
            ## 
            ## Sets the passwordRequiredType property value. Android required password type.
            ## @param value Value to set for the password_required_type property.
            ## @return a void
            ## 
            def password_required_type=(value)
                @password_required_type = value
            end
            ## 
            ## Gets the passwordSignInFailureCountBeforeFactoryReset property value. Number of sign in failures allowed before factory reset. Valid values 1 to 16
            ## @return a integer
            ## 
            def password_sign_in_failure_count_before_factory_reset
                return @password_sign_in_failure_count_before_factory_reset
            end
            ## 
            ## Sets the passwordSignInFailureCountBeforeFactoryReset property value. Number of sign in failures allowed before factory reset. Valid values 1 to 16
            ## @param value Value to set for the password_sign_in_failure_count_before_factory_reset property.
            ## @return a void
            ## 
            def password_sign_in_failure_count_before_factory_reset=(value)
                @password_sign_in_failure_count_before_factory_reset = value
            end
            ## 
            ## Gets the powerOffBlocked property value. Indicates whether or not to block powering off the device.
            ## @return a boolean
            ## 
            def power_off_blocked
                return @power_off_blocked
            end
            ## 
            ## Sets the powerOffBlocked property value. Indicates whether or not to block powering off the device.
            ## @param value Value to set for the power_off_blocked property.
            ## @return a void
            ## 
            def power_off_blocked=(value)
                @power_off_blocked = value
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
            ## Gets the securityRequireVerifyApps property value. Require the Android Verify apps feature is turned on.
            ## @return a boolean
            ## 
            def security_require_verify_apps
                return @security_require_verify_apps
            end
            ## 
            ## Sets the securityRequireVerifyApps property value. Require the Android Verify apps feature is turned on.
            ## @param value Value to set for the security_require_verify_apps property.
            ## @return a void
            ## 
            def security_require_verify_apps=(value)
                @security_require_verify_apps = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("appsBlockClipboardSharing", @apps_block_clipboard_sharing)
                writer.write_boolean_value("appsBlockCopyPaste", @apps_block_copy_paste)
                writer.write_boolean_value("appsBlockYouTube", @apps_block_you_tube)
                writer.write_collection_of_object_values("appsHideList", @apps_hide_list)
                writer.write_collection_of_object_values("appsInstallAllowList", @apps_install_allow_list)
                writer.write_collection_of_object_values("appsLaunchBlockList", @apps_launch_block_list)
                writer.write_boolean_value("bluetoothBlocked", @bluetooth_blocked)
                writer.write_boolean_value("cameraBlocked", @camera_blocked)
                writer.write_boolean_value("cellularBlockDataRoaming", @cellular_block_data_roaming)
                writer.write_boolean_value("cellularBlockMessaging", @cellular_block_messaging)
                writer.write_boolean_value("cellularBlockVoiceRoaming", @cellular_block_voice_roaming)
                writer.write_boolean_value("cellularBlockWiFiTethering", @cellular_block_wi_fi_tethering)
                writer.write_enum_value("compliantAppListType", @compliant_app_list_type)
                writer.write_collection_of_object_values("compliantAppsList", @compliant_apps_list)
                writer.write_boolean_value("deviceSharingAllowed", @device_sharing_allowed)
                writer.write_boolean_value("diagnosticDataBlockSubmission", @diagnostic_data_block_submission)
                writer.write_boolean_value("factoryResetBlocked", @factory_reset_blocked)
                writer.write_boolean_value("googleAccountBlockAutoSync", @google_account_block_auto_sync)
                writer.write_boolean_value("googlePlayStoreBlocked", @google_play_store_blocked)
                writer.write_collection_of_object_values("kioskModeApps", @kiosk_mode_apps)
                writer.write_boolean_value("kioskModeBlockSleepButton", @kiosk_mode_block_sleep_button)
                writer.write_boolean_value("kioskModeBlockVolumeButtons", @kiosk_mode_block_volume_buttons)
                writer.write_boolean_value("locationServicesBlocked", @location_services_blocked)
                writer.write_boolean_value("nfcBlocked", @nfc_blocked)
                writer.write_boolean_value("passwordBlockFingerprintUnlock", @password_block_fingerprint_unlock)
                writer.write_boolean_value("passwordBlockTrustAgents", @password_block_trust_agents)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_number_value("passwordSignInFailureCountBeforeFactoryReset", @password_sign_in_failure_count_before_factory_reset)
                writer.write_boolean_value("powerOffBlocked", @power_off_blocked)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_boolean_value("securityRequireVerifyApps", @security_require_verify_apps)
                writer.write_boolean_value("storageBlockGoogleBackup", @storage_block_google_backup)
                writer.write_boolean_value("storageBlockRemovableStorage", @storage_block_removable_storage)
                writer.write_boolean_value("storageRequireDeviceEncryption", @storage_require_device_encryption)
                writer.write_boolean_value("storageRequireRemovableStorageEncryption", @storage_require_removable_storage_encryption)
                writer.write_boolean_value("voiceAssistantBlocked", @voice_assistant_blocked)
                writer.write_boolean_value("voiceDialingBlocked", @voice_dialing_blocked)
                writer.write_boolean_value("webBrowserBlockAutofill", @web_browser_block_autofill)
                writer.write_boolean_value("webBrowserBlockJavaScript", @web_browser_block_java_script)
                writer.write_boolean_value("webBrowserBlockPopups", @web_browser_block_popups)
                writer.write_boolean_value("webBrowserBlocked", @web_browser_blocked)
                writer.write_enum_value("webBrowserCookieSettings", @web_browser_cookie_settings)
                writer.write_boolean_value("wiFiBlocked", @wi_fi_blocked)
            end
            ## 
            ## Gets the storageBlockGoogleBackup property value. Indicates whether or not to block Google Backup.
            ## @return a boolean
            ## 
            def storage_block_google_backup
                return @storage_block_google_backup
            end
            ## 
            ## Sets the storageBlockGoogleBackup property value. Indicates whether or not to block Google Backup.
            ## @param value Value to set for the storage_block_google_backup property.
            ## @return a void
            ## 
            def storage_block_google_backup=(value)
                @storage_block_google_backup = value
            end
            ## 
            ## Gets the storageBlockRemovableStorage property value. Indicates whether or not to block removable storage usage.
            ## @return a boolean
            ## 
            def storage_block_removable_storage
                return @storage_block_removable_storage
            end
            ## 
            ## Sets the storageBlockRemovableStorage property value. Indicates whether or not to block removable storage usage.
            ## @param value Value to set for the storage_block_removable_storage property.
            ## @return a void
            ## 
            def storage_block_removable_storage=(value)
                @storage_block_removable_storage = value
            end
            ## 
            ## Gets the storageRequireDeviceEncryption property value. Indicates whether or not to require device encryption.
            ## @return a boolean
            ## 
            def storage_require_device_encryption
                return @storage_require_device_encryption
            end
            ## 
            ## Sets the storageRequireDeviceEncryption property value. Indicates whether or not to require device encryption.
            ## @param value Value to set for the storage_require_device_encryption property.
            ## @return a void
            ## 
            def storage_require_device_encryption=(value)
                @storage_require_device_encryption = value
            end
            ## 
            ## Gets the storageRequireRemovableStorageEncryption property value. Indicates whether or not to require removable storage encryption.
            ## @return a boolean
            ## 
            def storage_require_removable_storage_encryption
                return @storage_require_removable_storage_encryption
            end
            ## 
            ## Sets the storageRequireRemovableStorageEncryption property value. Indicates whether or not to require removable storage encryption.
            ## @param value Value to set for the storage_require_removable_storage_encryption property.
            ## @return a void
            ## 
            def storage_require_removable_storage_encryption=(value)
                @storage_require_removable_storage_encryption = value
            end
            ## 
            ## Gets the voiceAssistantBlocked property value. Indicates whether or not to block the use of the Voice Assistant.
            ## @return a boolean
            ## 
            def voice_assistant_blocked
                return @voice_assistant_blocked
            end
            ## 
            ## Sets the voiceAssistantBlocked property value. Indicates whether or not to block the use of the Voice Assistant.
            ## @param value Value to set for the voice_assistant_blocked property.
            ## @return a void
            ## 
            def voice_assistant_blocked=(value)
                @voice_assistant_blocked = value
            end
            ## 
            ## Gets the voiceDialingBlocked property value. Indicates whether or not to block voice dialing.
            ## @return a boolean
            ## 
            def voice_dialing_blocked
                return @voice_dialing_blocked
            end
            ## 
            ## Sets the voiceDialingBlocked property value. Indicates whether or not to block voice dialing.
            ## @param value Value to set for the voice_dialing_blocked property.
            ## @return a void
            ## 
            def voice_dialing_blocked=(value)
                @voice_dialing_blocked = value
            end
            ## 
            ## Gets the webBrowserBlockAutofill property value. Indicates whether or not to block the web browser's auto fill feature.
            ## @return a boolean
            ## 
            def web_browser_block_autofill
                return @web_browser_block_autofill
            end
            ## 
            ## Sets the webBrowserBlockAutofill property value. Indicates whether or not to block the web browser's auto fill feature.
            ## @param value Value to set for the web_browser_block_autofill property.
            ## @return a void
            ## 
            def web_browser_block_autofill=(value)
                @web_browser_block_autofill = value
            end
            ## 
            ## Gets the webBrowserBlockJavaScript property value. Indicates whether or not to block JavaScript within the web browser.
            ## @return a boolean
            ## 
            def web_browser_block_java_script
                return @web_browser_block_java_script
            end
            ## 
            ## Sets the webBrowserBlockJavaScript property value. Indicates whether or not to block JavaScript within the web browser.
            ## @param value Value to set for the web_browser_block_java_script property.
            ## @return a void
            ## 
            def web_browser_block_java_script=(value)
                @web_browser_block_java_script = value
            end
            ## 
            ## Gets the webBrowserBlockPopups property value. Indicates whether or not to block popups within the web browser.
            ## @return a boolean
            ## 
            def web_browser_block_popups
                return @web_browser_block_popups
            end
            ## 
            ## Sets the webBrowserBlockPopups property value. Indicates whether or not to block popups within the web browser.
            ## @param value Value to set for the web_browser_block_popups property.
            ## @return a void
            ## 
            def web_browser_block_popups=(value)
                @web_browser_block_popups = value
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
            ## Gets the webBrowserCookieSettings property value. Web Browser Cookie Settings.
            ## @return a web_browser_cookie_settings
            ## 
            def web_browser_cookie_settings
                return @web_browser_cookie_settings
            end
            ## 
            ## Sets the webBrowserCookieSettings property value. Web Browser Cookie Settings.
            ## @param value Value to set for the web_browser_cookie_settings property.
            ## @return a void
            ## 
            def web_browser_cookie_settings=(value)
                @web_browser_cookie_settings = value
            end
            ## 
            ## Gets the wiFiBlocked property value. Indicates whether or not to block syncing Wi-Fi.
            ## @return a boolean
            ## 
            def wi_fi_blocked
                return @wi_fi_blocked
            end
            ## 
            ## Sets the wiFiBlocked property value. Indicates whether or not to block syncing Wi-Fi.
            ## @param value Value to set for the wi_fi_blocked property.
            ## @return a void
            ## 
            def wi_fi_blocked=(value)
                @wi_fi_blocked = value
            end
        end
    end
end
