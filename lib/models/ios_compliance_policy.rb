require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosCompliancePolicy < MicrosoftGraph::Models::DeviceCompliancePolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Require that devices have enabled device threat protection .
            @device_threat_protection_enabled
            ## 
            # Device threat protection levels for the Device Threat Protection API.
            @device_threat_protection_required_security_level
            ## 
            # Indicates whether or not to require a managed email profile.
            @managed_email_profile_required
            ## 
            # Maximum IOS version.
            @os_maximum_version
            ## 
            # Minimum IOS version.
            @os_minimum_version
            ## 
            # Indicates whether or not to block simple passcodes.
            @passcode_block_simple
            ## 
            # Number of days before the passcode expires. Valid values 1 to 65535
            @passcode_expiration_days
            ## 
            # The number of character sets required in the password.
            @passcode_minimum_character_set_count
            ## 
            # Minimum length of passcode. Valid values 4 to 14
            @passcode_minimum_length
            ## 
            # Minutes of inactivity before a passcode is required.
            @passcode_minutes_of_inactivity_before_lock
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
            # Devices must not be jailbroken or rooted.
            @security_block_jailbroken_devices
            ## 
            ## Instantiates a new IosCompliancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosCompliancePolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_compliance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosCompliancePolicy.new
            end
            ## 
            ## Gets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection .
            ## @return a boolean
            ## 
            def device_threat_protection_enabled
                return @device_threat_protection_enabled
            end
            ## 
            ## Sets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection .
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
                    "managedEmailProfileRequired" => lambda {|n| @managed_email_profile_required = n.get_boolean_value() },
                    "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                    "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                    "passcodeBlockSimple" => lambda {|n| @passcode_block_simple = n.get_boolean_value() },
                    "passcodeExpirationDays" => lambda {|n| @passcode_expiration_days = n.get_number_value() },
                    "passcodeMinimumCharacterSetCount" => lambda {|n| @passcode_minimum_character_set_count = n.get_number_value() },
                    "passcodeMinimumLength" => lambda {|n| @passcode_minimum_length = n.get_number_value() },
                    "passcodeMinutesOfInactivityBeforeLock" => lambda {|n| @passcode_minutes_of_inactivity_before_lock = n.get_number_value() },
                    "passcodePreviousPasscodeBlockCount" => lambda {|n| @passcode_previous_passcode_block_count = n.get_number_value() },
                    "passcodeRequired" => lambda {|n| @passcode_required = n.get_boolean_value() },
                    "passcodeRequiredType" => lambda {|n| @passcode_required_type = n.get_enum_value(MicrosoftGraph::Models::RequiredPasswordType) },
                    "securityBlockJailbrokenDevices" => lambda {|n| @security_block_jailbroken_devices = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the managedEmailProfileRequired property value. Indicates whether or not to require a managed email profile.
            ## @return a boolean
            ## 
            def managed_email_profile_required
                return @managed_email_profile_required
            end
            ## 
            ## Sets the managedEmailProfileRequired property value. Indicates whether or not to require a managed email profile.
            ## @param value Value to set for the managed_email_profile_required property.
            ## @return a void
            ## 
            def managed_email_profile_required=(value)
                @managed_email_profile_required = value
            end
            ## 
            ## Gets the osMaximumVersion property value. Maximum IOS version.
            ## @return a string
            ## 
            def os_maximum_version
                return @os_maximum_version
            end
            ## 
            ## Sets the osMaximumVersion property value. Maximum IOS version.
            ## @param value Value to set for the os_maximum_version property.
            ## @return a void
            ## 
            def os_maximum_version=(value)
                @os_maximum_version = value
            end
            ## 
            ## Gets the osMinimumVersion property value. Minimum IOS version.
            ## @return a string
            ## 
            def os_minimum_version
                return @os_minimum_version
            end
            ## 
            ## Sets the osMinimumVersion property value. Minimum IOS version.
            ## @param value Value to set for the os_minimum_version property.
            ## @return a void
            ## 
            def os_minimum_version=(value)
                @os_minimum_version = value
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
            ## Gets the passcodeMinimumCharacterSetCount property value. The number of character sets required in the password.
            ## @return a integer
            ## 
            def passcode_minimum_character_set_count
                return @passcode_minimum_character_set_count
            end
            ## 
            ## Sets the passcodeMinimumCharacterSetCount property value. The number of character sets required in the password.
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("deviceThreatProtectionEnabled", @device_threat_protection_enabled)
                writer.write_enum_value("deviceThreatProtectionRequiredSecurityLevel", @device_threat_protection_required_security_level)
                writer.write_boolean_value("managedEmailProfileRequired", @managed_email_profile_required)
                writer.write_string_value("osMaximumVersion", @os_maximum_version)
                writer.write_string_value("osMinimumVersion", @os_minimum_version)
                writer.write_boolean_value("passcodeBlockSimple", @passcode_block_simple)
                writer.write_number_value("passcodeExpirationDays", @passcode_expiration_days)
                writer.write_number_value("passcodeMinimumCharacterSetCount", @passcode_minimum_character_set_count)
                writer.write_number_value("passcodeMinimumLength", @passcode_minimum_length)
                writer.write_number_value("passcodeMinutesOfInactivityBeforeLock", @passcode_minutes_of_inactivity_before_lock)
                writer.write_number_value("passcodePreviousPasscodeBlockCount", @passcode_previous_passcode_block_count)
                writer.write_boolean_value("passcodeRequired", @passcode_required)
                writer.write_enum_value("passcodeRequiredType", @passcode_required_type)
                writer.write_boolean_value("securityBlockJailbrokenDevices", @security_block_jailbroken_devices)
            end
        end
    end
end
