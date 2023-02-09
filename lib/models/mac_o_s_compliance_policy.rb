require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MacOSCompliancePolicy < MicrosoftGraph::Models::DeviceCompliancePolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Require that devices have enabled device threat protection.
            @device_threat_protection_enabled
            ## 
            # Device threat protection levels for the Device Threat Protection API.
            @device_threat_protection_required_security_level
            ## 
            # Corresponds to the 'Block all incoming connections' option.
            @firewall_block_all_incoming
            ## 
            # Corresponds to 'Enable stealth mode.'
            @firewall_enable_stealth_mode
            ## 
            # Whether the firewall should be enabled or not.
            @firewall_enabled
            ## 
            # Maximum MacOS version.
            @os_maximum_version
            ## 
            # Minimum MacOS version.
            @os_minimum_version
            ## 
            # Indicates whether or not to block simple passwords.
            @password_block_simple
            ## 
            # Number of days before the password expires. Valid values 1 to 65535
            @password_expiration_days
            ## 
            # The number of character sets required in the password.
            @password_minimum_character_set_count
            ## 
            # Minimum length of password. Valid values 4 to 14
            @password_minimum_length
            ## 
            # Minutes of inactivity before a password is required.
            @password_minutes_of_inactivity_before_lock
            ## 
            # Number of previous passwords to block. Valid values 1 to 24
            @password_previous_password_block_count
            ## 
            # Whether or not to require a password.
            @password_required
            ## 
            # Possible values of required passwords.
            @password_required_type
            ## 
            # Require encryption on Mac OS devices.
            @storage_require_encryption
            ## 
            # Require that devices have enabled system integrity protection.
            @system_integrity_protection_enabled
            ## 
            ## Instantiates a new MacOSCompliancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSCompliancePolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_compliance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSCompliancePolicy.new
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
            ## Gets the firewallBlockAllIncoming property value. Corresponds to the 'Block all incoming connections' option.
            ## @return a boolean
            ## 
            def firewall_block_all_incoming
                return @firewall_block_all_incoming
            end
            ## 
            ## Sets the firewallBlockAllIncoming property value. Corresponds to the 'Block all incoming connections' option.
            ## @param value Value to set for the firewall_block_all_incoming property.
            ## @return a void
            ## 
            def firewall_block_all_incoming=(value)
                @firewall_block_all_incoming = value
            end
            ## 
            ## Gets the firewallEnableStealthMode property value. Corresponds to 'Enable stealth mode.'
            ## @return a boolean
            ## 
            def firewall_enable_stealth_mode
                return @firewall_enable_stealth_mode
            end
            ## 
            ## Sets the firewallEnableStealthMode property value. Corresponds to 'Enable stealth mode.'
            ## @param value Value to set for the firewall_enable_stealth_mode property.
            ## @return a void
            ## 
            def firewall_enable_stealth_mode=(value)
                @firewall_enable_stealth_mode = value
            end
            ## 
            ## Gets the firewallEnabled property value. Whether the firewall should be enabled or not.
            ## @return a boolean
            ## 
            def firewall_enabled
                return @firewall_enabled
            end
            ## 
            ## Sets the firewallEnabled property value. Whether the firewall should be enabled or not.
            ## @param value Value to set for the firewall_enabled property.
            ## @return a void
            ## 
            def firewall_enabled=(value)
                @firewall_enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceThreatProtectionEnabled" => lambda {|n| @device_threat_protection_enabled = n.get_boolean_value() },
                    "deviceThreatProtectionRequiredSecurityLevel" => lambda {|n| @device_threat_protection_required_security_level = n.get_enum_value(MicrosoftGraph::Models::DeviceThreatProtectionLevel) },
                    "firewallBlockAllIncoming" => lambda {|n| @firewall_block_all_incoming = n.get_boolean_value() },
                    "firewallEnableStealthMode" => lambda {|n| @firewall_enable_stealth_mode = n.get_boolean_value() },
                    "firewallEnabled" => lambda {|n| @firewall_enabled = n.get_boolean_value() },
                    "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                    "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                    "passwordBlockSimple" => lambda {|n| @password_block_simple = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumCharacterSetCount" => lambda {|n| @password_minimum_character_set_count = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeLock" => lambda {|n| @password_minutes_of_inactivity_before_lock = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraph::Models::RequiredPasswordType) },
                    "storageRequireEncryption" => lambda {|n| @storage_require_encryption = n.get_boolean_value() },
                    "systemIntegrityProtectionEnabled" => lambda {|n| @system_integrity_protection_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the osMaximumVersion property value. Maximum MacOS version.
            ## @return a string
            ## 
            def os_maximum_version
                return @os_maximum_version
            end
            ## 
            ## Sets the osMaximumVersion property value. Maximum MacOS version.
            ## @param value Value to set for the os_maximum_version property.
            ## @return a void
            ## 
            def os_maximum_version=(value)
                @os_maximum_version = value
            end
            ## 
            ## Gets the osMinimumVersion property value. Minimum MacOS version.
            ## @return a string
            ## 
            def os_minimum_version
                return @os_minimum_version
            end
            ## 
            ## Sets the osMinimumVersion property value. Minimum MacOS version.
            ## @param value Value to set for the os_minimum_version property.
            ## @return a void
            ## 
            def os_minimum_version=(value)
                @os_minimum_version = value
            end
            ## 
            ## Gets the passwordBlockSimple property value. Indicates whether or not to block simple passwords.
            ## @return a boolean
            ## 
            def password_block_simple
                return @password_block_simple
            end
            ## 
            ## Sets the passwordBlockSimple property value. Indicates whether or not to block simple passwords.
            ## @param value Value to set for the password_block_simple property.
            ## @return a void
            ## 
            def password_block_simple=(value)
                @password_block_simple = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. Number of days before the password expires. Valid values 1 to 65535
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. Number of days before the password expires. Valid values 1 to 65535
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
            ## Gets the passwordMinimumLength property value. Minimum length of password. Valid values 4 to 14
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. Minimum length of password. Valid values 4 to 14
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
            ## Gets the passwordRequired property value. Whether or not to require a password.
            ## @return a boolean
            ## 
            def password_required
                return @password_required
            end
            ## 
            ## Sets the passwordRequired property value. Whether or not to require a password.
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("deviceThreatProtectionEnabled", @device_threat_protection_enabled)
                writer.write_enum_value("deviceThreatProtectionRequiredSecurityLevel", @device_threat_protection_required_security_level)
                writer.write_boolean_value("firewallBlockAllIncoming", @firewall_block_all_incoming)
                writer.write_boolean_value("firewallEnableStealthMode", @firewall_enable_stealth_mode)
                writer.write_boolean_value("firewallEnabled", @firewall_enabled)
                writer.write_string_value("osMaximumVersion", @os_maximum_version)
                writer.write_string_value("osMinimumVersion", @os_minimum_version)
                writer.write_boolean_value("passwordBlockSimple", @password_block_simple)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumCharacterSetCount", @password_minimum_character_set_count)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeLock", @password_minutes_of_inactivity_before_lock)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_boolean_value("storageRequireEncryption", @storage_require_encryption)
                writer.write_boolean_value("systemIntegrityProtectionEnabled", @system_integrity_protection_enabled)
            end
            ## 
            ## Gets the storageRequireEncryption property value. Require encryption on Mac OS devices.
            ## @return a boolean
            ## 
            def storage_require_encryption
                return @storage_require_encryption
            end
            ## 
            ## Sets the storageRequireEncryption property value. Require encryption on Mac OS devices.
            ## @param value Value to set for the storage_require_encryption property.
            ## @return a void
            ## 
            def storage_require_encryption=(value)
                @storage_require_encryption = value
            end
            ## 
            ## Gets the systemIntegrityProtectionEnabled property value. Require that devices have enabled system integrity protection.
            ## @return a boolean
            ## 
            def system_integrity_protection_enabled
                return @system_integrity_protection_enabled
            end
            ## 
            ## Sets the systemIntegrityProtectionEnabled property value. Require that devices have enabled system integrity protection.
            ## @param value Value to set for the system_integrity_protection_enabled property.
            ## @return a void
            ## 
            def system_integrity_protection_enabled=(value)
                @system_integrity_protection_enabled = value
            end
        end
    end
end
