require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosGeneralDeviceConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to allow account modification when the device is in supervised mode.
            @account_block_modification
            ## 
            # Indicates whether or not to allow activation lock when the device is in the supervised mode.
            @activation_lock_allow_when_supervised
            ## 
            # Indicates whether or not to allow AirDrop when the device is in supervised mode.
            @air_drop_blocked
            ## 
            # Indicates whether or not to cause AirDrop to be considered an unmanaged drop target (iOS 9.0 and later).
            @air_drop_force_unmanaged_drop_target
            ## 
            # Indicates whether or not to enforce all devices receiving AirPlay requests from this device to use a pairing password.
            @air_play_force_pairing_password_for_outgoing_requests
            ## 
            # Indicates whether or not to block the automatic downloading of apps purchased on other devices when the device is in supervised mode (iOS 9.0 and later).
            @app_store_block_automatic_downloads
            ## 
            # Indicates whether or not to block the user from making in app purchases.
            @app_store_block_in_app_purchases
            ## 
            # Indicates whether or not to block the App Store app, not restricting installation through Host apps. Applies to supervised mode only (iOS 9.0 and later).
            @app_store_block_u_i_app_installation
            ## 
            # Indicates whether or not to block the user from using the App Store. Requires a supervised device for iOS 13 and later.
            @app_store_blocked
            ## 
            # Indicates whether or not to require a password when using the app store.
            @app_store_require_password
            ## 
            # Indicates whether or not to block the user from using News when the device is in supervised mode (iOS 9.0 and later).
            @apple_news_blocked
            ## 
            # Indicates whether or not to allow Apple Watch pairing when the device is in supervised mode (iOS 9.0 and later).
            @apple_watch_block_pairing
            ## 
            # Indicates whether or not to force a paired Apple Watch to use Wrist Detection (iOS 8.2 and later).
            @apple_watch_force_wrist_detection
            ## 
            # Gets or sets the list of iOS apps allowed to autonomously enter Single App Mode. Supervised only. iOS 7.0 and later. This collection can contain a maximum of 500 elements.
            @apps_single_app_mode_list
            ## 
            # List of apps in the visibility list (either visible/launchable apps list or hidden/unlaunchable apps list, controlled by AppsVisibilityListType) (iOS 9.3 and later). This collection can contain a maximum of 10000 elements.
            @apps_visibility_list
            ## 
            # Possible values of the compliance app list.
            @apps_visibility_list_type
            ## 
            # Indicates whether or not to allow modification of Bluetooth settings when the device is in supervised mode (iOS 10.0 and later).
            @bluetooth_block_modification
            ## 
            # Indicates whether or not to block the user from accessing the camera of the device. Requires a supervised device for iOS 13 and later.
            @camera_blocked
            ## 
            # Indicates whether or not to block data roaming.
            @cellular_block_data_roaming
            ## 
            # Indicates whether or not to block global background fetch while roaming.
            @cellular_block_global_background_fetch_while_roaming
            ## 
            # Indicates whether or not to allow changes to cellular app data usage settings when the device is in supervised mode.
            @cellular_block_per_app_data_modification
            ## 
            # Indicates whether or not to block Personal Hotspot.
            @cellular_block_personal_hotspot
            ## 
            # Indicates whether or not to block voice roaming.
            @cellular_block_voice_roaming
            ## 
            # Indicates whether or not to block untrusted TLS certificates.
            @certificates_block_untrusted_tls_certificates
            ## 
            # Indicates whether or not to allow remote screen observation by Classroom app when the device is in supervised mode (iOS 9.3 and later).
            @classroom_app_block_remote_screen_observation
            ## 
            # Indicates whether or not to automatically give permission to the teacher of a managed course on the Classroom app to view a student's screen without prompting when the device is in supervised mode.
            @classroom_app_force_unprompted_screen_observation
            ## 
            # Possible values of the compliance app list.
            @compliant_app_list_type
            ## 
            # List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            @compliant_apps_list
            ## 
            # Indicates whether or not to block the user from installing configuration profiles and certificates interactively when the device is in supervised mode.
            @configuration_profile_block_changes
            ## 
            # Indicates whether or not to block definition lookup when the device is in supervised mode (iOS 8.1.3 and later ).
            @definition_lookup_blocked
            ## 
            # Indicates whether or not to allow the user to enables restrictions in the device settings when the device is in supervised mode.
            @device_block_enable_restrictions
            ## 
            # Indicates whether or not to allow the use of the 'Erase all content and settings' option on the device when the device is in supervised mode.
            @device_block_erase_content_and_settings
            ## 
            # Indicates whether or not to allow device name modification when the device is in supervised mode (iOS 9.0 and later).
            @device_block_name_modification
            ## 
            # Indicates whether or not to block diagnostic data submission.
            @diagnostic_data_block_submission
            ## 
            # Indicates whether or not to allow diagnostics submission settings modification when the device is in supervised mode (iOS 9.3.2 and later).
            @diagnostic_data_block_submission_modification
            ## 
            # Indicates whether or not to block the user from viewing managed documents in unmanaged apps.
            @documents_block_managed_documents_in_unmanaged_apps
            ## 
            # Indicates whether or not to block the user from viewing unmanaged documents in managed apps.
            @documents_block_unmanaged_documents_in_managed_apps
            ## 
            # An email address lacking a suffix that matches any of these strings will be considered out-of-domain.
            @email_in_domain_suffixes
            ## 
            # Indicates whether or not to block the user from trusting an enterprise app.
            @enterprise_app_block_trust
            ## 
            # [Deprecated] Configuring this setting and setting the value to 'true' has no effect on the device.
            @enterprise_app_block_trust_modification
            ## 
            # Indicates whether or not to block the user from using FaceTime. Requires a supervised device for iOS 13 and later.
            @face_time_blocked
            ## 
            # Indicates whether or not to block changes to Find My Friends when the device is in supervised mode.
            @find_my_friends_blocked
            ## 
            # Indicates whether or not to block the user from using Game Center when the device is in supervised mode.
            @game_center_blocked
            ## 
            # Indicates whether or not to block the user from having friends in Game Center. Requires a supervised device for iOS 13 and later.
            @gaming_block_game_center_friends
            ## 
            # Indicates whether or not to block the user from using multiplayer gaming. Requires a supervised device for iOS 13 and later.
            @gaming_block_multiplayer
            ## 
            # indicates whether or not to allow host pairing to control the devices an iOS device can pair with when the iOS device is in supervised mode.
            @host_pairing_blocked
            ## 
            # Indicates whether or not to block the user from downloading media from the iBookstore that has been tagged as erotica.
            @i_books_store_block_erotica
            ## 
            # Indicates whether or not to block the user from using the iBooks Store when the device is in supervised mode.
            @i_books_store_blocked
            ## 
            # Indicates whether or not to block the user from continuing work they started on iOS device to another iOS or macOS device.
            @i_cloud_block_activity_continuation
            ## 
            # Indicates whether or not to block iCloud backup. Requires a supervised device for iOS 13 and later.
            @i_cloud_block_backup
            ## 
            # Indicates whether or not to block iCloud document sync. Requires a supervised device for iOS 13 and later.
            @i_cloud_block_document_sync
            ## 
            # Indicates whether or not to block Managed Apps Cloud Sync.
            @i_cloud_block_managed_apps_sync
            ## 
            # Indicates whether or not to block iCloud Photo Library.
            @i_cloud_block_photo_library
            ## 
            # Indicates whether or not to block iCloud Photo Stream Sync.
            @i_cloud_block_photo_stream_sync
            ## 
            # Indicates whether or not to block Shared Photo Stream.
            @i_cloud_block_shared_photo_stream
            ## 
            # Indicates whether or not to require backups to iCloud be encrypted.
            @i_cloud_require_encrypted_backup
            ## 
            # Indicates whether or not to block the user from accessing explicit content in iTunes and the App Store. Requires a supervised device for iOS 13 and later.
            @i_tunes_block_explicit_content
            ## 
            # Indicates whether or not to block Music service and revert Music app to classic mode when the device is in supervised mode (iOS 9.3 and later and macOS 10.12 and later).
            @i_tunes_block_music_service
            ## 
            # Indicates whether or not to block the user from using iTunes Radio when the device is in supervised mode (iOS 9.3 and later).
            @i_tunes_block_radio
            ## 
            # Indicates whether or not to block keyboard auto-correction when the device is in supervised mode (iOS 8.1.3 and later).
            @keyboard_block_auto_correct
            ## 
            # Indicates whether or not to block the user from using dictation input when the device is in supervised mode.
            @keyboard_block_dictation
            ## 
            # Indicates whether or not to block predictive keyboards when device is in supervised mode (iOS 8.1.3 and later).
            @keyboard_block_predictive
            ## 
            # Indicates whether or not to block keyboard shortcuts when the device is in supervised mode (iOS 9.0 and later).
            @keyboard_block_shortcuts
            ## 
            # Indicates whether or not to block keyboard spell-checking when the device is in supervised mode (iOS 8.1.3 and later).
            @keyboard_block_spell_check
            ## 
            # Indicates whether or not to allow assistive speak while in kiosk mode.
            @kiosk_mode_allow_assistive_speak
            ## 
            # Indicates whether or not to allow access to the Assistive Touch Settings while in kiosk mode.
            @kiosk_mode_allow_assistive_touch_settings
            ## 
            # Indicates whether or not to allow device auto lock while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockAutoLock instead.
            @kiosk_mode_allow_auto_lock
            ## 
            # Indicates whether or not to allow access to the Color Inversion Settings while in kiosk mode.
            @kiosk_mode_allow_color_inversion_settings
            ## 
            # Indicates whether or not to allow use of the ringer switch while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockRingerSwitch instead.
            @kiosk_mode_allow_ringer_switch
            ## 
            # Indicates whether or not to allow screen rotation while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockScreenRotation instead.
            @kiosk_mode_allow_screen_rotation
            ## 
            # Indicates whether or not to allow use of the sleep button while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockSleepButton instead.
            @kiosk_mode_allow_sleep_button
            ## 
            # Indicates whether or not to allow use of the touchscreen while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockTouchscreen instead.
            @kiosk_mode_allow_touchscreen
            ## 
            # Indicates whether or not to allow access to the voice over settings while in kiosk mode.
            @kiosk_mode_allow_voice_over_settings
            ## 
            # Indicates whether or not to allow use of the volume buttons while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockVolumeButtons instead.
            @kiosk_mode_allow_volume_buttons
            ## 
            # Indicates whether or not to allow access to the zoom settings while in kiosk mode.
            @kiosk_mode_allow_zoom_settings
            ## 
            # URL in the app store to the app to use for kiosk mode. Use if KioskModeManagedAppId is not known.
            @kiosk_mode_app_store_url
            ## 
            # ID for built-in apps to use for kiosk mode. Used when KioskModeManagedAppId and KioskModeAppStoreUrl are not set.
            @kiosk_mode_built_in_app_id
            ## 
            # Managed app id of the app to use for kiosk mode. If KioskModeManagedAppId is specified then KioskModeAppStoreUrl will be ignored.
            @kiosk_mode_managed_app_id
            ## 
            # Indicates whether or not to require assistive touch while in kiosk mode.
            @kiosk_mode_require_assistive_touch
            ## 
            # Indicates whether or not to require color inversion while in kiosk mode.
            @kiosk_mode_require_color_inversion
            ## 
            # Indicates whether or not to require mono audio while in kiosk mode.
            @kiosk_mode_require_mono_audio
            ## 
            # Indicates whether or not to require voice over while in kiosk mode.
            @kiosk_mode_require_voice_over
            ## 
            # Indicates whether or not to require zoom while in kiosk mode.
            @kiosk_mode_require_zoom
            ## 
            # Indicates whether or not to block the user from using control center on the lock screen.
            @lock_screen_block_control_center
            ## 
            # Indicates whether or not to block the user from using the notification view on the lock screen.
            @lock_screen_block_notification_view
            ## 
            # Indicates whether or not to block the user from using passbook when the device is locked.
            @lock_screen_block_passbook
            ## 
            # Indicates whether or not to block the user from using the Today View on the lock screen.
            @lock_screen_block_today_view
            ## 
            # Apps rating as in media content
            @media_content_rating_apps
            ## 
            # Media content rating settings for Australia
            @media_content_rating_australia
            ## 
            # Media content rating settings for Canada
            @media_content_rating_canada
            ## 
            # Media content rating settings for France
            @media_content_rating_france
            ## 
            # Media content rating settings for Germany
            @media_content_rating_germany
            ## 
            # Media content rating settings for Ireland
            @media_content_rating_ireland
            ## 
            # Media content rating settings for Japan
            @media_content_rating_japan
            ## 
            # Media content rating settings for New Zealand
            @media_content_rating_new_zealand
            ## 
            # Media content rating settings for United Kingdom
            @media_content_rating_united_kingdom
            ## 
            # Media content rating settings for United States
            @media_content_rating_united_states
            ## 
            # Indicates whether or not to block the user from using the Messages app on the supervised device.
            @messages_blocked
            ## 
            # List of managed apps and the network rules that applies to them. This collection can contain a maximum of 1000 elements.
            @network_usage_rules
            ## 
            # Indicates whether or not to allow notifications settings modification (iOS 9.3 and later).
            @notifications_block_settings_modification
            ## 
            # Block modification of registered Touch ID fingerprints when in supervised mode.
            @passcode_block_fingerprint_modification
            ## 
            # Indicates whether or not to block fingerprint unlock.
            @passcode_block_fingerprint_unlock
            ## 
            # Indicates whether or not to allow passcode modification on the supervised device (iOS 9.0 and later).
            @passcode_block_modification
            ## 
            # Indicates whether or not to block simple passcodes.
            @passcode_block_simple
            ## 
            # Number of days before the passcode expires. Valid values 1 to 65535
            @passcode_expiration_days
            ## 
            # Number of character sets a passcode must contain. Valid values 0 to 4
            @passcode_minimum_character_set_count
            ## 
            # Minimum length of passcode. Valid values 4 to 14
            @passcode_minimum_length
            ## 
            # Minutes of inactivity before a passcode is required.
            @passcode_minutes_of_inactivity_before_lock
            ## 
            # Minutes of inactivity before the screen times out.
            @passcode_minutes_of_inactivity_before_screen_timeout
            ## 
            # Number of previous passcodes to block. Valid values 1 to 24
            @passcode_previous_passcode_block_count
            ## 
            # Indicates whether or not to require a passcode.
            @passcode_required
            ## 
            # Possible values of required passwords.
            @passcode_required_type
            ## 
            # Number of sign in failures allowed before wiping the device. Valid values 2 to 11
            @passcode_sign_in_failure_count_before_wipe
            ## 
            # Indicates whether or not to block the user from using podcasts on the supervised device (iOS 8.0 and later).
            @podcasts_blocked
            ## 
            # Indicates whether or not to block the user from using Auto fill in Safari. Requires a supervised device for iOS 13 and later.
            @safari_block_autofill
            ## 
            # Indicates whether or not to block JavaScript in Safari.
            @safari_block_java_script
            ## 
            # Indicates whether or not to block popups in Safari.
            @safari_block_popups
            ## 
            # Indicates whether or not to block the user from using Safari. Requires a supervised device for iOS 13 and later.
            @safari_blocked
            ## 
            # Web Browser Cookie Settings.
            @safari_cookie_settings
            ## 
            # URLs matching the patterns listed here will be considered managed.
            @safari_managed_domains
            ## 
            # Users can save passwords in Safari only from URLs matching the patterns listed here. Applies to devices in supervised mode (iOS 9.3 and later).
            @safari_password_auto_fill_domains
            ## 
            # Indicates whether or not to require fraud warning in Safari.
            @safari_require_fraud_warning
            ## 
            # Indicates whether or not to block the user from taking Screenshots.
            @screen_capture_blocked
            ## 
            # Indicates whether or not to block Siri from querying user-generated content when used on a supervised device.
            @siri_block_user_generated_content
            ## 
            # Indicates whether or not to block the user from using Siri.
            @siri_blocked
            ## 
            # Indicates whether or not to block the user from using Siri when locked.
            @siri_blocked_when_locked
            ## 
            # Indicates whether or not to prevent Siri from dictating, or speaking profane language on supervised device.
            @siri_require_profanity_filter
            ## 
            # Indicates whether or not to block Spotlight search from returning internet results on supervised device.
            @spotlight_block_internet_results
            ## 
            # Indicates whether or not to block voice dialing.
            @voice_dialing_blocked
            ## 
            # Indicates whether or not to allow wallpaper modification on supervised device (iOS 9.0 and later) .
            @wallpaper_block_modification
            ## 
            # Indicates whether or not to force the device to use only Wi-Fi networks from configuration profiles when the device is in supervised mode. Available for devices running iOS and iPadOS versions 14.4 and earlier. Devices running 14.5+ should use the setting, 'WiFiConnectToAllowedNetworksOnlyForced.
            @wi_fi_connect_only_to_configured_networks
            ## 
            ## Gets the accountBlockModification property value. Indicates whether or not to allow account modification when the device is in supervised mode.
            ## @return a boolean
            ## 
            def account_block_modification
                return @account_block_modification
            end
            ## 
            ## Sets the accountBlockModification property value. Indicates whether or not to allow account modification when the device is in supervised mode.
            ## @param value Value to set for the account_block_modification property.
            ## @return a void
            ## 
            def account_block_modification=(value)
                @account_block_modification = value
            end
            ## 
            ## Gets the activationLockAllowWhenSupervised property value. Indicates whether or not to allow activation lock when the device is in the supervised mode.
            ## @return a boolean
            ## 
            def activation_lock_allow_when_supervised
                return @activation_lock_allow_when_supervised
            end
            ## 
            ## Sets the activationLockAllowWhenSupervised property value. Indicates whether or not to allow activation lock when the device is in the supervised mode.
            ## @param value Value to set for the activation_lock_allow_when_supervised property.
            ## @return a void
            ## 
            def activation_lock_allow_when_supervised=(value)
                @activation_lock_allow_when_supervised = value
            end
            ## 
            ## Gets the airDropBlocked property value. Indicates whether or not to allow AirDrop when the device is in supervised mode.
            ## @return a boolean
            ## 
            def air_drop_blocked
                return @air_drop_blocked
            end
            ## 
            ## Sets the airDropBlocked property value. Indicates whether or not to allow AirDrop when the device is in supervised mode.
            ## @param value Value to set for the air_drop_blocked property.
            ## @return a void
            ## 
            def air_drop_blocked=(value)
                @air_drop_blocked = value
            end
            ## 
            ## Gets the airDropForceUnmanagedDropTarget property value. Indicates whether or not to cause AirDrop to be considered an unmanaged drop target (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def air_drop_force_unmanaged_drop_target
                return @air_drop_force_unmanaged_drop_target
            end
            ## 
            ## Sets the airDropForceUnmanagedDropTarget property value. Indicates whether or not to cause AirDrop to be considered an unmanaged drop target (iOS 9.0 and later).
            ## @param value Value to set for the air_drop_force_unmanaged_drop_target property.
            ## @return a void
            ## 
            def air_drop_force_unmanaged_drop_target=(value)
                @air_drop_force_unmanaged_drop_target = value
            end
            ## 
            ## Gets the airPlayForcePairingPasswordForOutgoingRequests property value. Indicates whether or not to enforce all devices receiving AirPlay requests from this device to use a pairing password.
            ## @return a boolean
            ## 
            def air_play_force_pairing_password_for_outgoing_requests
                return @air_play_force_pairing_password_for_outgoing_requests
            end
            ## 
            ## Sets the airPlayForcePairingPasswordForOutgoingRequests property value. Indicates whether or not to enforce all devices receiving AirPlay requests from this device to use a pairing password.
            ## @param value Value to set for the air_play_force_pairing_password_for_outgoing_requests property.
            ## @return a void
            ## 
            def air_play_force_pairing_password_for_outgoing_requests=(value)
                @air_play_force_pairing_password_for_outgoing_requests = value
            end
            ## 
            ## Gets the appStoreBlockAutomaticDownloads property value. Indicates whether or not to block the automatic downloading of apps purchased on other devices when the device is in supervised mode (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def app_store_block_automatic_downloads
                return @app_store_block_automatic_downloads
            end
            ## 
            ## Sets the appStoreBlockAutomaticDownloads property value. Indicates whether or not to block the automatic downloading of apps purchased on other devices when the device is in supervised mode (iOS 9.0 and later).
            ## @param value Value to set for the app_store_block_automatic_downloads property.
            ## @return a void
            ## 
            def app_store_block_automatic_downloads=(value)
                @app_store_block_automatic_downloads = value
            end
            ## 
            ## Gets the appStoreBlockInAppPurchases property value. Indicates whether or not to block the user from making in app purchases.
            ## @return a boolean
            ## 
            def app_store_block_in_app_purchases
                return @app_store_block_in_app_purchases
            end
            ## 
            ## Sets the appStoreBlockInAppPurchases property value. Indicates whether or not to block the user from making in app purchases.
            ## @param value Value to set for the app_store_block_in_app_purchases property.
            ## @return a void
            ## 
            def app_store_block_in_app_purchases=(value)
                @app_store_block_in_app_purchases = value
            end
            ## 
            ## Gets the appStoreBlockUIAppInstallation property value. Indicates whether or not to block the App Store app, not restricting installation through Host apps. Applies to supervised mode only (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def app_store_block_u_i_app_installation
                return @app_store_block_u_i_app_installation
            end
            ## 
            ## Sets the appStoreBlockUIAppInstallation property value. Indicates whether or not to block the App Store app, not restricting installation through Host apps. Applies to supervised mode only (iOS 9.0 and later).
            ## @param value Value to set for the app_store_block_u_i_app_installation property.
            ## @return a void
            ## 
            def app_store_block_u_i_app_installation=(value)
                @app_store_block_u_i_app_installation = value
            end
            ## 
            ## Gets the appStoreBlocked property value. Indicates whether or not to block the user from using the App Store. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def app_store_blocked
                return @app_store_blocked
            end
            ## 
            ## Sets the appStoreBlocked property value. Indicates whether or not to block the user from using the App Store. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the app_store_blocked property.
            ## @return a void
            ## 
            def app_store_blocked=(value)
                @app_store_blocked = value
            end
            ## 
            ## Gets the appStoreRequirePassword property value. Indicates whether or not to require a password when using the app store.
            ## @return a boolean
            ## 
            def app_store_require_password
                return @app_store_require_password
            end
            ## 
            ## Sets the appStoreRequirePassword property value. Indicates whether or not to require a password when using the app store.
            ## @param value Value to set for the app_store_require_password property.
            ## @return a void
            ## 
            def app_store_require_password=(value)
                @app_store_require_password = value
            end
            ## 
            ## Gets the appleNewsBlocked property value. Indicates whether or not to block the user from using News when the device is in supervised mode (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def apple_news_blocked
                return @apple_news_blocked
            end
            ## 
            ## Sets the appleNewsBlocked property value. Indicates whether or not to block the user from using News when the device is in supervised mode (iOS 9.0 and later).
            ## @param value Value to set for the apple_news_blocked property.
            ## @return a void
            ## 
            def apple_news_blocked=(value)
                @apple_news_blocked = value
            end
            ## 
            ## Gets the appleWatchBlockPairing property value. Indicates whether or not to allow Apple Watch pairing when the device is in supervised mode (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def apple_watch_block_pairing
                return @apple_watch_block_pairing
            end
            ## 
            ## Sets the appleWatchBlockPairing property value. Indicates whether or not to allow Apple Watch pairing when the device is in supervised mode (iOS 9.0 and later).
            ## @param value Value to set for the apple_watch_block_pairing property.
            ## @return a void
            ## 
            def apple_watch_block_pairing=(value)
                @apple_watch_block_pairing = value
            end
            ## 
            ## Gets the appleWatchForceWristDetection property value. Indicates whether or not to force a paired Apple Watch to use Wrist Detection (iOS 8.2 and later).
            ## @return a boolean
            ## 
            def apple_watch_force_wrist_detection
                return @apple_watch_force_wrist_detection
            end
            ## 
            ## Sets the appleWatchForceWristDetection property value. Indicates whether or not to force a paired Apple Watch to use Wrist Detection (iOS 8.2 and later).
            ## @param value Value to set for the apple_watch_force_wrist_detection property.
            ## @return a void
            ## 
            def apple_watch_force_wrist_detection=(value)
                @apple_watch_force_wrist_detection = value
            end
            ## 
            ## Gets the appsSingleAppModeList property value. Gets or sets the list of iOS apps allowed to autonomously enter Single App Mode. Supervised only. iOS 7.0 and later. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def apps_single_app_mode_list
                return @apps_single_app_mode_list
            end
            ## 
            ## Sets the appsSingleAppModeList property value. Gets or sets the list of iOS apps allowed to autonomously enter Single App Mode. Supervised only. iOS 7.0 and later. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the apps_single_app_mode_list property.
            ## @return a void
            ## 
            def apps_single_app_mode_list=(value)
                @apps_single_app_mode_list = value
            end
            ## 
            ## Gets the appsVisibilityList property value. List of apps in the visibility list (either visible/launchable apps list or hidden/unlaunchable apps list, controlled by AppsVisibilityListType) (iOS 9.3 and later). This collection can contain a maximum of 10000 elements.
            ## @return a app_list_item
            ## 
            def apps_visibility_list
                return @apps_visibility_list
            end
            ## 
            ## Sets the appsVisibilityList property value. List of apps in the visibility list (either visible/launchable apps list or hidden/unlaunchable apps list, controlled by AppsVisibilityListType) (iOS 9.3 and later). This collection can contain a maximum of 10000 elements.
            ## @param value Value to set for the apps_visibility_list property.
            ## @return a void
            ## 
            def apps_visibility_list=(value)
                @apps_visibility_list = value
            end
            ## 
            ## Gets the appsVisibilityListType property value. Possible values of the compliance app list.
            ## @return a app_list_type
            ## 
            def apps_visibility_list_type
                return @apps_visibility_list_type
            end
            ## 
            ## Sets the appsVisibilityListType property value. Possible values of the compliance app list.
            ## @param value Value to set for the apps_visibility_list_type property.
            ## @return a void
            ## 
            def apps_visibility_list_type=(value)
                @apps_visibility_list_type = value
            end
            ## 
            ## Gets the bluetoothBlockModification property value. Indicates whether or not to allow modification of Bluetooth settings when the device is in supervised mode (iOS 10.0 and later).
            ## @return a boolean
            ## 
            def bluetooth_block_modification
                return @bluetooth_block_modification
            end
            ## 
            ## Sets the bluetoothBlockModification property value. Indicates whether or not to allow modification of Bluetooth settings when the device is in supervised mode (iOS 10.0 and later).
            ## @param value Value to set for the bluetooth_block_modification property.
            ## @return a void
            ## 
            def bluetooth_block_modification=(value)
                @bluetooth_block_modification = value
            end
            ## 
            ## Gets the cameraBlocked property value. Indicates whether or not to block the user from accessing the camera of the device. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def camera_blocked
                return @camera_blocked
            end
            ## 
            ## Sets the cameraBlocked property value. Indicates whether or not to block the user from accessing the camera of the device. Requires a supervised device for iOS 13 and later.
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
            ## Gets the cellularBlockGlobalBackgroundFetchWhileRoaming property value. Indicates whether or not to block global background fetch while roaming.
            ## @return a boolean
            ## 
            def cellular_block_global_background_fetch_while_roaming
                return @cellular_block_global_background_fetch_while_roaming
            end
            ## 
            ## Sets the cellularBlockGlobalBackgroundFetchWhileRoaming property value. Indicates whether or not to block global background fetch while roaming.
            ## @param value Value to set for the cellular_block_global_background_fetch_while_roaming property.
            ## @return a void
            ## 
            def cellular_block_global_background_fetch_while_roaming=(value)
                @cellular_block_global_background_fetch_while_roaming = value
            end
            ## 
            ## Gets the cellularBlockPerAppDataModification property value. Indicates whether or not to allow changes to cellular app data usage settings when the device is in supervised mode.
            ## @return a boolean
            ## 
            def cellular_block_per_app_data_modification
                return @cellular_block_per_app_data_modification
            end
            ## 
            ## Sets the cellularBlockPerAppDataModification property value. Indicates whether or not to allow changes to cellular app data usage settings when the device is in supervised mode.
            ## @param value Value to set for the cellular_block_per_app_data_modification property.
            ## @return a void
            ## 
            def cellular_block_per_app_data_modification=(value)
                @cellular_block_per_app_data_modification = value
            end
            ## 
            ## Gets the cellularBlockPersonalHotspot property value. Indicates whether or not to block Personal Hotspot.
            ## @return a boolean
            ## 
            def cellular_block_personal_hotspot
                return @cellular_block_personal_hotspot
            end
            ## 
            ## Sets the cellularBlockPersonalHotspot property value. Indicates whether or not to block Personal Hotspot.
            ## @param value Value to set for the cellular_block_personal_hotspot property.
            ## @return a void
            ## 
            def cellular_block_personal_hotspot=(value)
                @cellular_block_personal_hotspot = value
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
            ## Gets the certificatesBlockUntrustedTlsCertificates property value. Indicates whether or not to block untrusted TLS certificates.
            ## @return a boolean
            ## 
            def certificates_block_untrusted_tls_certificates
                return @certificates_block_untrusted_tls_certificates
            end
            ## 
            ## Sets the certificatesBlockUntrustedTlsCertificates property value. Indicates whether or not to block untrusted TLS certificates.
            ## @param value Value to set for the certificates_block_untrusted_tls_certificates property.
            ## @return a void
            ## 
            def certificates_block_untrusted_tls_certificates=(value)
                @certificates_block_untrusted_tls_certificates = value
            end
            ## 
            ## Gets the classroomAppBlockRemoteScreenObservation property value. Indicates whether or not to allow remote screen observation by Classroom app when the device is in supervised mode (iOS 9.3 and later).
            ## @return a boolean
            ## 
            def classroom_app_block_remote_screen_observation
                return @classroom_app_block_remote_screen_observation
            end
            ## 
            ## Sets the classroomAppBlockRemoteScreenObservation property value. Indicates whether or not to allow remote screen observation by Classroom app when the device is in supervised mode (iOS 9.3 and later).
            ## @param value Value to set for the classroom_app_block_remote_screen_observation property.
            ## @return a void
            ## 
            def classroom_app_block_remote_screen_observation=(value)
                @classroom_app_block_remote_screen_observation = value
            end
            ## 
            ## Gets the classroomAppForceUnpromptedScreenObservation property value. Indicates whether or not to automatically give permission to the teacher of a managed course on the Classroom app to view a student's screen without prompting when the device is in supervised mode.
            ## @return a boolean
            ## 
            def classroom_app_force_unprompted_screen_observation
                return @classroom_app_force_unprompted_screen_observation
            end
            ## 
            ## Sets the classroomAppForceUnpromptedScreenObservation property value. Indicates whether or not to automatically give permission to the teacher of a managed course on the Classroom app to view a student's screen without prompting when the device is in supervised mode.
            ## @param value Value to set for the classroom_app_force_unprompted_screen_observation property.
            ## @return a void
            ## 
            def classroom_app_force_unprompted_screen_observation=(value)
                @classroom_app_force_unprompted_screen_observation = value
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
            ## Gets the configurationProfileBlockChanges property value. Indicates whether or not to block the user from installing configuration profiles and certificates interactively when the device is in supervised mode.
            ## @return a boolean
            ## 
            def configuration_profile_block_changes
                return @configuration_profile_block_changes
            end
            ## 
            ## Sets the configurationProfileBlockChanges property value. Indicates whether or not to block the user from installing configuration profiles and certificates interactively when the device is in supervised mode.
            ## @param value Value to set for the configuration_profile_block_changes property.
            ## @return a void
            ## 
            def configuration_profile_block_changes=(value)
                @configuration_profile_block_changes = value
            end
            ## 
            ## Instantiates a new IosGeneralDeviceConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosGeneralDeviceConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_general_device_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosGeneralDeviceConfiguration.new
            end
            ## 
            ## Gets the definitionLookupBlocked property value. Indicates whether or not to block definition lookup when the device is in supervised mode (iOS 8.1.3 and later ).
            ## @return a boolean
            ## 
            def definition_lookup_blocked
                return @definition_lookup_blocked
            end
            ## 
            ## Sets the definitionLookupBlocked property value. Indicates whether or not to block definition lookup when the device is in supervised mode (iOS 8.1.3 and later ).
            ## @param value Value to set for the definition_lookup_blocked property.
            ## @return a void
            ## 
            def definition_lookup_blocked=(value)
                @definition_lookup_blocked = value
            end
            ## 
            ## Gets the deviceBlockEnableRestrictions property value. Indicates whether or not to allow the user to enables restrictions in the device settings when the device is in supervised mode.
            ## @return a boolean
            ## 
            def device_block_enable_restrictions
                return @device_block_enable_restrictions
            end
            ## 
            ## Sets the deviceBlockEnableRestrictions property value. Indicates whether or not to allow the user to enables restrictions in the device settings when the device is in supervised mode.
            ## @param value Value to set for the device_block_enable_restrictions property.
            ## @return a void
            ## 
            def device_block_enable_restrictions=(value)
                @device_block_enable_restrictions = value
            end
            ## 
            ## Gets the deviceBlockEraseContentAndSettings property value. Indicates whether or not to allow the use of the 'Erase all content and settings' option on the device when the device is in supervised mode.
            ## @return a boolean
            ## 
            def device_block_erase_content_and_settings
                return @device_block_erase_content_and_settings
            end
            ## 
            ## Sets the deviceBlockEraseContentAndSettings property value. Indicates whether or not to allow the use of the 'Erase all content and settings' option on the device when the device is in supervised mode.
            ## @param value Value to set for the device_block_erase_content_and_settings property.
            ## @return a void
            ## 
            def device_block_erase_content_and_settings=(value)
                @device_block_erase_content_and_settings = value
            end
            ## 
            ## Gets the deviceBlockNameModification property value. Indicates whether or not to allow device name modification when the device is in supervised mode (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def device_block_name_modification
                return @device_block_name_modification
            end
            ## 
            ## Sets the deviceBlockNameModification property value. Indicates whether or not to allow device name modification when the device is in supervised mode (iOS 9.0 and later).
            ## @param value Value to set for the device_block_name_modification property.
            ## @return a void
            ## 
            def device_block_name_modification=(value)
                @device_block_name_modification = value
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
            ## Gets the diagnosticDataBlockSubmissionModification property value. Indicates whether or not to allow diagnostics submission settings modification when the device is in supervised mode (iOS 9.3.2 and later).
            ## @return a boolean
            ## 
            def diagnostic_data_block_submission_modification
                return @diagnostic_data_block_submission_modification
            end
            ## 
            ## Sets the diagnosticDataBlockSubmissionModification property value. Indicates whether or not to allow diagnostics submission settings modification when the device is in supervised mode (iOS 9.3.2 and later).
            ## @param value Value to set for the diagnostic_data_block_submission_modification property.
            ## @return a void
            ## 
            def diagnostic_data_block_submission_modification=(value)
                @diagnostic_data_block_submission_modification = value
            end
            ## 
            ## Gets the documentsBlockManagedDocumentsInUnmanagedApps property value. Indicates whether or not to block the user from viewing managed documents in unmanaged apps.
            ## @return a boolean
            ## 
            def documents_block_managed_documents_in_unmanaged_apps
                return @documents_block_managed_documents_in_unmanaged_apps
            end
            ## 
            ## Sets the documentsBlockManagedDocumentsInUnmanagedApps property value. Indicates whether or not to block the user from viewing managed documents in unmanaged apps.
            ## @param value Value to set for the documents_block_managed_documents_in_unmanaged_apps property.
            ## @return a void
            ## 
            def documents_block_managed_documents_in_unmanaged_apps=(value)
                @documents_block_managed_documents_in_unmanaged_apps = value
            end
            ## 
            ## Gets the documentsBlockUnmanagedDocumentsInManagedApps property value. Indicates whether or not to block the user from viewing unmanaged documents in managed apps.
            ## @return a boolean
            ## 
            def documents_block_unmanaged_documents_in_managed_apps
                return @documents_block_unmanaged_documents_in_managed_apps
            end
            ## 
            ## Sets the documentsBlockUnmanagedDocumentsInManagedApps property value. Indicates whether or not to block the user from viewing unmanaged documents in managed apps.
            ## @param value Value to set for the documents_block_unmanaged_documents_in_managed_apps property.
            ## @return a void
            ## 
            def documents_block_unmanaged_documents_in_managed_apps=(value)
                @documents_block_unmanaged_documents_in_managed_apps = value
            end
            ## 
            ## Gets the emailInDomainSuffixes property value. An email address lacking a suffix that matches any of these strings will be considered out-of-domain.
            ## @return a string
            ## 
            def email_in_domain_suffixes
                return @email_in_domain_suffixes
            end
            ## 
            ## Sets the emailInDomainSuffixes property value. An email address lacking a suffix that matches any of these strings will be considered out-of-domain.
            ## @param value Value to set for the email_in_domain_suffixes property.
            ## @return a void
            ## 
            def email_in_domain_suffixes=(value)
                @email_in_domain_suffixes = value
            end
            ## 
            ## Gets the enterpriseAppBlockTrust property value. Indicates whether or not to block the user from trusting an enterprise app.
            ## @return a boolean
            ## 
            def enterprise_app_block_trust
                return @enterprise_app_block_trust
            end
            ## 
            ## Sets the enterpriseAppBlockTrust property value. Indicates whether or not to block the user from trusting an enterprise app.
            ## @param value Value to set for the enterprise_app_block_trust property.
            ## @return a void
            ## 
            def enterprise_app_block_trust=(value)
                @enterprise_app_block_trust = value
            end
            ## 
            ## Gets the enterpriseAppBlockTrustModification property value. [Deprecated] Configuring this setting and setting the value to 'true' has no effect on the device.
            ## @return a boolean
            ## 
            def enterprise_app_block_trust_modification
                return @enterprise_app_block_trust_modification
            end
            ## 
            ## Sets the enterpriseAppBlockTrustModification property value. [Deprecated] Configuring this setting and setting the value to 'true' has no effect on the device.
            ## @param value Value to set for the enterprise_app_block_trust_modification property.
            ## @return a void
            ## 
            def enterprise_app_block_trust_modification=(value)
                @enterprise_app_block_trust_modification = value
            end
            ## 
            ## Gets the faceTimeBlocked property value. Indicates whether or not to block the user from using FaceTime. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def face_time_blocked
                return @face_time_blocked
            end
            ## 
            ## Sets the faceTimeBlocked property value. Indicates whether or not to block the user from using FaceTime. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the face_time_blocked property.
            ## @return a void
            ## 
            def face_time_blocked=(value)
                @face_time_blocked = value
            end
            ## 
            ## Gets the findMyFriendsBlocked property value. Indicates whether or not to block changes to Find My Friends when the device is in supervised mode.
            ## @return a boolean
            ## 
            def find_my_friends_blocked
                return @find_my_friends_blocked
            end
            ## 
            ## Sets the findMyFriendsBlocked property value. Indicates whether or not to block changes to Find My Friends when the device is in supervised mode.
            ## @param value Value to set for the find_my_friends_blocked property.
            ## @return a void
            ## 
            def find_my_friends_blocked=(value)
                @find_my_friends_blocked = value
            end
            ## 
            ## Gets the gameCenterBlocked property value. Indicates whether or not to block the user from using Game Center when the device is in supervised mode.
            ## @return a boolean
            ## 
            def game_center_blocked
                return @game_center_blocked
            end
            ## 
            ## Sets the gameCenterBlocked property value. Indicates whether or not to block the user from using Game Center when the device is in supervised mode.
            ## @param value Value to set for the game_center_blocked property.
            ## @return a void
            ## 
            def game_center_blocked=(value)
                @game_center_blocked = value
            end
            ## 
            ## Gets the gamingBlockGameCenterFriends property value. Indicates whether or not to block the user from having friends in Game Center. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def gaming_block_game_center_friends
                return @gaming_block_game_center_friends
            end
            ## 
            ## Sets the gamingBlockGameCenterFriends property value. Indicates whether or not to block the user from having friends in Game Center. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the gaming_block_game_center_friends property.
            ## @return a void
            ## 
            def gaming_block_game_center_friends=(value)
                @gaming_block_game_center_friends = value
            end
            ## 
            ## Gets the gamingBlockMultiplayer property value. Indicates whether or not to block the user from using multiplayer gaming. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def gaming_block_multiplayer
                return @gaming_block_multiplayer
            end
            ## 
            ## Sets the gamingBlockMultiplayer property value. Indicates whether or not to block the user from using multiplayer gaming. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the gaming_block_multiplayer property.
            ## @return a void
            ## 
            def gaming_block_multiplayer=(value)
                @gaming_block_multiplayer = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountBlockModification" => lambda {|n| @account_block_modification = n.get_boolean_value() },
                    "activationLockAllowWhenSupervised" => lambda {|n| @activation_lock_allow_when_supervised = n.get_boolean_value() },
                    "airDropBlocked" => lambda {|n| @air_drop_blocked = n.get_boolean_value() },
                    "airDropForceUnmanagedDropTarget" => lambda {|n| @air_drop_force_unmanaged_drop_target = n.get_boolean_value() },
                    "airPlayForcePairingPasswordForOutgoingRequests" => lambda {|n| @air_play_force_pairing_password_for_outgoing_requests = n.get_boolean_value() },
                    "appStoreBlockAutomaticDownloads" => lambda {|n| @app_store_block_automatic_downloads = n.get_boolean_value() },
                    "appStoreBlockInAppPurchases" => lambda {|n| @app_store_block_in_app_purchases = n.get_boolean_value() },
                    "appStoreBlockUIAppInstallation" => lambda {|n| @app_store_block_u_i_app_installation = n.get_boolean_value() },
                    "appStoreBlocked" => lambda {|n| @app_store_blocked = n.get_boolean_value() },
                    "appStoreRequirePassword" => lambda {|n| @app_store_require_password = n.get_boolean_value() },
                    "appleNewsBlocked" => lambda {|n| @apple_news_blocked = n.get_boolean_value() },
                    "appleWatchBlockPairing" => lambda {|n| @apple_watch_block_pairing = n.get_boolean_value() },
                    "appleWatchForceWristDetection" => lambda {|n| @apple_watch_force_wrist_detection = n.get_boolean_value() },
                    "appsSingleAppModeList" => lambda {|n| @apps_single_app_mode_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "appsVisibilityList" => lambda {|n| @apps_visibility_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "appsVisibilityListType" => lambda {|n| @apps_visibility_list_type = n.get_enum_value(MicrosoftGraph::Models::AppListType) },
                    "bluetoothBlockModification" => lambda {|n| @bluetooth_block_modification = n.get_boolean_value() },
                    "cameraBlocked" => lambda {|n| @camera_blocked = n.get_boolean_value() },
                    "cellularBlockDataRoaming" => lambda {|n| @cellular_block_data_roaming = n.get_boolean_value() },
                    "cellularBlockGlobalBackgroundFetchWhileRoaming" => lambda {|n| @cellular_block_global_background_fetch_while_roaming = n.get_boolean_value() },
                    "cellularBlockPerAppDataModification" => lambda {|n| @cellular_block_per_app_data_modification = n.get_boolean_value() },
                    "cellularBlockPersonalHotspot" => lambda {|n| @cellular_block_personal_hotspot = n.get_boolean_value() },
                    "cellularBlockVoiceRoaming" => lambda {|n| @cellular_block_voice_roaming = n.get_boolean_value() },
                    "certificatesBlockUntrustedTlsCertificates" => lambda {|n| @certificates_block_untrusted_tls_certificates = n.get_boolean_value() },
                    "classroomAppBlockRemoteScreenObservation" => lambda {|n| @classroom_app_block_remote_screen_observation = n.get_boolean_value() },
                    "classroomAppForceUnpromptedScreenObservation" => lambda {|n| @classroom_app_force_unprompted_screen_observation = n.get_boolean_value() },
                    "compliantAppListType" => lambda {|n| @compliant_app_list_type = n.get_enum_value(MicrosoftGraph::Models::AppListType) },
                    "compliantAppsList" => lambda {|n| @compliant_apps_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "configurationProfileBlockChanges" => lambda {|n| @configuration_profile_block_changes = n.get_boolean_value() },
                    "definitionLookupBlocked" => lambda {|n| @definition_lookup_blocked = n.get_boolean_value() },
                    "deviceBlockEnableRestrictions" => lambda {|n| @device_block_enable_restrictions = n.get_boolean_value() },
                    "deviceBlockEraseContentAndSettings" => lambda {|n| @device_block_erase_content_and_settings = n.get_boolean_value() },
                    "deviceBlockNameModification" => lambda {|n| @device_block_name_modification = n.get_boolean_value() },
                    "diagnosticDataBlockSubmission" => lambda {|n| @diagnostic_data_block_submission = n.get_boolean_value() },
                    "diagnosticDataBlockSubmissionModification" => lambda {|n| @diagnostic_data_block_submission_modification = n.get_boolean_value() },
                    "documentsBlockManagedDocumentsInUnmanagedApps" => lambda {|n| @documents_block_managed_documents_in_unmanaged_apps = n.get_boolean_value() },
                    "documentsBlockUnmanagedDocumentsInManagedApps" => lambda {|n| @documents_block_unmanaged_documents_in_managed_apps = n.get_boolean_value() },
                    "emailInDomainSuffixes" => lambda {|n| @email_in_domain_suffixes = n.get_collection_of_primitive_values(String) },
                    "enterpriseAppBlockTrust" => lambda {|n| @enterprise_app_block_trust = n.get_boolean_value() },
                    "enterpriseAppBlockTrustModification" => lambda {|n| @enterprise_app_block_trust_modification = n.get_boolean_value() },
                    "faceTimeBlocked" => lambda {|n| @face_time_blocked = n.get_boolean_value() },
                    "findMyFriendsBlocked" => lambda {|n| @find_my_friends_blocked = n.get_boolean_value() },
                    "gameCenterBlocked" => lambda {|n| @game_center_blocked = n.get_boolean_value() },
                    "gamingBlockGameCenterFriends" => lambda {|n| @gaming_block_game_center_friends = n.get_boolean_value() },
                    "gamingBlockMultiplayer" => lambda {|n| @gaming_block_multiplayer = n.get_boolean_value() },
                    "hostPairingBlocked" => lambda {|n| @host_pairing_blocked = n.get_boolean_value() },
                    "iBooksStoreBlockErotica" => lambda {|n| @i_books_store_block_erotica = n.get_boolean_value() },
                    "iBooksStoreBlocked" => lambda {|n| @i_books_store_blocked = n.get_boolean_value() },
                    "iCloudBlockActivityContinuation" => lambda {|n| @i_cloud_block_activity_continuation = n.get_boolean_value() },
                    "iCloudBlockBackup" => lambda {|n| @i_cloud_block_backup = n.get_boolean_value() },
                    "iCloudBlockDocumentSync" => lambda {|n| @i_cloud_block_document_sync = n.get_boolean_value() },
                    "iCloudBlockManagedAppsSync" => lambda {|n| @i_cloud_block_managed_apps_sync = n.get_boolean_value() },
                    "iCloudBlockPhotoLibrary" => lambda {|n| @i_cloud_block_photo_library = n.get_boolean_value() },
                    "iCloudBlockPhotoStreamSync" => lambda {|n| @i_cloud_block_photo_stream_sync = n.get_boolean_value() },
                    "iCloudBlockSharedPhotoStream" => lambda {|n| @i_cloud_block_shared_photo_stream = n.get_boolean_value() },
                    "iCloudRequireEncryptedBackup" => lambda {|n| @i_cloud_require_encrypted_backup = n.get_boolean_value() },
                    "iTunesBlockExplicitContent" => lambda {|n| @i_tunes_block_explicit_content = n.get_boolean_value() },
                    "iTunesBlockMusicService" => lambda {|n| @i_tunes_block_music_service = n.get_boolean_value() },
                    "iTunesBlockRadio" => lambda {|n| @i_tunes_block_radio = n.get_boolean_value() },
                    "keyboardBlockAutoCorrect" => lambda {|n| @keyboard_block_auto_correct = n.get_boolean_value() },
                    "keyboardBlockDictation" => lambda {|n| @keyboard_block_dictation = n.get_boolean_value() },
                    "keyboardBlockPredictive" => lambda {|n| @keyboard_block_predictive = n.get_boolean_value() },
                    "keyboardBlockShortcuts" => lambda {|n| @keyboard_block_shortcuts = n.get_boolean_value() },
                    "keyboardBlockSpellCheck" => lambda {|n| @keyboard_block_spell_check = n.get_boolean_value() },
                    "kioskModeAllowAssistiveSpeak" => lambda {|n| @kiosk_mode_allow_assistive_speak = n.get_boolean_value() },
                    "kioskModeAllowAssistiveTouchSettings" => lambda {|n| @kiosk_mode_allow_assistive_touch_settings = n.get_boolean_value() },
                    "kioskModeAllowAutoLock" => lambda {|n| @kiosk_mode_allow_auto_lock = n.get_boolean_value() },
                    "kioskModeAllowColorInversionSettings" => lambda {|n| @kiosk_mode_allow_color_inversion_settings = n.get_boolean_value() },
                    "kioskModeAllowRingerSwitch" => lambda {|n| @kiosk_mode_allow_ringer_switch = n.get_boolean_value() },
                    "kioskModeAllowScreenRotation" => lambda {|n| @kiosk_mode_allow_screen_rotation = n.get_boolean_value() },
                    "kioskModeAllowSleepButton" => lambda {|n| @kiosk_mode_allow_sleep_button = n.get_boolean_value() },
                    "kioskModeAllowTouchscreen" => lambda {|n| @kiosk_mode_allow_touchscreen = n.get_boolean_value() },
                    "kioskModeAllowVoiceOverSettings" => lambda {|n| @kiosk_mode_allow_voice_over_settings = n.get_boolean_value() },
                    "kioskModeAllowVolumeButtons" => lambda {|n| @kiosk_mode_allow_volume_buttons = n.get_boolean_value() },
                    "kioskModeAllowZoomSettings" => lambda {|n| @kiosk_mode_allow_zoom_settings = n.get_boolean_value() },
                    "kioskModeAppStoreUrl" => lambda {|n| @kiosk_mode_app_store_url = n.get_string_value() },
                    "kioskModeBuiltInAppId" => lambda {|n| @kiosk_mode_built_in_app_id = n.get_string_value() },
                    "kioskModeManagedAppId" => lambda {|n| @kiosk_mode_managed_app_id = n.get_string_value() },
                    "kioskModeRequireAssistiveTouch" => lambda {|n| @kiosk_mode_require_assistive_touch = n.get_boolean_value() },
                    "kioskModeRequireColorInversion" => lambda {|n| @kiosk_mode_require_color_inversion = n.get_boolean_value() },
                    "kioskModeRequireMonoAudio" => lambda {|n| @kiosk_mode_require_mono_audio = n.get_boolean_value() },
                    "kioskModeRequireVoiceOver" => lambda {|n| @kiosk_mode_require_voice_over = n.get_boolean_value() },
                    "kioskModeRequireZoom" => lambda {|n| @kiosk_mode_require_zoom = n.get_boolean_value() },
                    "lockScreenBlockControlCenter" => lambda {|n| @lock_screen_block_control_center = n.get_boolean_value() },
                    "lockScreenBlockNotificationView" => lambda {|n| @lock_screen_block_notification_view = n.get_boolean_value() },
                    "lockScreenBlockPassbook" => lambda {|n| @lock_screen_block_passbook = n.get_boolean_value() },
                    "lockScreenBlockTodayView" => lambda {|n| @lock_screen_block_today_view = n.get_boolean_value() },
                    "mediaContentRatingApps" => lambda {|n| @media_content_rating_apps = n.get_enum_value(MicrosoftGraph::Models::RatingAppsType) },
                    "mediaContentRatingAustralia" => lambda {|n| @media_content_rating_australia = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingAustralia.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingCanada" => lambda {|n| @media_content_rating_canada = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingCanada.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingFrance" => lambda {|n| @media_content_rating_france = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingFrance.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingGermany" => lambda {|n| @media_content_rating_germany = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingGermany.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingIreland" => lambda {|n| @media_content_rating_ireland = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingIreland.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingJapan" => lambda {|n| @media_content_rating_japan = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingJapan.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingNewZealand" => lambda {|n| @media_content_rating_new_zealand = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingNewZealand.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingUnitedKingdom" => lambda {|n| @media_content_rating_united_kingdom = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingUnitedKingdom.create_from_discriminator_value(pn) }) },
                    "mediaContentRatingUnitedStates" => lambda {|n| @media_content_rating_united_states = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MediaContentRatingUnitedStates.create_from_discriminator_value(pn) }) },
                    "messagesBlocked" => lambda {|n| @messages_blocked = n.get_boolean_value() },
                    "networkUsageRules" => lambda {|n| @network_usage_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IosNetworkUsageRule.create_from_discriminator_value(pn) }) },
                    "notificationsBlockSettingsModification" => lambda {|n| @notifications_block_settings_modification = n.get_boolean_value() },
                    "passcodeBlockFingerprintModification" => lambda {|n| @passcode_block_fingerprint_modification = n.get_boolean_value() },
                    "passcodeBlockFingerprintUnlock" => lambda {|n| @passcode_block_fingerprint_unlock = n.get_boolean_value() },
                    "passcodeBlockModification" => lambda {|n| @passcode_block_modification = n.get_boolean_value() },
                    "passcodeBlockSimple" => lambda {|n| @passcode_block_simple = n.get_boolean_value() },
                    "passcodeExpirationDays" => lambda {|n| @passcode_expiration_days = n.get_number_value() },
                    "passcodeMinimumCharacterSetCount" => lambda {|n| @passcode_minimum_character_set_count = n.get_number_value() },
                    "passcodeMinimumLength" => lambda {|n| @passcode_minimum_length = n.get_number_value() },
                    "passcodeMinutesOfInactivityBeforeLock" => lambda {|n| @passcode_minutes_of_inactivity_before_lock = n.get_number_value() },
                    "passcodeMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @passcode_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passcodePreviousPasscodeBlockCount" => lambda {|n| @passcode_previous_passcode_block_count = n.get_number_value() },
                    "passcodeRequired" => lambda {|n| @passcode_required = n.get_boolean_value() },
                    "passcodeRequiredType" => lambda {|n| @passcode_required_type = n.get_enum_value(MicrosoftGraph::Models::RequiredPasswordType) },
                    "passcodeSignInFailureCountBeforeWipe" => lambda {|n| @passcode_sign_in_failure_count_before_wipe = n.get_number_value() },
                    "podcastsBlocked" => lambda {|n| @podcasts_blocked = n.get_boolean_value() },
                    "safariBlockAutofill" => lambda {|n| @safari_block_autofill = n.get_boolean_value() },
                    "safariBlockJavaScript" => lambda {|n| @safari_block_java_script = n.get_boolean_value() },
                    "safariBlockPopups" => lambda {|n| @safari_block_popups = n.get_boolean_value() },
                    "safariBlocked" => lambda {|n| @safari_blocked = n.get_boolean_value() },
                    "safariCookieSettings" => lambda {|n| @safari_cookie_settings = n.get_enum_value(MicrosoftGraph::Models::WebBrowserCookieSettings) },
                    "safariManagedDomains" => lambda {|n| @safari_managed_domains = n.get_collection_of_primitive_values(String) },
                    "safariPasswordAutoFillDomains" => lambda {|n| @safari_password_auto_fill_domains = n.get_collection_of_primitive_values(String) },
                    "safariRequireFraudWarning" => lambda {|n| @safari_require_fraud_warning = n.get_boolean_value() },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "siriBlockUserGeneratedContent" => lambda {|n| @siri_block_user_generated_content = n.get_boolean_value() },
                    "siriBlocked" => lambda {|n| @siri_blocked = n.get_boolean_value() },
                    "siriBlockedWhenLocked" => lambda {|n| @siri_blocked_when_locked = n.get_boolean_value() },
                    "siriRequireProfanityFilter" => lambda {|n| @siri_require_profanity_filter = n.get_boolean_value() },
                    "spotlightBlockInternetResults" => lambda {|n| @spotlight_block_internet_results = n.get_boolean_value() },
                    "voiceDialingBlocked" => lambda {|n| @voice_dialing_blocked = n.get_boolean_value() },
                    "wallpaperBlockModification" => lambda {|n| @wallpaper_block_modification = n.get_boolean_value() },
                    "wiFiConnectOnlyToConfiguredNetworks" => lambda {|n| @wi_fi_connect_only_to_configured_networks = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the hostPairingBlocked property value. indicates whether or not to allow host pairing to control the devices an iOS device can pair with when the iOS device is in supervised mode.
            ## @return a boolean
            ## 
            def host_pairing_blocked
                return @host_pairing_blocked
            end
            ## 
            ## Sets the hostPairingBlocked property value. indicates whether or not to allow host pairing to control the devices an iOS device can pair with when the iOS device is in supervised mode.
            ## @param value Value to set for the host_pairing_blocked property.
            ## @return a void
            ## 
            def host_pairing_blocked=(value)
                @host_pairing_blocked = value
            end
            ## 
            ## Gets the iBooksStoreBlockErotica property value. Indicates whether or not to block the user from downloading media from the iBookstore that has been tagged as erotica.
            ## @return a boolean
            ## 
            def i_books_store_block_erotica
                return @i_books_store_block_erotica
            end
            ## 
            ## Sets the iBooksStoreBlockErotica property value. Indicates whether or not to block the user from downloading media from the iBookstore that has been tagged as erotica.
            ## @param value Value to set for the i_books_store_block_erotica property.
            ## @return a void
            ## 
            def i_books_store_block_erotica=(value)
                @i_books_store_block_erotica = value
            end
            ## 
            ## Gets the iBooksStoreBlocked property value. Indicates whether or not to block the user from using the iBooks Store when the device is in supervised mode.
            ## @return a boolean
            ## 
            def i_books_store_blocked
                return @i_books_store_blocked
            end
            ## 
            ## Sets the iBooksStoreBlocked property value. Indicates whether or not to block the user from using the iBooks Store when the device is in supervised mode.
            ## @param value Value to set for the i_books_store_blocked property.
            ## @return a void
            ## 
            def i_books_store_blocked=(value)
                @i_books_store_blocked = value
            end
            ## 
            ## Gets the iCloudBlockActivityContinuation property value. Indicates whether or not to block the user from continuing work they started on iOS device to another iOS or macOS device.
            ## @return a boolean
            ## 
            def i_cloud_block_activity_continuation
                return @i_cloud_block_activity_continuation
            end
            ## 
            ## Sets the iCloudBlockActivityContinuation property value. Indicates whether or not to block the user from continuing work they started on iOS device to another iOS or macOS device.
            ## @param value Value to set for the i_cloud_block_activity_continuation property.
            ## @return a void
            ## 
            def i_cloud_block_activity_continuation=(value)
                @i_cloud_block_activity_continuation = value
            end
            ## 
            ## Gets the iCloudBlockBackup property value. Indicates whether or not to block iCloud backup. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def i_cloud_block_backup
                return @i_cloud_block_backup
            end
            ## 
            ## Sets the iCloudBlockBackup property value. Indicates whether or not to block iCloud backup. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the i_cloud_block_backup property.
            ## @return a void
            ## 
            def i_cloud_block_backup=(value)
                @i_cloud_block_backup = value
            end
            ## 
            ## Gets the iCloudBlockDocumentSync property value. Indicates whether or not to block iCloud document sync. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def i_cloud_block_document_sync
                return @i_cloud_block_document_sync
            end
            ## 
            ## Sets the iCloudBlockDocumentSync property value. Indicates whether or not to block iCloud document sync. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the i_cloud_block_document_sync property.
            ## @return a void
            ## 
            def i_cloud_block_document_sync=(value)
                @i_cloud_block_document_sync = value
            end
            ## 
            ## Gets the iCloudBlockManagedAppsSync property value. Indicates whether or not to block Managed Apps Cloud Sync.
            ## @return a boolean
            ## 
            def i_cloud_block_managed_apps_sync
                return @i_cloud_block_managed_apps_sync
            end
            ## 
            ## Sets the iCloudBlockManagedAppsSync property value. Indicates whether or not to block Managed Apps Cloud Sync.
            ## @param value Value to set for the i_cloud_block_managed_apps_sync property.
            ## @return a void
            ## 
            def i_cloud_block_managed_apps_sync=(value)
                @i_cloud_block_managed_apps_sync = value
            end
            ## 
            ## Gets the iCloudBlockPhotoLibrary property value. Indicates whether or not to block iCloud Photo Library.
            ## @return a boolean
            ## 
            def i_cloud_block_photo_library
                return @i_cloud_block_photo_library
            end
            ## 
            ## Sets the iCloudBlockPhotoLibrary property value. Indicates whether or not to block iCloud Photo Library.
            ## @param value Value to set for the i_cloud_block_photo_library property.
            ## @return a void
            ## 
            def i_cloud_block_photo_library=(value)
                @i_cloud_block_photo_library = value
            end
            ## 
            ## Gets the iCloudBlockPhotoStreamSync property value. Indicates whether or not to block iCloud Photo Stream Sync.
            ## @return a boolean
            ## 
            def i_cloud_block_photo_stream_sync
                return @i_cloud_block_photo_stream_sync
            end
            ## 
            ## Sets the iCloudBlockPhotoStreamSync property value. Indicates whether or not to block iCloud Photo Stream Sync.
            ## @param value Value to set for the i_cloud_block_photo_stream_sync property.
            ## @return a void
            ## 
            def i_cloud_block_photo_stream_sync=(value)
                @i_cloud_block_photo_stream_sync = value
            end
            ## 
            ## Gets the iCloudBlockSharedPhotoStream property value. Indicates whether or not to block Shared Photo Stream.
            ## @return a boolean
            ## 
            def i_cloud_block_shared_photo_stream
                return @i_cloud_block_shared_photo_stream
            end
            ## 
            ## Sets the iCloudBlockSharedPhotoStream property value. Indicates whether or not to block Shared Photo Stream.
            ## @param value Value to set for the i_cloud_block_shared_photo_stream property.
            ## @return a void
            ## 
            def i_cloud_block_shared_photo_stream=(value)
                @i_cloud_block_shared_photo_stream = value
            end
            ## 
            ## Gets the iCloudRequireEncryptedBackup property value. Indicates whether or not to require backups to iCloud be encrypted.
            ## @return a boolean
            ## 
            def i_cloud_require_encrypted_backup
                return @i_cloud_require_encrypted_backup
            end
            ## 
            ## Sets the iCloudRequireEncryptedBackup property value. Indicates whether or not to require backups to iCloud be encrypted.
            ## @param value Value to set for the i_cloud_require_encrypted_backup property.
            ## @return a void
            ## 
            def i_cloud_require_encrypted_backup=(value)
                @i_cloud_require_encrypted_backup = value
            end
            ## 
            ## Gets the iTunesBlockExplicitContent property value. Indicates whether or not to block the user from accessing explicit content in iTunes and the App Store. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def i_tunes_block_explicit_content
                return @i_tunes_block_explicit_content
            end
            ## 
            ## Sets the iTunesBlockExplicitContent property value. Indicates whether or not to block the user from accessing explicit content in iTunes and the App Store. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the i_tunes_block_explicit_content property.
            ## @return a void
            ## 
            def i_tunes_block_explicit_content=(value)
                @i_tunes_block_explicit_content = value
            end
            ## 
            ## Gets the iTunesBlockMusicService property value. Indicates whether or not to block Music service and revert Music app to classic mode when the device is in supervised mode (iOS 9.3 and later and macOS 10.12 and later).
            ## @return a boolean
            ## 
            def i_tunes_block_music_service
                return @i_tunes_block_music_service
            end
            ## 
            ## Sets the iTunesBlockMusicService property value. Indicates whether or not to block Music service and revert Music app to classic mode when the device is in supervised mode (iOS 9.3 and later and macOS 10.12 and later).
            ## @param value Value to set for the i_tunes_block_music_service property.
            ## @return a void
            ## 
            def i_tunes_block_music_service=(value)
                @i_tunes_block_music_service = value
            end
            ## 
            ## Gets the iTunesBlockRadio property value. Indicates whether or not to block the user from using iTunes Radio when the device is in supervised mode (iOS 9.3 and later).
            ## @return a boolean
            ## 
            def i_tunes_block_radio
                return @i_tunes_block_radio
            end
            ## 
            ## Sets the iTunesBlockRadio property value. Indicates whether or not to block the user from using iTunes Radio when the device is in supervised mode (iOS 9.3 and later).
            ## @param value Value to set for the i_tunes_block_radio property.
            ## @return a void
            ## 
            def i_tunes_block_radio=(value)
                @i_tunes_block_radio = value
            end
            ## 
            ## Gets the keyboardBlockAutoCorrect property value. Indicates whether or not to block keyboard auto-correction when the device is in supervised mode (iOS 8.1.3 and later).
            ## @return a boolean
            ## 
            def keyboard_block_auto_correct
                return @keyboard_block_auto_correct
            end
            ## 
            ## Sets the keyboardBlockAutoCorrect property value. Indicates whether or not to block keyboard auto-correction when the device is in supervised mode (iOS 8.1.3 and later).
            ## @param value Value to set for the keyboard_block_auto_correct property.
            ## @return a void
            ## 
            def keyboard_block_auto_correct=(value)
                @keyboard_block_auto_correct = value
            end
            ## 
            ## Gets the keyboardBlockDictation property value. Indicates whether or not to block the user from using dictation input when the device is in supervised mode.
            ## @return a boolean
            ## 
            def keyboard_block_dictation
                return @keyboard_block_dictation
            end
            ## 
            ## Sets the keyboardBlockDictation property value. Indicates whether or not to block the user from using dictation input when the device is in supervised mode.
            ## @param value Value to set for the keyboard_block_dictation property.
            ## @return a void
            ## 
            def keyboard_block_dictation=(value)
                @keyboard_block_dictation = value
            end
            ## 
            ## Gets the keyboardBlockPredictive property value. Indicates whether or not to block predictive keyboards when device is in supervised mode (iOS 8.1.3 and later).
            ## @return a boolean
            ## 
            def keyboard_block_predictive
                return @keyboard_block_predictive
            end
            ## 
            ## Sets the keyboardBlockPredictive property value. Indicates whether or not to block predictive keyboards when device is in supervised mode (iOS 8.1.3 and later).
            ## @param value Value to set for the keyboard_block_predictive property.
            ## @return a void
            ## 
            def keyboard_block_predictive=(value)
                @keyboard_block_predictive = value
            end
            ## 
            ## Gets the keyboardBlockShortcuts property value. Indicates whether or not to block keyboard shortcuts when the device is in supervised mode (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def keyboard_block_shortcuts
                return @keyboard_block_shortcuts
            end
            ## 
            ## Sets the keyboardBlockShortcuts property value. Indicates whether or not to block keyboard shortcuts when the device is in supervised mode (iOS 9.0 and later).
            ## @param value Value to set for the keyboard_block_shortcuts property.
            ## @return a void
            ## 
            def keyboard_block_shortcuts=(value)
                @keyboard_block_shortcuts = value
            end
            ## 
            ## Gets the keyboardBlockSpellCheck property value. Indicates whether or not to block keyboard spell-checking when the device is in supervised mode (iOS 8.1.3 and later).
            ## @return a boolean
            ## 
            def keyboard_block_spell_check
                return @keyboard_block_spell_check
            end
            ## 
            ## Sets the keyboardBlockSpellCheck property value. Indicates whether or not to block keyboard spell-checking when the device is in supervised mode (iOS 8.1.3 and later).
            ## @param value Value to set for the keyboard_block_spell_check property.
            ## @return a void
            ## 
            def keyboard_block_spell_check=(value)
                @keyboard_block_spell_check = value
            end
            ## 
            ## Gets the kioskModeAllowAssistiveSpeak property value. Indicates whether or not to allow assistive speak while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_assistive_speak
                return @kiosk_mode_allow_assistive_speak
            end
            ## 
            ## Sets the kioskModeAllowAssistiveSpeak property value. Indicates whether or not to allow assistive speak while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_allow_assistive_speak property.
            ## @return a void
            ## 
            def kiosk_mode_allow_assistive_speak=(value)
                @kiosk_mode_allow_assistive_speak = value
            end
            ## 
            ## Gets the kioskModeAllowAssistiveTouchSettings property value. Indicates whether or not to allow access to the Assistive Touch Settings while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_assistive_touch_settings
                return @kiosk_mode_allow_assistive_touch_settings
            end
            ## 
            ## Sets the kioskModeAllowAssistiveTouchSettings property value. Indicates whether or not to allow access to the Assistive Touch Settings while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_allow_assistive_touch_settings property.
            ## @return a void
            ## 
            def kiosk_mode_allow_assistive_touch_settings=(value)
                @kiosk_mode_allow_assistive_touch_settings = value
            end
            ## 
            ## Gets the kioskModeAllowAutoLock property value. Indicates whether or not to allow device auto lock while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockAutoLock instead.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_auto_lock
                return @kiosk_mode_allow_auto_lock
            end
            ## 
            ## Sets the kioskModeAllowAutoLock property value. Indicates whether or not to allow device auto lock while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockAutoLock instead.
            ## @param value Value to set for the kiosk_mode_allow_auto_lock property.
            ## @return a void
            ## 
            def kiosk_mode_allow_auto_lock=(value)
                @kiosk_mode_allow_auto_lock = value
            end
            ## 
            ## Gets the kioskModeAllowColorInversionSettings property value. Indicates whether or not to allow access to the Color Inversion Settings while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_color_inversion_settings
                return @kiosk_mode_allow_color_inversion_settings
            end
            ## 
            ## Sets the kioskModeAllowColorInversionSettings property value. Indicates whether or not to allow access to the Color Inversion Settings while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_allow_color_inversion_settings property.
            ## @return a void
            ## 
            def kiosk_mode_allow_color_inversion_settings=(value)
                @kiosk_mode_allow_color_inversion_settings = value
            end
            ## 
            ## Gets the kioskModeAllowRingerSwitch property value. Indicates whether or not to allow use of the ringer switch while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockRingerSwitch instead.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_ringer_switch
                return @kiosk_mode_allow_ringer_switch
            end
            ## 
            ## Sets the kioskModeAllowRingerSwitch property value. Indicates whether or not to allow use of the ringer switch while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockRingerSwitch instead.
            ## @param value Value to set for the kiosk_mode_allow_ringer_switch property.
            ## @return a void
            ## 
            def kiosk_mode_allow_ringer_switch=(value)
                @kiosk_mode_allow_ringer_switch = value
            end
            ## 
            ## Gets the kioskModeAllowScreenRotation property value. Indicates whether or not to allow screen rotation while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockScreenRotation instead.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_screen_rotation
                return @kiosk_mode_allow_screen_rotation
            end
            ## 
            ## Sets the kioskModeAllowScreenRotation property value. Indicates whether or not to allow screen rotation while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockScreenRotation instead.
            ## @param value Value to set for the kiosk_mode_allow_screen_rotation property.
            ## @return a void
            ## 
            def kiosk_mode_allow_screen_rotation=(value)
                @kiosk_mode_allow_screen_rotation = value
            end
            ## 
            ## Gets the kioskModeAllowSleepButton property value. Indicates whether or not to allow use of the sleep button while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockSleepButton instead.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_sleep_button
                return @kiosk_mode_allow_sleep_button
            end
            ## 
            ## Sets the kioskModeAllowSleepButton property value. Indicates whether or not to allow use of the sleep button while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockSleepButton instead.
            ## @param value Value to set for the kiosk_mode_allow_sleep_button property.
            ## @return a void
            ## 
            def kiosk_mode_allow_sleep_button=(value)
                @kiosk_mode_allow_sleep_button = value
            end
            ## 
            ## Gets the kioskModeAllowTouchscreen property value. Indicates whether or not to allow use of the touchscreen while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockTouchscreen instead.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_touchscreen
                return @kiosk_mode_allow_touchscreen
            end
            ## 
            ## Sets the kioskModeAllowTouchscreen property value. Indicates whether or not to allow use of the touchscreen while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockTouchscreen instead.
            ## @param value Value to set for the kiosk_mode_allow_touchscreen property.
            ## @return a void
            ## 
            def kiosk_mode_allow_touchscreen=(value)
                @kiosk_mode_allow_touchscreen = value
            end
            ## 
            ## Gets the kioskModeAllowVoiceOverSettings property value. Indicates whether or not to allow access to the voice over settings while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_voice_over_settings
                return @kiosk_mode_allow_voice_over_settings
            end
            ## 
            ## Sets the kioskModeAllowVoiceOverSettings property value. Indicates whether or not to allow access to the voice over settings while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_allow_voice_over_settings property.
            ## @return a void
            ## 
            def kiosk_mode_allow_voice_over_settings=(value)
                @kiosk_mode_allow_voice_over_settings = value
            end
            ## 
            ## Gets the kioskModeAllowVolumeButtons property value. Indicates whether or not to allow use of the volume buttons while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockVolumeButtons instead.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_volume_buttons
                return @kiosk_mode_allow_volume_buttons
            end
            ## 
            ## Sets the kioskModeAllowVolumeButtons property value. Indicates whether or not to allow use of the volume buttons while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockVolumeButtons instead.
            ## @param value Value to set for the kiosk_mode_allow_volume_buttons property.
            ## @return a void
            ## 
            def kiosk_mode_allow_volume_buttons=(value)
                @kiosk_mode_allow_volume_buttons = value
            end
            ## 
            ## Gets the kioskModeAllowZoomSettings property value. Indicates whether or not to allow access to the zoom settings while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_allow_zoom_settings
                return @kiosk_mode_allow_zoom_settings
            end
            ## 
            ## Sets the kioskModeAllowZoomSettings property value. Indicates whether or not to allow access to the zoom settings while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_allow_zoom_settings property.
            ## @return a void
            ## 
            def kiosk_mode_allow_zoom_settings=(value)
                @kiosk_mode_allow_zoom_settings = value
            end
            ## 
            ## Gets the kioskModeAppStoreUrl property value. URL in the app store to the app to use for kiosk mode. Use if KioskModeManagedAppId is not known.
            ## @return a string
            ## 
            def kiosk_mode_app_store_url
                return @kiosk_mode_app_store_url
            end
            ## 
            ## Sets the kioskModeAppStoreUrl property value. URL in the app store to the app to use for kiosk mode. Use if KioskModeManagedAppId is not known.
            ## @param value Value to set for the kiosk_mode_app_store_url property.
            ## @return a void
            ## 
            def kiosk_mode_app_store_url=(value)
                @kiosk_mode_app_store_url = value
            end
            ## 
            ## Gets the kioskModeBuiltInAppId property value. ID for built-in apps to use for kiosk mode. Used when KioskModeManagedAppId and KioskModeAppStoreUrl are not set.
            ## @return a string
            ## 
            def kiosk_mode_built_in_app_id
                return @kiosk_mode_built_in_app_id
            end
            ## 
            ## Sets the kioskModeBuiltInAppId property value. ID for built-in apps to use for kiosk mode. Used when KioskModeManagedAppId and KioskModeAppStoreUrl are not set.
            ## @param value Value to set for the kiosk_mode_built_in_app_id property.
            ## @return a void
            ## 
            def kiosk_mode_built_in_app_id=(value)
                @kiosk_mode_built_in_app_id = value
            end
            ## 
            ## Gets the kioskModeManagedAppId property value. Managed app id of the app to use for kiosk mode. If KioskModeManagedAppId is specified then KioskModeAppStoreUrl will be ignored.
            ## @return a string
            ## 
            def kiosk_mode_managed_app_id
                return @kiosk_mode_managed_app_id
            end
            ## 
            ## Sets the kioskModeManagedAppId property value. Managed app id of the app to use for kiosk mode. If KioskModeManagedAppId is specified then KioskModeAppStoreUrl will be ignored.
            ## @param value Value to set for the kiosk_mode_managed_app_id property.
            ## @return a void
            ## 
            def kiosk_mode_managed_app_id=(value)
                @kiosk_mode_managed_app_id = value
            end
            ## 
            ## Gets the kioskModeRequireAssistiveTouch property value. Indicates whether or not to require assistive touch while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_require_assistive_touch
                return @kiosk_mode_require_assistive_touch
            end
            ## 
            ## Sets the kioskModeRequireAssistiveTouch property value. Indicates whether or not to require assistive touch while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_require_assistive_touch property.
            ## @return a void
            ## 
            def kiosk_mode_require_assistive_touch=(value)
                @kiosk_mode_require_assistive_touch = value
            end
            ## 
            ## Gets the kioskModeRequireColorInversion property value. Indicates whether or not to require color inversion while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_require_color_inversion
                return @kiosk_mode_require_color_inversion
            end
            ## 
            ## Sets the kioskModeRequireColorInversion property value. Indicates whether or not to require color inversion while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_require_color_inversion property.
            ## @return a void
            ## 
            def kiosk_mode_require_color_inversion=(value)
                @kiosk_mode_require_color_inversion = value
            end
            ## 
            ## Gets the kioskModeRequireMonoAudio property value. Indicates whether or not to require mono audio while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_require_mono_audio
                return @kiosk_mode_require_mono_audio
            end
            ## 
            ## Sets the kioskModeRequireMonoAudio property value. Indicates whether or not to require mono audio while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_require_mono_audio property.
            ## @return a void
            ## 
            def kiosk_mode_require_mono_audio=(value)
                @kiosk_mode_require_mono_audio = value
            end
            ## 
            ## Gets the kioskModeRequireVoiceOver property value. Indicates whether or not to require voice over while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_require_voice_over
                return @kiosk_mode_require_voice_over
            end
            ## 
            ## Sets the kioskModeRequireVoiceOver property value. Indicates whether or not to require voice over while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_require_voice_over property.
            ## @return a void
            ## 
            def kiosk_mode_require_voice_over=(value)
                @kiosk_mode_require_voice_over = value
            end
            ## 
            ## Gets the kioskModeRequireZoom property value. Indicates whether or not to require zoom while in kiosk mode.
            ## @return a boolean
            ## 
            def kiosk_mode_require_zoom
                return @kiosk_mode_require_zoom
            end
            ## 
            ## Sets the kioskModeRequireZoom property value. Indicates whether or not to require zoom while in kiosk mode.
            ## @param value Value to set for the kiosk_mode_require_zoom property.
            ## @return a void
            ## 
            def kiosk_mode_require_zoom=(value)
                @kiosk_mode_require_zoom = value
            end
            ## 
            ## Gets the lockScreenBlockControlCenter property value. Indicates whether or not to block the user from using control center on the lock screen.
            ## @return a boolean
            ## 
            def lock_screen_block_control_center
                return @lock_screen_block_control_center
            end
            ## 
            ## Sets the lockScreenBlockControlCenter property value. Indicates whether or not to block the user from using control center on the lock screen.
            ## @param value Value to set for the lock_screen_block_control_center property.
            ## @return a void
            ## 
            def lock_screen_block_control_center=(value)
                @lock_screen_block_control_center = value
            end
            ## 
            ## Gets the lockScreenBlockNotificationView property value. Indicates whether or not to block the user from using the notification view on the lock screen.
            ## @return a boolean
            ## 
            def lock_screen_block_notification_view
                return @lock_screen_block_notification_view
            end
            ## 
            ## Sets the lockScreenBlockNotificationView property value. Indicates whether or not to block the user from using the notification view on the lock screen.
            ## @param value Value to set for the lock_screen_block_notification_view property.
            ## @return a void
            ## 
            def lock_screen_block_notification_view=(value)
                @lock_screen_block_notification_view = value
            end
            ## 
            ## Gets the lockScreenBlockPassbook property value. Indicates whether or not to block the user from using passbook when the device is locked.
            ## @return a boolean
            ## 
            def lock_screen_block_passbook
                return @lock_screen_block_passbook
            end
            ## 
            ## Sets the lockScreenBlockPassbook property value. Indicates whether or not to block the user from using passbook when the device is locked.
            ## @param value Value to set for the lock_screen_block_passbook property.
            ## @return a void
            ## 
            def lock_screen_block_passbook=(value)
                @lock_screen_block_passbook = value
            end
            ## 
            ## Gets the lockScreenBlockTodayView property value. Indicates whether or not to block the user from using the Today View on the lock screen.
            ## @return a boolean
            ## 
            def lock_screen_block_today_view
                return @lock_screen_block_today_view
            end
            ## 
            ## Sets the lockScreenBlockTodayView property value. Indicates whether or not to block the user from using the Today View on the lock screen.
            ## @param value Value to set for the lock_screen_block_today_view property.
            ## @return a void
            ## 
            def lock_screen_block_today_view=(value)
                @lock_screen_block_today_view = value
            end
            ## 
            ## Gets the mediaContentRatingApps property value. Apps rating as in media content
            ## @return a rating_apps_type
            ## 
            def media_content_rating_apps
                return @media_content_rating_apps
            end
            ## 
            ## Sets the mediaContentRatingApps property value. Apps rating as in media content
            ## @param value Value to set for the media_content_rating_apps property.
            ## @return a void
            ## 
            def media_content_rating_apps=(value)
                @media_content_rating_apps = value
            end
            ## 
            ## Gets the mediaContentRatingAustralia property value. Media content rating settings for Australia
            ## @return a media_content_rating_australia
            ## 
            def media_content_rating_australia
                return @media_content_rating_australia
            end
            ## 
            ## Sets the mediaContentRatingAustralia property value. Media content rating settings for Australia
            ## @param value Value to set for the media_content_rating_australia property.
            ## @return a void
            ## 
            def media_content_rating_australia=(value)
                @media_content_rating_australia = value
            end
            ## 
            ## Gets the mediaContentRatingCanada property value. Media content rating settings for Canada
            ## @return a media_content_rating_canada
            ## 
            def media_content_rating_canada
                return @media_content_rating_canada
            end
            ## 
            ## Sets the mediaContentRatingCanada property value. Media content rating settings for Canada
            ## @param value Value to set for the media_content_rating_canada property.
            ## @return a void
            ## 
            def media_content_rating_canada=(value)
                @media_content_rating_canada = value
            end
            ## 
            ## Gets the mediaContentRatingFrance property value. Media content rating settings for France
            ## @return a media_content_rating_france
            ## 
            def media_content_rating_france
                return @media_content_rating_france
            end
            ## 
            ## Sets the mediaContentRatingFrance property value. Media content rating settings for France
            ## @param value Value to set for the media_content_rating_france property.
            ## @return a void
            ## 
            def media_content_rating_france=(value)
                @media_content_rating_france = value
            end
            ## 
            ## Gets the mediaContentRatingGermany property value. Media content rating settings for Germany
            ## @return a media_content_rating_germany
            ## 
            def media_content_rating_germany
                return @media_content_rating_germany
            end
            ## 
            ## Sets the mediaContentRatingGermany property value. Media content rating settings for Germany
            ## @param value Value to set for the media_content_rating_germany property.
            ## @return a void
            ## 
            def media_content_rating_germany=(value)
                @media_content_rating_germany = value
            end
            ## 
            ## Gets the mediaContentRatingIreland property value. Media content rating settings for Ireland
            ## @return a media_content_rating_ireland
            ## 
            def media_content_rating_ireland
                return @media_content_rating_ireland
            end
            ## 
            ## Sets the mediaContentRatingIreland property value. Media content rating settings for Ireland
            ## @param value Value to set for the media_content_rating_ireland property.
            ## @return a void
            ## 
            def media_content_rating_ireland=(value)
                @media_content_rating_ireland = value
            end
            ## 
            ## Gets the mediaContentRatingJapan property value. Media content rating settings for Japan
            ## @return a media_content_rating_japan
            ## 
            def media_content_rating_japan
                return @media_content_rating_japan
            end
            ## 
            ## Sets the mediaContentRatingJapan property value. Media content rating settings for Japan
            ## @param value Value to set for the media_content_rating_japan property.
            ## @return a void
            ## 
            def media_content_rating_japan=(value)
                @media_content_rating_japan = value
            end
            ## 
            ## Gets the mediaContentRatingNewZealand property value. Media content rating settings for New Zealand
            ## @return a media_content_rating_new_zealand
            ## 
            def media_content_rating_new_zealand
                return @media_content_rating_new_zealand
            end
            ## 
            ## Sets the mediaContentRatingNewZealand property value. Media content rating settings for New Zealand
            ## @param value Value to set for the media_content_rating_new_zealand property.
            ## @return a void
            ## 
            def media_content_rating_new_zealand=(value)
                @media_content_rating_new_zealand = value
            end
            ## 
            ## Gets the mediaContentRatingUnitedKingdom property value. Media content rating settings for United Kingdom
            ## @return a media_content_rating_united_kingdom
            ## 
            def media_content_rating_united_kingdom
                return @media_content_rating_united_kingdom
            end
            ## 
            ## Sets the mediaContentRatingUnitedKingdom property value. Media content rating settings for United Kingdom
            ## @param value Value to set for the media_content_rating_united_kingdom property.
            ## @return a void
            ## 
            def media_content_rating_united_kingdom=(value)
                @media_content_rating_united_kingdom = value
            end
            ## 
            ## Gets the mediaContentRatingUnitedStates property value. Media content rating settings for United States
            ## @return a media_content_rating_united_states
            ## 
            def media_content_rating_united_states
                return @media_content_rating_united_states
            end
            ## 
            ## Sets the mediaContentRatingUnitedStates property value. Media content rating settings for United States
            ## @param value Value to set for the media_content_rating_united_states property.
            ## @return a void
            ## 
            def media_content_rating_united_states=(value)
                @media_content_rating_united_states = value
            end
            ## 
            ## Gets the messagesBlocked property value. Indicates whether or not to block the user from using the Messages app on the supervised device.
            ## @return a boolean
            ## 
            def messages_blocked
                return @messages_blocked
            end
            ## 
            ## Sets the messagesBlocked property value. Indicates whether or not to block the user from using the Messages app on the supervised device.
            ## @param value Value to set for the messages_blocked property.
            ## @return a void
            ## 
            def messages_blocked=(value)
                @messages_blocked = value
            end
            ## 
            ## Gets the networkUsageRules property value. List of managed apps and the network rules that applies to them. This collection can contain a maximum of 1000 elements.
            ## @return a ios_network_usage_rule
            ## 
            def network_usage_rules
                return @network_usage_rules
            end
            ## 
            ## Sets the networkUsageRules property value. List of managed apps and the network rules that applies to them. This collection can contain a maximum of 1000 elements.
            ## @param value Value to set for the network_usage_rules property.
            ## @return a void
            ## 
            def network_usage_rules=(value)
                @network_usage_rules = value
            end
            ## 
            ## Gets the notificationsBlockSettingsModification property value. Indicates whether or not to allow notifications settings modification (iOS 9.3 and later).
            ## @return a boolean
            ## 
            def notifications_block_settings_modification
                return @notifications_block_settings_modification
            end
            ## 
            ## Sets the notificationsBlockSettingsModification property value. Indicates whether or not to allow notifications settings modification (iOS 9.3 and later).
            ## @param value Value to set for the notifications_block_settings_modification property.
            ## @return a void
            ## 
            def notifications_block_settings_modification=(value)
                @notifications_block_settings_modification = value
            end
            ## 
            ## Gets the passcodeBlockFingerprintModification property value. Block modification of registered Touch ID fingerprints when in supervised mode.
            ## @return a boolean
            ## 
            def passcode_block_fingerprint_modification
                return @passcode_block_fingerprint_modification
            end
            ## 
            ## Sets the passcodeBlockFingerprintModification property value. Block modification of registered Touch ID fingerprints when in supervised mode.
            ## @param value Value to set for the passcode_block_fingerprint_modification property.
            ## @return a void
            ## 
            def passcode_block_fingerprint_modification=(value)
                @passcode_block_fingerprint_modification = value
            end
            ## 
            ## Gets the passcodeBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock.
            ## @return a boolean
            ## 
            def passcode_block_fingerprint_unlock
                return @passcode_block_fingerprint_unlock
            end
            ## 
            ## Sets the passcodeBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock.
            ## @param value Value to set for the passcode_block_fingerprint_unlock property.
            ## @return a void
            ## 
            def passcode_block_fingerprint_unlock=(value)
                @passcode_block_fingerprint_unlock = value
            end
            ## 
            ## Gets the passcodeBlockModification property value. Indicates whether or not to allow passcode modification on the supervised device (iOS 9.0 and later).
            ## @return a boolean
            ## 
            def passcode_block_modification
                return @passcode_block_modification
            end
            ## 
            ## Sets the passcodeBlockModification property value. Indicates whether or not to allow passcode modification on the supervised device (iOS 9.0 and later).
            ## @param value Value to set for the passcode_block_modification property.
            ## @return a void
            ## 
            def passcode_block_modification=(value)
                @passcode_block_modification = value
            end
            ## 
            ## Gets the passcodeBlockSimple property value. Indicates whether or not to block simple passcodes.
            ## @return a boolean
            ## 
            def passcode_block_simple
                return @passcode_block_simple
            end
            ## 
            ## Sets the passcodeBlockSimple property value. Indicates whether or not to block simple passcodes.
            ## @param value Value to set for the passcode_block_simple property.
            ## @return a void
            ## 
            def passcode_block_simple=(value)
                @passcode_block_simple = value
            end
            ## 
            ## Gets the passcodeExpirationDays property value. Number of days before the passcode expires. Valid values 1 to 65535
            ## @return a integer
            ## 
            def passcode_expiration_days
                return @passcode_expiration_days
            end
            ## 
            ## Sets the passcodeExpirationDays property value. Number of days before the passcode expires. Valid values 1 to 65535
            ## @param value Value to set for the passcode_expiration_days property.
            ## @return a void
            ## 
            def passcode_expiration_days=(value)
                @passcode_expiration_days = value
            end
            ## 
            ## Gets the passcodeMinimumCharacterSetCount property value. Number of character sets a passcode must contain. Valid values 0 to 4
            ## @return a integer
            ## 
            def passcode_minimum_character_set_count
                return @passcode_minimum_character_set_count
            end
            ## 
            ## Sets the passcodeMinimumCharacterSetCount property value. Number of character sets a passcode must contain. Valid values 0 to 4
            ## @param value Value to set for the passcode_minimum_character_set_count property.
            ## @return a void
            ## 
            def passcode_minimum_character_set_count=(value)
                @passcode_minimum_character_set_count = value
            end
            ## 
            ## Gets the passcodeMinimumLength property value. Minimum length of passcode. Valid values 4 to 14
            ## @return a integer
            ## 
            def passcode_minimum_length
                return @passcode_minimum_length
            end
            ## 
            ## Sets the passcodeMinimumLength property value. Minimum length of passcode. Valid values 4 to 14
            ## @param value Value to set for the passcode_minimum_length property.
            ## @return a void
            ## 
            def passcode_minimum_length=(value)
                @passcode_minimum_length = value
            end
            ## 
            ## Gets the passcodeMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a passcode is required.
            ## @return a integer
            ## 
            def passcode_minutes_of_inactivity_before_lock
                return @passcode_minutes_of_inactivity_before_lock
            end
            ## 
            ## Sets the passcodeMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a passcode is required.
            ## @param value Value to set for the passcode_minutes_of_inactivity_before_lock property.
            ## @return a void
            ## 
            def passcode_minutes_of_inactivity_before_lock=(value)
                @passcode_minutes_of_inactivity_before_lock = value
            end
            ## 
            ## Gets the passcodeMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
            ## @return a integer
            ## 
            def passcode_minutes_of_inactivity_before_screen_timeout
                return @passcode_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the passcodeMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
            ## @param value Value to set for the passcode_minutes_of_inactivity_before_screen_timeout property.
            ## @return a void
            ## 
            def passcode_minutes_of_inactivity_before_screen_timeout=(value)
                @passcode_minutes_of_inactivity_before_screen_timeout = value
            end
            ## 
            ## Gets the passcodePreviousPasscodeBlockCount property value. Number of previous passcodes to block. Valid values 1 to 24
            ## @return a integer
            ## 
            def passcode_previous_passcode_block_count
                return @passcode_previous_passcode_block_count
            end
            ## 
            ## Sets the passcodePreviousPasscodeBlockCount property value. Number of previous passcodes to block. Valid values 1 to 24
            ## @param value Value to set for the passcode_previous_passcode_block_count property.
            ## @return a void
            ## 
            def passcode_previous_passcode_block_count=(value)
                @passcode_previous_passcode_block_count = value
            end
            ## 
            ## Gets the passcodeRequired property value. Indicates whether or not to require a passcode.
            ## @return a boolean
            ## 
            def passcode_required
                return @passcode_required
            end
            ## 
            ## Sets the passcodeRequired property value. Indicates whether or not to require a passcode.
            ## @param value Value to set for the passcode_required property.
            ## @return a void
            ## 
            def passcode_required=(value)
                @passcode_required = value
            end
            ## 
            ## Gets the passcodeRequiredType property value. Possible values of required passwords.
            ## @return a required_password_type
            ## 
            def passcode_required_type
                return @passcode_required_type
            end
            ## 
            ## Sets the passcodeRequiredType property value. Possible values of required passwords.
            ## @param value Value to set for the passcode_required_type property.
            ## @return a void
            ## 
            def passcode_required_type=(value)
                @passcode_required_type = value
            end
            ## 
            ## Gets the passcodeSignInFailureCountBeforeWipe property value. Number of sign in failures allowed before wiping the device. Valid values 2 to 11
            ## @return a integer
            ## 
            def passcode_sign_in_failure_count_before_wipe
                return @passcode_sign_in_failure_count_before_wipe
            end
            ## 
            ## Sets the passcodeSignInFailureCountBeforeWipe property value. Number of sign in failures allowed before wiping the device. Valid values 2 to 11
            ## @param value Value to set for the passcode_sign_in_failure_count_before_wipe property.
            ## @return a void
            ## 
            def passcode_sign_in_failure_count_before_wipe=(value)
                @passcode_sign_in_failure_count_before_wipe = value
            end
            ## 
            ## Gets the podcastsBlocked property value. Indicates whether or not to block the user from using podcasts on the supervised device (iOS 8.0 and later).
            ## @return a boolean
            ## 
            def podcasts_blocked
                return @podcasts_blocked
            end
            ## 
            ## Sets the podcastsBlocked property value. Indicates whether or not to block the user from using podcasts on the supervised device (iOS 8.0 and later).
            ## @param value Value to set for the podcasts_blocked property.
            ## @return a void
            ## 
            def podcasts_blocked=(value)
                @podcasts_blocked = value
            end
            ## 
            ## Gets the safariBlockAutofill property value. Indicates whether or not to block the user from using Auto fill in Safari. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def safari_block_autofill
                return @safari_block_autofill
            end
            ## 
            ## Sets the safariBlockAutofill property value. Indicates whether or not to block the user from using Auto fill in Safari. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the safari_block_autofill property.
            ## @return a void
            ## 
            def safari_block_autofill=(value)
                @safari_block_autofill = value
            end
            ## 
            ## Gets the safariBlockJavaScript property value. Indicates whether or not to block JavaScript in Safari.
            ## @return a boolean
            ## 
            def safari_block_java_script
                return @safari_block_java_script
            end
            ## 
            ## Sets the safariBlockJavaScript property value. Indicates whether or not to block JavaScript in Safari.
            ## @param value Value to set for the safari_block_java_script property.
            ## @return a void
            ## 
            def safari_block_java_script=(value)
                @safari_block_java_script = value
            end
            ## 
            ## Gets the safariBlockPopups property value. Indicates whether or not to block popups in Safari.
            ## @return a boolean
            ## 
            def safari_block_popups
                return @safari_block_popups
            end
            ## 
            ## Sets the safariBlockPopups property value. Indicates whether or not to block popups in Safari.
            ## @param value Value to set for the safari_block_popups property.
            ## @return a void
            ## 
            def safari_block_popups=(value)
                @safari_block_popups = value
            end
            ## 
            ## Gets the safariBlocked property value. Indicates whether or not to block the user from using Safari. Requires a supervised device for iOS 13 and later.
            ## @return a boolean
            ## 
            def safari_blocked
                return @safari_blocked
            end
            ## 
            ## Sets the safariBlocked property value. Indicates whether or not to block the user from using Safari. Requires a supervised device for iOS 13 and later.
            ## @param value Value to set for the safari_blocked property.
            ## @return a void
            ## 
            def safari_blocked=(value)
                @safari_blocked = value
            end
            ## 
            ## Gets the safariCookieSettings property value. Web Browser Cookie Settings.
            ## @return a web_browser_cookie_settings
            ## 
            def safari_cookie_settings
                return @safari_cookie_settings
            end
            ## 
            ## Sets the safariCookieSettings property value. Web Browser Cookie Settings.
            ## @param value Value to set for the safari_cookie_settings property.
            ## @return a void
            ## 
            def safari_cookie_settings=(value)
                @safari_cookie_settings = value
            end
            ## 
            ## Gets the safariManagedDomains property value. URLs matching the patterns listed here will be considered managed.
            ## @return a string
            ## 
            def safari_managed_domains
                return @safari_managed_domains
            end
            ## 
            ## Sets the safariManagedDomains property value. URLs matching the patterns listed here will be considered managed.
            ## @param value Value to set for the safari_managed_domains property.
            ## @return a void
            ## 
            def safari_managed_domains=(value)
                @safari_managed_domains = value
            end
            ## 
            ## Gets the safariPasswordAutoFillDomains property value. Users can save passwords in Safari only from URLs matching the patterns listed here. Applies to devices in supervised mode (iOS 9.3 and later).
            ## @return a string
            ## 
            def safari_password_auto_fill_domains
                return @safari_password_auto_fill_domains
            end
            ## 
            ## Sets the safariPasswordAutoFillDomains property value. Users can save passwords in Safari only from URLs matching the patterns listed here. Applies to devices in supervised mode (iOS 9.3 and later).
            ## @param value Value to set for the safari_password_auto_fill_domains property.
            ## @return a void
            ## 
            def safari_password_auto_fill_domains=(value)
                @safari_password_auto_fill_domains = value
            end
            ## 
            ## Gets the safariRequireFraudWarning property value. Indicates whether or not to require fraud warning in Safari.
            ## @return a boolean
            ## 
            def safari_require_fraud_warning
                return @safari_require_fraud_warning
            end
            ## 
            ## Sets the safariRequireFraudWarning property value. Indicates whether or not to require fraud warning in Safari.
            ## @param value Value to set for the safari_require_fraud_warning property.
            ## @return a void
            ## 
            def safari_require_fraud_warning=(value)
                @safari_require_fraud_warning = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether or not to block the user from taking Screenshots.
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether or not to block the user from taking Screenshots.
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
                writer.write_boolean_value("accountBlockModification", @account_block_modification)
                writer.write_boolean_value("activationLockAllowWhenSupervised", @activation_lock_allow_when_supervised)
                writer.write_boolean_value("airDropBlocked", @air_drop_blocked)
                writer.write_boolean_value("airDropForceUnmanagedDropTarget", @air_drop_force_unmanaged_drop_target)
                writer.write_boolean_value("airPlayForcePairingPasswordForOutgoingRequests", @air_play_force_pairing_password_for_outgoing_requests)
                writer.write_boolean_value("appStoreBlockAutomaticDownloads", @app_store_block_automatic_downloads)
                writer.write_boolean_value("appStoreBlockInAppPurchases", @app_store_block_in_app_purchases)
                writer.write_boolean_value("appStoreBlockUIAppInstallation", @app_store_block_u_i_app_installation)
                writer.write_boolean_value("appStoreBlocked", @app_store_blocked)
                writer.write_boolean_value("appStoreRequirePassword", @app_store_require_password)
                writer.write_boolean_value("appleNewsBlocked", @apple_news_blocked)
                writer.write_boolean_value("appleWatchBlockPairing", @apple_watch_block_pairing)
                writer.write_boolean_value("appleWatchForceWristDetection", @apple_watch_force_wrist_detection)
                writer.write_collection_of_object_values("appsSingleAppModeList", @apps_single_app_mode_list)
                writer.write_collection_of_object_values("appsVisibilityList", @apps_visibility_list)
                writer.write_enum_value("appsVisibilityListType", @apps_visibility_list_type)
                writer.write_boolean_value("bluetoothBlockModification", @bluetooth_block_modification)
                writer.write_boolean_value("cameraBlocked", @camera_blocked)
                writer.write_boolean_value("cellularBlockDataRoaming", @cellular_block_data_roaming)
                writer.write_boolean_value("cellularBlockGlobalBackgroundFetchWhileRoaming", @cellular_block_global_background_fetch_while_roaming)
                writer.write_boolean_value("cellularBlockPerAppDataModification", @cellular_block_per_app_data_modification)
                writer.write_boolean_value("cellularBlockPersonalHotspot", @cellular_block_personal_hotspot)
                writer.write_boolean_value("cellularBlockVoiceRoaming", @cellular_block_voice_roaming)
                writer.write_boolean_value("certificatesBlockUntrustedTlsCertificates", @certificates_block_untrusted_tls_certificates)
                writer.write_boolean_value("classroomAppBlockRemoteScreenObservation", @classroom_app_block_remote_screen_observation)
                writer.write_boolean_value("classroomAppForceUnpromptedScreenObservation", @classroom_app_force_unprompted_screen_observation)
                writer.write_enum_value("compliantAppListType", @compliant_app_list_type)
                writer.write_collection_of_object_values("compliantAppsList", @compliant_apps_list)
                writer.write_boolean_value("configurationProfileBlockChanges", @configuration_profile_block_changes)
                writer.write_boolean_value("definitionLookupBlocked", @definition_lookup_blocked)
                writer.write_boolean_value("deviceBlockEnableRestrictions", @device_block_enable_restrictions)
                writer.write_boolean_value("deviceBlockEraseContentAndSettings", @device_block_erase_content_and_settings)
                writer.write_boolean_value("deviceBlockNameModification", @device_block_name_modification)
                writer.write_boolean_value("diagnosticDataBlockSubmission", @diagnostic_data_block_submission)
                writer.write_boolean_value("diagnosticDataBlockSubmissionModification", @diagnostic_data_block_submission_modification)
                writer.write_boolean_value("documentsBlockManagedDocumentsInUnmanagedApps", @documents_block_managed_documents_in_unmanaged_apps)
                writer.write_boolean_value("documentsBlockUnmanagedDocumentsInManagedApps", @documents_block_unmanaged_documents_in_managed_apps)
                writer.write_collection_of_primitive_values("emailInDomainSuffixes", @email_in_domain_suffixes)
                writer.write_boolean_value("enterpriseAppBlockTrust", @enterprise_app_block_trust)
                writer.write_boolean_value("enterpriseAppBlockTrustModification", @enterprise_app_block_trust_modification)
                writer.write_boolean_value("faceTimeBlocked", @face_time_blocked)
                writer.write_boolean_value("findMyFriendsBlocked", @find_my_friends_blocked)
                writer.write_boolean_value("gameCenterBlocked", @game_center_blocked)
                writer.write_boolean_value("gamingBlockGameCenterFriends", @gaming_block_game_center_friends)
                writer.write_boolean_value("gamingBlockMultiplayer", @gaming_block_multiplayer)
                writer.write_boolean_value("hostPairingBlocked", @host_pairing_blocked)
                writer.write_boolean_value("iBooksStoreBlockErotica", @i_books_store_block_erotica)
                writer.write_boolean_value("iBooksStoreBlocked", @i_books_store_blocked)
                writer.write_boolean_value("iCloudBlockActivityContinuation", @i_cloud_block_activity_continuation)
                writer.write_boolean_value("iCloudBlockBackup", @i_cloud_block_backup)
                writer.write_boolean_value("iCloudBlockDocumentSync", @i_cloud_block_document_sync)
                writer.write_boolean_value("iCloudBlockManagedAppsSync", @i_cloud_block_managed_apps_sync)
                writer.write_boolean_value("iCloudBlockPhotoLibrary", @i_cloud_block_photo_library)
                writer.write_boolean_value("iCloudBlockPhotoStreamSync", @i_cloud_block_photo_stream_sync)
                writer.write_boolean_value("iCloudBlockSharedPhotoStream", @i_cloud_block_shared_photo_stream)
                writer.write_boolean_value("iCloudRequireEncryptedBackup", @i_cloud_require_encrypted_backup)
                writer.write_boolean_value("iTunesBlockExplicitContent", @i_tunes_block_explicit_content)
                writer.write_boolean_value("iTunesBlockMusicService", @i_tunes_block_music_service)
                writer.write_boolean_value("iTunesBlockRadio", @i_tunes_block_radio)
                writer.write_boolean_value("keyboardBlockAutoCorrect", @keyboard_block_auto_correct)
                writer.write_boolean_value("keyboardBlockDictation", @keyboard_block_dictation)
                writer.write_boolean_value("keyboardBlockPredictive", @keyboard_block_predictive)
                writer.write_boolean_value("keyboardBlockShortcuts", @keyboard_block_shortcuts)
                writer.write_boolean_value("keyboardBlockSpellCheck", @keyboard_block_spell_check)
                writer.write_boolean_value("kioskModeAllowAssistiveSpeak", @kiosk_mode_allow_assistive_speak)
                writer.write_boolean_value("kioskModeAllowAssistiveTouchSettings", @kiosk_mode_allow_assistive_touch_settings)
                writer.write_boolean_value("kioskModeAllowAutoLock", @kiosk_mode_allow_auto_lock)
                writer.write_boolean_value("kioskModeAllowColorInversionSettings", @kiosk_mode_allow_color_inversion_settings)
                writer.write_boolean_value("kioskModeAllowRingerSwitch", @kiosk_mode_allow_ringer_switch)
                writer.write_boolean_value("kioskModeAllowScreenRotation", @kiosk_mode_allow_screen_rotation)
                writer.write_boolean_value("kioskModeAllowSleepButton", @kiosk_mode_allow_sleep_button)
                writer.write_boolean_value("kioskModeAllowTouchscreen", @kiosk_mode_allow_touchscreen)
                writer.write_boolean_value("kioskModeAllowVoiceOverSettings", @kiosk_mode_allow_voice_over_settings)
                writer.write_boolean_value("kioskModeAllowVolumeButtons", @kiosk_mode_allow_volume_buttons)
                writer.write_boolean_value("kioskModeAllowZoomSettings", @kiosk_mode_allow_zoom_settings)
                writer.write_string_value("kioskModeAppStoreUrl", @kiosk_mode_app_store_url)
                writer.write_string_value("kioskModeBuiltInAppId", @kiosk_mode_built_in_app_id)
                writer.write_string_value("kioskModeManagedAppId", @kiosk_mode_managed_app_id)
                writer.write_boolean_value("kioskModeRequireAssistiveTouch", @kiosk_mode_require_assistive_touch)
                writer.write_boolean_value("kioskModeRequireColorInversion", @kiosk_mode_require_color_inversion)
                writer.write_boolean_value("kioskModeRequireMonoAudio", @kiosk_mode_require_mono_audio)
                writer.write_boolean_value("kioskModeRequireVoiceOver", @kiosk_mode_require_voice_over)
                writer.write_boolean_value("kioskModeRequireZoom", @kiosk_mode_require_zoom)
                writer.write_boolean_value("lockScreenBlockControlCenter", @lock_screen_block_control_center)
                writer.write_boolean_value("lockScreenBlockNotificationView", @lock_screen_block_notification_view)
                writer.write_boolean_value("lockScreenBlockPassbook", @lock_screen_block_passbook)
                writer.write_boolean_value("lockScreenBlockTodayView", @lock_screen_block_today_view)
                writer.write_enum_value("mediaContentRatingApps", @media_content_rating_apps)
                writer.write_object_value("mediaContentRatingAustralia", @media_content_rating_australia)
                writer.write_object_value("mediaContentRatingCanada", @media_content_rating_canada)
                writer.write_object_value("mediaContentRatingFrance", @media_content_rating_france)
                writer.write_object_value("mediaContentRatingGermany", @media_content_rating_germany)
                writer.write_object_value("mediaContentRatingIreland", @media_content_rating_ireland)
                writer.write_object_value("mediaContentRatingJapan", @media_content_rating_japan)
                writer.write_object_value("mediaContentRatingNewZealand", @media_content_rating_new_zealand)
                writer.write_object_value("mediaContentRatingUnitedKingdom", @media_content_rating_united_kingdom)
                writer.write_object_value("mediaContentRatingUnitedStates", @media_content_rating_united_states)
                writer.write_boolean_value("messagesBlocked", @messages_blocked)
                writer.write_collection_of_object_values("networkUsageRules", @network_usage_rules)
                writer.write_boolean_value("notificationsBlockSettingsModification", @notifications_block_settings_modification)
                writer.write_boolean_value("passcodeBlockFingerprintModification", @passcode_block_fingerprint_modification)
                writer.write_boolean_value("passcodeBlockFingerprintUnlock", @passcode_block_fingerprint_unlock)
                writer.write_boolean_value("passcodeBlockModification", @passcode_block_modification)
                writer.write_boolean_value("passcodeBlockSimple", @passcode_block_simple)
                writer.write_number_value("passcodeExpirationDays", @passcode_expiration_days)
                writer.write_number_value("passcodeMinimumCharacterSetCount", @passcode_minimum_character_set_count)
                writer.write_number_value("passcodeMinimumLength", @passcode_minimum_length)
                writer.write_number_value("passcodeMinutesOfInactivityBeforeLock", @passcode_minutes_of_inactivity_before_lock)
                writer.write_number_value("passcodeMinutesOfInactivityBeforeScreenTimeout", @passcode_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passcodePreviousPasscodeBlockCount", @passcode_previous_passcode_block_count)
                writer.write_boolean_value("passcodeRequired", @passcode_required)
                writer.write_enum_value("passcodeRequiredType", @passcode_required_type)
                writer.write_number_value("passcodeSignInFailureCountBeforeWipe", @passcode_sign_in_failure_count_before_wipe)
                writer.write_boolean_value("podcastsBlocked", @podcasts_blocked)
                writer.write_boolean_value("safariBlockAutofill", @safari_block_autofill)
                writer.write_boolean_value("safariBlockJavaScript", @safari_block_java_script)
                writer.write_boolean_value("safariBlockPopups", @safari_block_popups)
                writer.write_boolean_value("safariBlocked", @safari_blocked)
                writer.write_enum_value("safariCookieSettings", @safari_cookie_settings)
                writer.write_collection_of_primitive_values("safariManagedDomains", @safari_managed_domains)
                writer.write_collection_of_primitive_values("safariPasswordAutoFillDomains", @safari_password_auto_fill_domains)
                writer.write_boolean_value("safariRequireFraudWarning", @safari_require_fraud_warning)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_boolean_value("siriBlockUserGeneratedContent", @siri_block_user_generated_content)
                writer.write_boolean_value("siriBlocked", @siri_blocked)
                writer.write_boolean_value("siriBlockedWhenLocked", @siri_blocked_when_locked)
                writer.write_boolean_value("siriRequireProfanityFilter", @siri_require_profanity_filter)
                writer.write_boolean_value("spotlightBlockInternetResults", @spotlight_block_internet_results)
                writer.write_boolean_value("voiceDialingBlocked", @voice_dialing_blocked)
                writer.write_boolean_value("wallpaperBlockModification", @wallpaper_block_modification)
                writer.write_boolean_value("wiFiConnectOnlyToConfiguredNetworks", @wi_fi_connect_only_to_configured_networks)
            end
            ## 
            ## Gets the siriBlockUserGeneratedContent property value. Indicates whether or not to block Siri from querying user-generated content when used on a supervised device.
            ## @return a boolean
            ## 
            def siri_block_user_generated_content
                return @siri_block_user_generated_content
            end
            ## 
            ## Sets the siriBlockUserGeneratedContent property value. Indicates whether or not to block Siri from querying user-generated content when used on a supervised device.
            ## @param value Value to set for the siri_block_user_generated_content property.
            ## @return a void
            ## 
            def siri_block_user_generated_content=(value)
                @siri_block_user_generated_content = value
            end
            ## 
            ## Gets the siriBlocked property value. Indicates whether or not to block the user from using Siri.
            ## @return a boolean
            ## 
            def siri_blocked
                return @siri_blocked
            end
            ## 
            ## Sets the siriBlocked property value. Indicates whether or not to block the user from using Siri.
            ## @param value Value to set for the siri_blocked property.
            ## @return a void
            ## 
            def siri_blocked=(value)
                @siri_blocked = value
            end
            ## 
            ## Gets the siriBlockedWhenLocked property value. Indicates whether or not to block the user from using Siri when locked.
            ## @return a boolean
            ## 
            def siri_blocked_when_locked
                return @siri_blocked_when_locked
            end
            ## 
            ## Sets the siriBlockedWhenLocked property value. Indicates whether or not to block the user from using Siri when locked.
            ## @param value Value to set for the siri_blocked_when_locked property.
            ## @return a void
            ## 
            def siri_blocked_when_locked=(value)
                @siri_blocked_when_locked = value
            end
            ## 
            ## Gets the siriRequireProfanityFilter property value. Indicates whether or not to prevent Siri from dictating, or speaking profane language on supervised device.
            ## @return a boolean
            ## 
            def siri_require_profanity_filter
                return @siri_require_profanity_filter
            end
            ## 
            ## Sets the siriRequireProfanityFilter property value. Indicates whether or not to prevent Siri from dictating, or speaking profane language on supervised device.
            ## @param value Value to set for the siri_require_profanity_filter property.
            ## @return a void
            ## 
            def siri_require_profanity_filter=(value)
                @siri_require_profanity_filter = value
            end
            ## 
            ## Gets the spotlightBlockInternetResults property value. Indicates whether or not to block Spotlight search from returning internet results on supervised device.
            ## @return a boolean
            ## 
            def spotlight_block_internet_results
                return @spotlight_block_internet_results
            end
            ## 
            ## Sets the spotlightBlockInternetResults property value. Indicates whether or not to block Spotlight search from returning internet results on supervised device.
            ## @param value Value to set for the spotlight_block_internet_results property.
            ## @return a void
            ## 
            def spotlight_block_internet_results=(value)
                @spotlight_block_internet_results = value
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
            ## Gets the wallpaperBlockModification property value. Indicates whether or not to allow wallpaper modification on supervised device (iOS 9.0 and later) .
            ## @return a boolean
            ## 
            def wallpaper_block_modification
                return @wallpaper_block_modification
            end
            ## 
            ## Sets the wallpaperBlockModification property value. Indicates whether or not to allow wallpaper modification on supervised device (iOS 9.0 and later) .
            ## @param value Value to set for the wallpaper_block_modification property.
            ## @return a void
            ## 
            def wallpaper_block_modification=(value)
                @wallpaper_block_modification = value
            end
            ## 
            ## Gets the wiFiConnectOnlyToConfiguredNetworks property value. Indicates whether or not to force the device to use only Wi-Fi networks from configuration profiles when the device is in supervised mode. Available for devices running iOS and iPadOS versions 14.4 and earlier. Devices running 14.5+ should use the setting, 'WiFiConnectToAllowedNetworksOnlyForced.
            ## @return a boolean
            ## 
            def wi_fi_connect_only_to_configured_networks
                return @wi_fi_connect_only_to_configured_networks
            end
            ## 
            ## Sets the wiFiConnectOnlyToConfiguredNetworks property value. Indicates whether or not to force the device to use only Wi-Fi networks from configuration profiles when the device is in supervised mode. Available for devices running iOS and iPadOS versions 14.4 and earlier. Devices running 14.5+ should use the setting, 'WiFiConnectToAllowedNetworksOnlyForced.
            ## @param value Value to set for the wi_fi_connect_only_to_configured_networks property.
            ## @return a void
            ## 
            def wi_fi_connect_only_to_configured_networks=(value)
                @wi_fi_connect_only_to_configured_networks = value
            end
        end
    end
end
