require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsInformationProtectionPolicy < MicrosoftGraph::Models::WindowsInformationProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Offline interval before app data is wiped (days)
            @days_without_contact_before_unenroll
            ## 
            # Enrollment url for the MDM
            @mdm_enrollment_url
            ## 
            # Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked.   Range is an integer X where 0 <= X <= 999.
            @minutes_of_inactivity_before_device_lock
            ## 
            # Integer value that specifies the number of past PINs that can be associated to a user account that can't be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs is not required. This node was added in Windows 10, version 1511. Default is 0.
            @number_of_past_pins_remembered
            ## 
            # The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality. Range is an integer X where 4 <= X <= 16 for desktop and 0 <= X <= 999 for mobile devices.
            @password_maximum_attempt_count
            ## 
            # Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user's PIN will never expire. This node was added in Windows 10, version 1511. Default is 0.
            @pin_expiration_days
            ## 
            # Pin Character Requirements
            @pin_lowercase_letters
            ## 
            # Integer value that sets the minimum number of characters required for the PIN. Default value is 4. The lowest number you can configure for this policy setting is 4. The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.
            @pin_minimum_length
            ## 
            # Pin Character Requirements
            @pin_special_characters
            ## 
            # Pin Character Requirements
            @pin_uppercase_letters
            ## 
            # New property in RS2, pending documentation
            @revoke_on_mdm_handoff_disabled
            ## 
            # Boolean value that sets Windows Hello for Business as a method for signing into Windows.
            @windows_hello_for_business_blocked
            ## 
            ## Instantiates a new WindowsInformationProtectionPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsInformationProtectionPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionPolicy.new
            end
            ## 
            ## Gets the daysWithoutContactBeforeUnenroll property value. Offline interval before app data is wiped (days)
            ## @return a integer
            ## 
            def days_without_contact_before_unenroll
                return @days_without_contact_before_unenroll
            end
            ## 
            ## Sets the daysWithoutContactBeforeUnenroll property value. Offline interval before app data is wiped (days)
            ## @param value Value to set for the days_without_contact_before_unenroll property.
            ## @return a void
            ## 
            def days_without_contact_before_unenroll=(value)
                @days_without_contact_before_unenroll = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "daysWithoutContactBeforeUnenroll" => lambda {|n| @days_without_contact_before_unenroll = n.get_number_value() },
                    "mdmEnrollmentUrl" => lambda {|n| @mdm_enrollment_url = n.get_string_value() },
                    "minutesOfInactivityBeforeDeviceLock" => lambda {|n| @minutes_of_inactivity_before_device_lock = n.get_number_value() },
                    "numberOfPastPinsRemembered" => lambda {|n| @number_of_past_pins_remembered = n.get_number_value() },
                    "passwordMaximumAttemptCount" => lambda {|n| @password_maximum_attempt_count = n.get_number_value() },
                    "pinExpirationDays" => lambda {|n| @pin_expiration_days = n.get_number_value() },
                    "pinLowercaseLetters" => lambda {|n| @pin_lowercase_letters = n.get_enum_value(MicrosoftGraph::Models::WindowsInformationProtectionPinCharacterRequirements) },
                    "pinMinimumLength" => lambda {|n| @pin_minimum_length = n.get_number_value() },
                    "pinSpecialCharacters" => lambda {|n| @pin_special_characters = n.get_enum_value(MicrosoftGraph::Models::WindowsInformationProtectionPinCharacterRequirements) },
                    "pinUppercaseLetters" => lambda {|n| @pin_uppercase_letters = n.get_enum_value(MicrosoftGraph::Models::WindowsInformationProtectionPinCharacterRequirements) },
                    "revokeOnMdmHandoffDisabled" => lambda {|n| @revoke_on_mdm_handoff_disabled = n.get_boolean_value() },
                    "windowsHelloForBusinessBlocked" => lambda {|n| @windows_hello_for_business_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the mdmEnrollmentUrl property value. Enrollment url for the MDM
            ## @return a string
            ## 
            def mdm_enrollment_url
                return @mdm_enrollment_url
            end
            ## 
            ## Sets the mdmEnrollmentUrl property value. Enrollment url for the MDM
            ## @param value Value to set for the mdm_enrollment_url property.
            ## @return a void
            ## 
            def mdm_enrollment_url=(value)
                @mdm_enrollment_url = value
            end
            ## 
            ## Gets the minutesOfInactivityBeforeDeviceLock property value. Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked.   Range is an integer X where 0 <= X <= 999.
            ## @return a integer
            ## 
            def minutes_of_inactivity_before_device_lock
                return @minutes_of_inactivity_before_device_lock
            end
            ## 
            ## Sets the minutesOfInactivityBeforeDeviceLock property value. Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked.   Range is an integer X where 0 <= X <= 999.
            ## @param value Value to set for the minutes_of_inactivity_before_device_lock property.
            ## @return a void
            ## 
            def minutes_of_inactivity_before_device_lock=(value)
                @minutes_of_inactivity_before_device_lock = value
            end
            ## 
            ## Gets the numberOfPastPinsRemembered property value. Integer value that specifies the number of past PINs that can be associated to a user account that can't be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs is not required. This node was added in Windows 10, version 1511. Default is 0.
            ## @return a integer
            ## 
            def number_of_past_pins_remembered
                return @number_of_past_pins_remembered
            end
            ## 
            ## Sets the numberOfPastPinsRemembered property value. Integer value that specifies the number of past PINs that can be associated to a user account that can't be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs is not required. This node was added in Windows 10, version 1511. Default is 0.
            ## @param value Value to set for the number_of_past_pins_remembered property.
            ## @return a void
            ## 
            def number_of_past_pins_remembered=(value)
                @number_of_past_pins_remembered = value
            end
            ## 
            ## Gets the passwordMaximumAttemptCount property value. The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality. Range is an integer X where 4 <= X <= 16 for desktop and 0 <= X <= 999 for mobile devices.
            ## @return a integer
            ## 
            def password_maximum_attempt_count
                return @password_maximum_attempt_count
            end
            ## 
            ## Sets the passwordMaximumAttemptCount property value. The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality. Range is an integer X where 4 <= X <= 16 for desktop and 0 <= X <= 999 for mobile devices.
            ## @param value Value to set for the password_maximum_attempt_count property.
            ## @return a void
            ## 
            def password_maximum_attempt_count=(value)
                @password_maximum_attempt_count = value
            end
            ## 
            ## Gets the pinExpirationDays property value. Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user's PIN will never expire. This node was added in Windows 10, version 1511. Default is 0.
            ## @return a integer
            ## 
            def pin_expiration_days
                return @pin_expiration_days
            end
            ## 
            ## Sets the pinExpirationDays property value. Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user's PIN will never expire. This node was added in Windows 10, version 1511. Default is 0.
            ## @param value Value to set for the pin_expiration_days property.
            ## @return a void
            ## 
            def pin_expiration_days=(value)
                @pin_expiration_days = value
            end
            ## 
            ## Gets the pinLowercaseLetters property value. Pin Character Requirements
            ## @return a windows_information_protection_pin_character_requirements
            ## 
            def pin_lowercase_letters
                return @pin_lowercase_letters
            end
            ## 
            ## Sets the pinLowercaseLetters property value. Pin Character Requirements
            ## @param value Value to set for the pin_lowercase_letters property.
            ## @return a void
            ## 
            def pin_lowercase_letters=(value)
                @pin_lowercase_letters = value
            end
            ## 
            ## Gets the pinMinimumLength property value. Integer value that sets the minimum number of characters required for the PIN. Default value is 4. The lowest number you can configure for this policy setting is 4. The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.
            ## @return a integer
            ## 
            def pin_minimum_length
                return @pin_minimum_length
            end
            ## 
            ## Sets the pinMinimumLength property value. Integer value that sets the minimum number of characters required for the PIN. Default value is 4. The lowest number you can configure for this policy setting is 4. The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.
            ## @param value Value to set for the pin_minimum_length property.
            ## @return a void
            ## 
            def pin_minimum_length=(value)
                @pin_minimum_length = value
            end
            ## 
            ## Gets the pinSpecialCharacters property value. Pin Character Requirements
            ## @return a windows_information_protection_pin_character_requirements
            ## 
            def pin_special_characters
                return @pin_special_characters
            end
            ## 
            ## Sets the pinSpecialCharacters property value. Pin Character Requirements
            ## @param value Value to set for the pin_special_characters property.
            ## @return a void
            ## 
            def pin_special_characters=(value)
                @pin_special_characters = value
            end
            ## 
            ## Gets the pinUppercaseLetters property value. Pin Character Requirements
            ## @return a windows_information_protection_pin_character_requirements
            ## 
            def pin_uppercase_letters
                return @pin_uppercase_letters
            end
            ## 
            ## Sets the pinUppercaseLetters property value. Pin Character Requirements
            ## @param value Value to set for the pin_uppercase_letters property.
            ## @return a void
            ## 
            def pin_uppercase_letters=(value)
                @pin_uppercase_letters = value
            end
            ## 
            ## Gets the revokeOnMdmHandoffDisabled property value. New property in RS2, pending documentation
            ## @return a boolean
            ## 
            def revoke_on_mdm_handoff_disabled
                return @revoke_on_mdm_handoff_disabled
            end
            ## 
            ## Sets the revokeOnMdmHandoffDisabled property value. New property in RS2, pending documentation
            ## @param value Value to set for the revoke_on_mdm_handoff_disabled property.
            ## @return a void
            ## 
            def revoke_on_mdm_handoff_disabled=(value)
                @revoke_on_mdm_handoff_disabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("daysWithoutContactBeforeUnenroll", @days_without_contact_before_unenroll)
                writer.write_string_value("mdmEnrollmentUrl", @mdm_enrollment_url)
                writer.write_number_value("minutesOfInactivityBeforeDeviceLock", @minutes_of_inactivity_before_device_lock)
                writer.write_number_value("numberOfPastPinsRemembered", @number_of_past_pins_remembered)
                writer.write_number_value("passwordMaximumAttemptCount", @password_maximum_attempt_count)
                writer.write_number_value("pinExpirationDays", @pin_expiration_days)
                writer.write_enum_value("pinLowercaseLetters", @pin_lowercase_letters)
                writer.write_number_value("pinMinimumLength", @pin_minimum_length)
                writer.write_enum_value("pinSpecialCharacters", @pin_special_characters)
                writer.write_enum_value("pinUppercaseLetters", @pin_uppercase_letters)
                writer.write_boolean_value("revokeOnMdmHandoffDisabled", @revoke_on_mdm_handoff_disabled)
                writer.write_boolean_value("windowsHelloForBusinessBlocked", @windows_hello_for_business_blocked)
            end
            ## 
            ## Gets the windowsHelloForBusinessBlocked property value. Boolean value that sets Windows Hello for Business as a method for signing into Windows.
            ## @return a boolean
            ## 
            def windows_hello_for_business_blocked
                return @windows_hello_for_business_blocked
            end
            ## 
            ## Sets the windowsHelloForBusinessBlocked property value. Boolean value that sets Windows Hello for Business as a method for signing into Windows.
            ## @param value Value to set for the windows_hello_for_business_blocked property.
            ## @return a void
            ## 
            def windows_hello_for_business_blocked=(value)
                @windows_hello_for_business_blocked = value
            end
        end
    end
end
