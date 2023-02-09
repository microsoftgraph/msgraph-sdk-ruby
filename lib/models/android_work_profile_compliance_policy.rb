require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AndroidWorkProfileCompliancePolicy < MicrosoftGraph::Models::DeviceCompliancePolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Require that devices have enabled device threat protection.
            @device_threat_protection_enabled
            ## 
            # Device threat protection levels for the Device Threat Protection API.
            @device_threat_protection_required_security_level
            ## 
            # Minimum Android security patch level.
            @min_android_security_patch_level
            ## 
            # Maximum Android version.
            @os_maximum_version
            ## 
            # Minimum Android version.
            @os_minimum_version
            ## 
            # Number of days before the password expires. Valid values 1 to 365
            @password_expiration_days
            ## 
            # Minimum password length. Valid values 4 to 16
            @password_minimum_length
            ## 
            # Minutes of inactivity before a password is required.
            @password_minutes_of_inactivity_before_lock
            ## 
            # Number of previous passwords to block. Valid values 1 to 24
            @password_previous_password_block_count
            ## 
            # Require a password to unlock device.
            @password_required
            ## 
            # Android required password type.
            @password_required_type
            ## 
            # Devices must not be jailbroken or rooted.
            @security_block_jailbroken_devices
            ## 
            # Disable USB debugging on Android devices.
            @security_disable_usb_debugging
            ## 
            # Require that devices disallow installation of apps from unknown sources.
            @security_prevent_install_apps_from_unknown_sources
            ## 
            # Require the device to pass the Company Portal client app runtime integrity check.
            @security_require_company_portal_app_integrity
            ## 
            # Require Google Play Services to be installed and enabled on the device.
            @security_require_google_play_services
            ## 
            # Require the device to pass the SafetyNet basic integrity check.
            @security_require_safety_net_attestation_basic_integrity
            ## 
            # Require the device to pass the SafetyNet certified device check.
            @security_require_safety_net_attestation_certified_device
            ## 
            # Require the device to have up to date security providers. The device will require Google Play Services to be enabled and up to date.
            @security_require_up_to_date_security_providers
            ## 
            # Require the Android Verify apps feature is turned on.
            @security_require_verify_apps
            ## 
            # Require encryption on Android devices.
            @storage_require_encryption
            ## 
            ## Instantiates a new AndroidWorkProfileCompliancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidWorkProfileCompliancePolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_work_profile_compliance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidWorkProfileCompliancePolicy.new
            end
            ## 
            ## Gets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection.
            ## @return a boolean
            ## 
            def device_threat_protection_enabled
                return @device_threat_protection_enabled
            end
            ## 
            ## Sets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection.
            ## @param value Value to set for the device_threat_protection_enabled property.
            ## @return a void
            ## 
            def device_threat_protection_enabled=(value)
                @device_threat_protection_enabled = value
            end
            ## 
            ## Gets the deviceThreatProtectionRequiredSecurityLevel property value. Device threat protection levels for the Device Threat Protection API.
            ## @return a device_threat_protection_level
            ## 
            def device_threat_protection_required_security_level
                return @device_threat_protection_required_security_level
            end
            ## 
            ## Sets the deviceThreatProtectionRequiredSecurityLevel property value. Device threat protection levels for the Device Threat Protection API.
            ## @param value Value to set for the device_threat_protection_required_security_level property.
            ## @return a void
            ## 
            def device_threat_protection_required_security_level=(value)
                @device_threat_protection_required_security_level = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceThreatProtectionEnabled" => lambda {|n| @device_threat_protection_enabled = n.get_boolean_value() },
                    "deviceThreatProtectionRequiredSecurityLevel" => lambda {|n| @device_threat_protection_required_security_level = n.get_enum_value(MicrosoftGraph::Models::DeviceThreatProtectionLevel) },
                    "minAndroidSecurityPatchLevel" => lambda {|n| @min_android_security_patch_level = n.get_string_value() },
                    "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                    "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeLock" => lambda {|n| @password_minutes_of_inactivity_before_lock = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraph::Models::AndroidRequiredPasswordType) },
                    "securityBlockJailbrokenDevices" => lambda {|n| @security_block_jailbroken_devices = n.get_boolean_value() },
                    "securityDisableUsbDebugging" => lambda {|n| @security_disable_usb_debugging = n.get_boolean_value() },
                    "securityPreventInstallAppsFromUnknownSources" => lambda {|n| @security_prevent_install_apps_from_unknown_sources = n.get_boolean_value() },
                    "securityRequireCompanyPortalAppIntegrity" => lambda {|n| @security_require_company_portal_app_integrity = n.get_boolean_value() },
                    "securityRequireGooglePlayServices" => lambda {|n| @security_require_google_play_services = n.get_boolean_value() },
                    "securityRequireSafetyNetAttestationBasicIntegrity" => lambda {|n| @security_require_safety_net_attestation_basic_integrity = n.get_boolean_value() },
                    "securityRequireSafetyNetAttestationCertifiedDevice" => lambda {|n| @security_require_safety_net_attestation_certified_device = n.get_boolean_value() },
                    "securityRequireUpToDateSecurityProviders" => lambda {|n| @security_require_up_to_date_security_providers = n.get_boolean_value() },
                    "securityRequireVerifyApps" => lambda {|n| @security_require_verify_apps = n.get_boolean_value() },
                    "storageRequireEncryption" => lambda {|n| @storage_require_encryption = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the minAndroidSecurityPatchLevel property value. Minimum Android security patch level.
            ## @return a string
            ## 
            def min_android_security_patch_level
                return @min_android_security_patch_level
            end
            ## 
            ## Sets the minAndroidSecurityPatchLevel property value. Minimum Android security patch level.
            ## @param value Value to set for the min_android_security_patch_level property.
            ## @return a void
            ## 
            def min_android_security_patch_level=(value)
                @min_android_security_patch_level = value
            end
            ## 
            ## Gets the osMaximumVersion property value. Maximum Android version.
            ## @return a string
            ## 
            def os_maximum_version
                return @os_maximum_version
            end
            ## 
            ## Sets the osMaximumVersion property value. Maximum Android version.
            ## @param value Value to set for the os_maximum_version property.
            ## @return a void
            ## 
            def os_maximum_version=(value)
                @os_maximum_version = value
            end
            ## 
            ## Gets the osMinimumVersion property value. Minimum Android version.
            ## @return a string
            ## 
            def os_minimum_version
                return @os_minimum_version
            end
            ## 
            ## Sets the osMinimumVersion property value. Minimum Android version.
            ## @param value Value to set for the os_minimum_version property.
            ## @return a void
            ## 
            def os_minimum_version=(value)
                @os_minimum_version = value
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
            ## Gets the passwordMinimumLength property value. Minimum password length. Valid values 4 to 16
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. Minimum password length. Valid values 4 to 16
            ## @param value Value to set for the password_minimum_length property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_lock
                return @password_minutes_of_inactivity_before_lock
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required.
            ## @param value Value to set for the password_minutes_of_inactivity_before_lock property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_lock=(value)
                @password_minutes_of_inactivity_before_lock = value
            end
            ## 
            ## Gets the passwordPreviousPasswordBlockCount property value. Number of previous passwords to block. Valid values 1 to 24
            ## @return a integer
            ## 
            def password_previous_password_block_count
                return @password_previous_password_block_count
            end
            ## 
            ## Sets the passwordPreviousPasswordBlockCount property value. Number of previous passwords to block. Valid values 1 to 24
            ## @param value Value to set for the password_previous_password_block_count property.
            ## @return a void
            ## 
            def password_previous_password_block_count=(value)
                @password_previous_password_block_count = value
            end
            ## 
            ## Gets the passwordRequired property value. Require a password to unlock device.
            ## @return a boolean
            ## 
            def password_required
                return @password_required
            end
            ## 
            ## Sets the passwordRequired property value. Require a password to unlock device.
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
            ## Gets the securityBlockJailbrokenDevices property value. Devices must not be jailbroken or rooted.
            ## @return a boolean
            ## 
            def security_block_jailbroken_devices
                return @security_block_jailbroken_devices
            end
            ## 
            ## Sets the securityBlockJailbrokenDevices property value. Devices must not be jailbroken or rooted.
            ## @param value Value to set for the security_block_jailbroken_devices property.
            ## @return a void
            ## 
            def security_block_jailbroken_devices=(value)
                @security_block_jailbroken_devices = value
            end
            ## 
            ## Gets the securityDisableUsbDebugging property value. Disable USB debugging on Android devices.
            ## @return a boolean
            ## 
            def security_disable_usb_debugging
                return @security_disable_usb_debugging
            end
            ## 
            ## Sets the securityDisableUsbDebugging property value. Disable USB debugging on Android devices.
            ## @param value Value to set for the security_disable_usb_debugging property.
            ## @return a void
            ## 
            def security_disable_usb_debugging=(value)
                @security_disable_usb_debugging = value
            end
            ## 
            ## Gets the securityPreventInstallAppsFromUnknownSources property value. Require that devices disallow installation of apps from unknown sources.
            ## @return a boolean
            ## 
            def security_prevent_install_apps_from_unknown_sources
                return @security_prevent_install_apps_from_unknown_sources
            end
            ## 
            ## Sets the securityPreventInstallAppsFromUnknownSources property value. Require that devices disallow installation of apps from unknown sources.
            ## @param value Value to set for the security_prevent_install_apps_from_unknown_sources property.
            ## @return a void
            ## 
            def security_prevent_install_apps_from_unknown_sources=(value)
                @security_prevent_install_apps_from_unknown_sources = value
            end
            ## 
            ## Gets the securityRequireCompanyPortalAppIntegrity property value. Require the device to pass the Company Portal client app runtime integrity check.
            ## @return a boolean
            ## 
            def security_require_company_portal_app_integrity
                return @security_require_company_portal_app_integrity
            end
            ## 
            ## Sets the securityRequireCompanyPortalAppIntegrity property value. Require the device to pass the Company Portal client app runtime integrity check.
            ## @param value Value to set for the security_require_company_portal_app_integrity property.
            ## @return a void
            ## 
            def security_require_company_portal_app_integrity=(value)
                @security_require_company_portal_app_integrity = value
            end
            ## 
            ## Gets the securityRequireGooglePlayServices property value. Require Google Play Services to be installed and enabled on the device.
            ## @return a boolean
            ## 
            def security_require_google_play_services
                return @security_require_google_play_services
            end
            ## 
            ## Sets the securityRequireGooglePlayServices property value. Require Google Play Services to be installed and enabled on the device.
            ## @param value Value to set for the security_require_google_play_services property.
            ## @return a void
            ## 
            def security_require_google_play_services=(value)
                @security_require_google_play_services = value
            end
            ## 
            ## Gets the securityRequireSafetyNetAttestationBasicIntegrity property value. Require the device to pass the SafetyNet basic integrity check.
            ## @return a boolean
            ## 
            def security_require_safety_net_attestation_basic_integrity
                return @security_require_safety_net_attestation_basic_integrity
            end
            ## 
            ## Sets the securityRequireSafetyNetAttestationBasicIntegrity property value. Require the device to pass the SafetyNet basic integrity check.
            ## @param value Value to set for the security_require_safety_net_attestation_basic_integrity property.
            ## @return a void
            ## 
            def security_require_safety_net_attestation_basic_integrity=(value)
                @security_require_safety_net_attestation_basic_integrity = value
            end
            ## 
            ## Gets the securityRequireSafetyNetAttestationCertifiedDevice property value. Require the device to pass the SafetyNet certified device check.
            ## @return a boolean
            ## 
            def security_require_safety_net_attestation_certified_device
                return @security_require_safety_net_attestation_certified_device
            end
            ## 
            ## Sets the securityRequireSafetyNetAttestationCertifiedDevice property value. Require the device to pass the SafetyNet certified device check.
            ## @param value Value to set for the security_require_safety_net_attestation_certified_device property.
            ## @return a void
            ## 
            def security_require_safety_net_attestation_certified_device=(value)
                @security_require_safety_net_attestation_certified_device = value
            end
            ## 
            ## Gets the securityRequireUpToDateSecurityProviders property value. Require the device to have up to date security providers. The device will require Google Play Services to be enabled and up to date.
            ## @return a boolean
            ## 
            def security_require_up_to_date_security_providers
                return @security_require_up_to_date_security_providers
            end
            ## 
            ## Sets the securityRequireUpToDateSecurityProviders property value. Require the device to have up to date security providers. The device will require Google Play Services to be enabled and up to date.
            ## @param value Value to set for the security_require_up_to_date_security_providers property.
            ## @return a void
            ## 
            def security_require_up_to_date_security_providers=(value)
                @security_require_up_to_date_security_providers = value
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
                writer.write_boolean_value("deviceThreatProtectionEnabled", @device_threat_protection_enabled)
                writer.write_enum_value("deviceThreatProtectionRequiredSecurityLevel", @device_threat_protection_required_security_level)
                writer.write_string_value("minAndroidSecurityPatchLevel", @min_android_security_patch_level)
                writer.write_string_value("osMaximumVersion", @os_maximum_version)
                writer.write_string_value("osMinimumVersion", @os_minimum_version)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeLock", @password_minutes_of_inactivity_before_lock)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_boolean_value("securityBlockJailbrokenDevices", @security_block_jailbroken_devices)
                writer.write_boolean_value("securityDisableUsbDebugging", @security_disable_usb_debugging)
                writer.write_boolean_value("securityPreventInstallAppsFromUnknownSources", @security_prevent_install_apps_from_unknown_sources)
                writer.write_boolean_value("securityRequireCompanyPortalAppIntegrity", @security_require_company_portal_app_integrity)
                writer.write_boolean_value("securityRequireGooglePlayServices", @security_require_google_play_services)
                writer.write_boolean_value("securityRequireSafetyNetAttestationBasicIntegrity", @security_require_safety_net_attestation_basic_integrity)
                writer.write_boolean_value("securityRequireSafetyNetAttestationCertifiedDevice", @security_require_safety_net_attestation_certified_device)
                writer.write_boolean_value("securityRequireUpToDateSecurityProviders", @security_require_up_to_date_security_providers)
                writer.write_boolean_value("securityRequireVerifyApps", @security_require_verify_apps)
                writer.write_boolean_value("storageRequireEncryption", @storage_require_encryption)
            end
            ## 
            ## Gets the storageRequireEncryption property value. Require encryption on Android devices.
            ## @return a boolean
            ## 
            def storage_require_encryption
                return @storage_require_encryption
            end
            ## 
            ## Sets the storageRequireEncryption property value. Require encryption on Android devices.
            ## @param value Value to set for the storage_require_encryption property.
            ## @return a void
            ## 
            def storage_require_encryption=(value)
                @storage_require_encryption = value
            end
        end
    end
end
