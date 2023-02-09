require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Windows10MobileCompliancePolicy < MicrosoftGraph::Models::DeviceCompliancePolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled
            @bit_locker_enabled
            ## 
            # Require devices to be reported as healthy by Windows Device Health Attestation.
            @code_integrity_enabled
            ## 
            # Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.
            @early_launch_anti_malware_driver_enabled
            ## 
            # Maximum Windows Phone version.
            @os_maximum_version
            ## 
            # Minimum Windows Phone version.
            @os_minimum_version
            ## 
            # Whether or not to block syncing the calendar.
            @password_block_simple
            ## 
            # Number of days before password expiration. Valid values 1 to 255
            @password_expiration_days
            ## 
            # The number of character sets required in the password.
            @password_minimum_character_set_count
            ## 
            # Minimum password length. Valid values 4 to 16
            @password_minimum_length
            ## 
            # Minutes of inactivity before a password is required.
            @password_minutes_of_inactivity_before_lock
            ## 
            # The number of previous passwords to prevent re-use of.
            @password_previous_password_block_count
            ## 
            # Require a password to unlock an idle device.
            @password_require_to_unlock_from_idle
            ## 
            # Require a password to unlock Windows Phone device.
            @password_required
            ## 
            # Possible values of required passwords.
            @password_required_type
            ## 
            # Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.
            @secure_boot_enabled
            ## 
            # Require encryption on windows devices.
            @storage_require_encryption
            ## 
            ## Gets the bitLockerEnabled property value. Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled
            ## @return a boolean
            ## 
            def bit_locker_enabled
                return @bit_locker_enabled
            end
            ## 
            ## Sets the bitLockerEnabled property value. Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled
            ## @param value Value to set for the bit_locker_enabled property.
            ## @return a void
            ## 
            def bit_locker_enabled=(value)
                @bit_locker_enabled = value
            end
            ## 
            ## Gets the codeIntegrityEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation.
            ## @return a boolean
            ## 
            def code_integrity_enabled
                return @code_integrity_enabled
            end
            ## 
            ## Sets the codeIntegrityEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation.
            ## @param value Value to set for the code_integrity_enabled property.
            ## @return a void
            ## 
            def code_integrity_enabled=(value)
                @code_integrity_enabled = value
            end
            ## 
            ## Instantiates a new Windows10MobileCompliancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10MobileCompliancePolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_mobile_compliance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10MobileCompliancePolicy.new
            end
            ## 
            ## Gets the earlyLaunchAntiMalwareDriverEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.
            ## @return a boolean
            ## 
            def early_launch_anti_malware_driver_enabled
                return @early_launch_anti_malware_driver_enabled
            end
            ## 
            ## Sets the earlyLaunchAntiMalwareDriverEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.
            ## @param value Value to set for the early_launch_anti_malware_driver_enabled property.
            ## @return a void
            ## 
            def early_launch_anti_malware_driver_enabled=(value)
                @early_launch_anti_malware_driver_enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bitLockerEnabled" => lambda {|n| @bit_locker_enabled = n.get_boolean_value() },
                    "codeIntegrityEnabled" => lambda {|n| @code_integrity_enabled = n.get_boolean_value() },
                    "earlyLaunchAntiMalwareDriverEnabled" => lambda {|n| @early_launch_anti_malware_driver_enabled = n.get_boolean_value() },
                    "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                    "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                    "passwordBlockSimple" => lambda {|n| @password_block_simple = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumCharacterSetCount" => lambda {|n| @password_minimum_character_set_count = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeLock" => lambda {|n| @password_minutes_of_inactivity_before_lock = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequireToUnlockFromIdle" => lambda {|n| @password_require_to_unlock_from_idle = n.get_boolean_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraph::Models::RequiredPasswordType) },
                    "secureBootEnabled" => lambda {|n| @secure_boot_enabled = n.get_boolean_value() },
                    "storageRequireEncryption" => lambda {|n| @storage_require_encryption = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the osMaximumVersion property value. Maximum Windows Phone version.
            ## @return a string
            ## 
            def os_maximum_version
                return @os_maximum_version
            end
            ## 
            ## Sets the osMaximumVersion property value. Maximum Windows Phone version.
            ## @param value Value to set for the os_maximum_version property.
            ## @return a void
            ## 
            def os_maximum_version=(value)
                @os_maximum_version = value
            end
            ## 
            ## Gets the osMinimumVersion property value. Minimum Windows Phone version.
            ## @return a string
            ## 
            def os_minimum_version
                return @os_minimum_version
            end
            ## 
            ## Sets the osMinimumVersion property value. Minimum Windows Phone version.
            ## @param value Value to set for the os_minimum_version property.
            ## @return a void
            ## 
            def os_minimum_version=(value)
                @os_minimum_version = value
            end
            ## 
            ## Gets the passwordBlockSimple property value. Whether or not to block syncing the calendar.
            ## @return a boolean
            ## 
            def password_block_simple
                return @password_block_simple
            end
            ## 
            ## Sets the passwordBlockSimple property value. Whether or not to block syncing the calendar.
            ## @param value Value to set for the password_block_simple property.
            ## @return a void
            ## 
            def password_block_simple=(value)
                @password_block_simple = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. Number of days before password expiration. Valid values 1 to 255
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. Number of days before password expiration. Valid values 1 to 255
            ## @param value Value to set for the password_expiration_days property.
            ## @return a void
            ## 
            def password_expiration_days=(value)
                @password_expiration_days = value
            end
            ## 
            ## Gets the passwordMinimumCharacterSetCount property value. The number of character sets required in the password.
            ## @return a integer
            ## 
            def password_minimum_character_set_count
                return @password_minimum_character_set_count
            end
            ## 
            ## Sets the passwordMinimumCharacterSetCount property value. The number of character sets required in the password.
            ## @param value Value to set for the password_minimum_character_set_count property.
            ## @return a void
            ## 
            def password_minimum_character_set_count=(value)
                @password_minimum_character_set_count = value
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
            ## Gets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent re-use of.
            ## @return a integer
            ## 
            def password_previous_password_block_count
                return @password_previous_password_block_count
            end
            ## 
            ## Sets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent re-use of.
            ## @param value Value to set for the password_previous_password_block_count property.
            ## @return a void
            ## 
            def password_previous_password_block_count=(value)
                @password_previous_password_block_count = value
            end
            ## 
            ## Gets the passwordRequireToUnlockFromIdle property value. Require a password to unlock an idle device.
            ## @return a boolean
            ## 
            def password_require_to_unlock_from_idle
                return @password_require_to_unlock_from_idle
            end
            ## 
            ## Sets the passwordRequireToUnlockFromIdle property value. Require a password to unlock an idle device.
            ## @param value Value to set for the password_require_to_unlock_from_idle property.
            ## @return a void
            ## 
            def password_require_to_unlock_from_idle=(value)
                @password_require_to_unlock_from_idle = value
            end
            ## 
            ## Gets the passwordRequired property value. Require a password to unlock Windows Phone device.
            ## @return a boolean
            ## 
            def password_required
                return @password_required
            end
            ## 
            ## Sets the passwordRequired property value. Require a password to unlock Windows Phone device.
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
            ## Gets the secureBootEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.
            ## @return a boolean
            ## 
            def secure_boot_enabled
                return @secure_boot_enabled
            end
            ## 
            ## Sets the secureBootEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.
            ## @param value Value to set for the secure_boot_enabled property.
            ## @return a void
            ## 
            def secure_boot_enabled=(value)
                @secure_boot_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("bitLockerEnabled", @bit_locker_enabled)
                writer.write_boolean_value("codeIntegrityEnabled", @code_integrity_enabled)
                writer.write_boolean_value("earlyLaunchAntiMalwareDriverEnabled", @early_launch_anti_malware_driver_enabled)
                writer.write_string_value("osMaximumVersion", @os_maximum_version)
                writer.write_string_value("osMinimumVersion", @os_minimum_version)
                writer.write_boolean_value("passwordBlockSimple", @password_block_simple)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumCharacterSetCount", @password_minimum_character_set_count)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeLock", @password_minutes_of_inactivity_before_lock)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_boolean_value("passwordRequireToUnlockFromIdle", @password_require_to_unlock_from_idle)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_boolean_value("secureBootEnabled", @secure_boot_enabled)
                writer.write_boolean_value("storageRequireEncryption", @storage_require_encryption)
            end
            ## 
            ## Gets the storageRequireEncryption property value. Require encryption on windows devices.
            ## @return a boolean
            ## 
            def storage_require_encryption
                return @storage_require_encryption
            end
            ## 
            ## Sets the storageRequireEncryption property value. Require encryption on windows devices.
            ## @param value Value to set for the storage_require_encryption property.
            ## @return a void
            ## 
            def storage_require_encryption=(value)
                @storage_require_encryption = value
            end
        end
    end
end
