require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AndroidWorkProfileGeneralDeviceConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
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
            # Android Work Profile required password type.
            @password_required_type
            ## 
            # Number of sign in failures allowed before factory reset. Valid values 1 to 16
            @password_sign_in_failure_count_before_factory_reset
            ## 
            # Require the Android Verify apps feature is turned on.
            @security_require_verify_apps
            ## 
            # Block users from adding/removing accounts in work profile.
            @work_profile_block_adding_accounts
            ## 
            # Block work profile camera.
            @work_profile_block_camera
            ## 
            # Block display work profile caller ID in personal profile.
            @work_profile_block_cross_profile_caller_id
            ## 
            # Block work profile contacts availability in personal profile.
            @work_profile_block_cross_profile_contacts_search
            ## 
            # Boolean that indicates if the setting disallow cross profile copy/paste is enabled.
            @work_profile_block_cross_profile_copy_paste
            ## 
            # Indicates whether or not to block notifications while device locked.
            @work_profile_block_notifications_while_device_locked
            ## 
            # Block screen capture in work profile.
            @work_profile_block_screen_capture
            ## 
            # Allow bluetooth devices to access enterprise contacts.
            @work_profile_bluetooth_enable_contact_sharing
            ## 
            # Android Work Profile cross profile data sharing type.
            @work_profile_data_sharing_type
            ## 
            # Android Work Profile default app permission policy type.
            @work_profile_default_app_permission_policy
            ## 
            # Indicates whether or not to block fingerprint unlock for work profile.
            @work_profile_password_block_fingerprint_unlock
            ## 
            # Indicates whether or not to block Smart Lock and other trust agents for work profile.
            @work_profile_password_block_trust_agents
            ## 
            # Number of days before the work profile password expires. Valid values 1 to 365
            @work_profile_password_expiration_days
            ## 
            # Minimum # of letter characters required in work profile password. Valid values 1 to 10
            @work_profile_password_min_letter_characters
            ## 
            # Minimum # of lower-case characters required in work profile password. Valid values 1 to 10
            @work_profile_password_min_lower_case_characters
            ## 
            # Minimum # of non-letter characters required in work profile password. Valid values 1 to 10
            @work_profile_password_min_non_letter_characters
            ## 
            # Minimum # of numeric characters required in work profile password. Valid values 1 to 10
            @work_profile_password_min_numeric_characters
            ## 
            # Minimum # of symbols required in work profile password. Valid values 1 to 10
            @work_profile_password_min_symbol_characters
            ## 
            # Minimum # of upper-case characters required in work profile password. Valid values 1 to 10
            @work_profile_password_min_upper_case_characters
            ## 
            # Minimum length of work profile password. Valid values 4 to 16
            @work_profile_password_minimum_length
            ## 
            # Minutes of inactivity before the screen times out.
            @work_profile_password_minutes_of_inactivity_before_screen_timeout
            ## 
            # Number of previous work profile passwords to block. Valid values 0 to 24
            @work_profile_password_previous_password_block_count
            ## 
            # Android Work Profile required password type.
            @work_profile_password_required_type
            ## 
            # Number of sign in failures allowed before work profile is removed and all corporate data deleted. Valid values 1 to 16
            @work_profile_password_sign_in_failure_count_before_factory_reset
            ## 
            # Password is required or not for work profile
            @work_profile_require_password
            ## 
            ## Instantiates a new AndroidWorkProfileGeneralDeviceConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_work_profile_general_device_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidWorkProfileGeneralDeviceConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "passwordBlockFingerprintUnlock" => lambda {|n| @password_block_fingerprint_unlock = n.get_boolean_value() },
                    "passwordBlockTrustAgents" => lambda {|n| @password_block_trust_agents = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraph::Models::AndroidWorkProfileRequiredPasswordType) },
                    "passwordSignInFailureCountBeforeFactoryReset" => lambda {|n| @password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                    "securityRequireVerifyApps" => lambda {|n| @security_require_verify_apps = n.get_boolean_value() },
                    "workProfileBlockAddingAccounts" => lambda {|n| @work_profile_block_adding_accounts = n.get_boolean_value() },
                    "workProfileBlockCamera" => lambda {|n| @work_profile_block_camera = n.get_boolean_value() },
                    "workProfileBlockCrossProfileCallerId" => lambda {|n| @work_profile_block_cross_profile_caller_id = n.get_boolean_value() },
                    "workProfileBlockCrossProfileContactsSearch" => lambda {|n| @work_profile_block_cross_profile_contacts_search = n.get_boolean_value() },
                    "workProfileBlockCrossProfileCopyPaste" => lambda {|n| @work_profile_block_cross_profile_copy_paste = n.get_boolean_value() },
                    "workProfileBlockNotificationsWhileDeviceLocked" => lambda {|n| @work_profile_block_notifications_while_device_locked = n.get_boolean_value() },
                    "workProfileBlockScreenCapture" => lambda {|n| @work_profile_block_screen_capture = n.get_boolean_value() },
                    "workProfileBluetoothEnableContactSharing" => lambda {|n| @work_profile_bluetooth_enable_contact_sharing = n.get_boolean_value() },
                    "workProfileDataSharingType" => lambda {|n| @work_profile_data_sharing_type = n.get_enum_value(MicrosoftGraph::Models::AndroidWorkProfileCrossProfileDataSharingType) },
                    "workProfileDefaultAppPermissionPolicy" => lambda {|n| @work_profile_default_app_permission_policy = n.get_enum_value(MicrosoftGraph::Models::AndroidWorkProfileDefaultAppPermissionPolicyType) },
                    "workProfilePasswordBlockFingerprintUnlock" => lambda {|n| @work_profile_password_block_fingerprint_unlock = n.get_boolean_value() },
                    "workProfilePasswordBlockTrustAgents" => lambda {|n| @work_profile_password_block_trust_agents = n.get_boolean_value() },
                    "workProfilePasswordExpirationDays" => lambda {|n| @work_profile_password_expiration_days = n.get_number_value() },
                    "workProfilePasswordMinLetterCharacters" => lambda {|n| @work_profile_password_min_letter_characters = n.get_number_value() },
                    "workProfilePasswordMinLowerCaseCharacters" => lambda {|n| @work_profile_password_min_lower_case_characters = n.get_number_value() },
                    "workProfilePasswordMinNonLetterCharacters" => lambda {|n| @work_profile_password_min_non_letter_characters = n.get_number_value() },
                    "workProfilePasswordMinNumericCharacters" => lambda {|n| @work_profile_password_min_numeric_characters = n.get_number_value() },
                    "workProfilePasswordMinSymbolCharacters" => lambda {|n| @work_profile_password_min_symbol_characters = n.get_number_value() },
                    "workProfilePasswordMinUpperCaseCharacters" => lambda {|n| @work_profile_password_min_upper_case_characters = n.get_number_value() },
                    "workProfilePasswordMinimumLength" => lambda {|n| @work_profile_password_minimum_length = n.get_number_value() },
                    "workProfilePasswordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @work_profile_password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "workProfilePasswordPreviousPasswordBlockCount" => lambda {|n| @work_profile_password_previous_password_block_count = n.get_number_value() },
                    "workProfilePasswordRequiredType" => lambda {|n| @work_profile_password_required_type = n.get_enum_value(MicrosoftGraph::Models::AndroidWorkProfileRequiredPasswordType) },
                    "workProfilePasswordSignInFailureCountBeforeFactoryReset" => lambda {|n| @work_profile_password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                    "workProfileRequirePassword" => lambda {|n| @work_profile_require_password = n.get_boolean_value() },
                })
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
            ## Gets the passwordRequiredType property value. Android Work Profile required password type.
            ## @return a android_work_profile_required_password_type
            ## 
            def password_required_type
                return @password_required_type
            end
            ## 
            ## Sets the passwordRequiredType property value. Android Work Profile required password type.
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
                writer.write_boolean_value("passwordBlockFingerprintUnlock", @password_block_fingerprint_unlock)
                writer.write_boolean_value("passwordBlockTrustAgents", @password_block_trust_agents)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_number_value("passwordSignInFailureCountBeforeFactoryReset", @password_sign_in_failure_count_before_factory_reset)
                writer.write_boolean_value("securityRequireVerifyApps", @security_require_verify_apps)
                writer.write_boolean_value("workProfileBlockAddingAccounts", @work_profile_block_adding_accounts)
                writer.write_boolean_value("workProfileBlockCamera", @work_profile_block_camera)
                writer.write_boolean_value("workProfileBlockCrossProfileCallerId", @work_profile_block_cross_profile_caller_id)
                writer.write_boolean_value("workProfileBlockCrossProfileContactsSearch", @work_profile_block_cross_profile_contacts_search)
                writer.write_boolean_value("workProfileBlockCrossProfileCopyPaste", @work_profile_block_cross_profile_copy_paste)
                writer.write_boolean_value("workProfileBlockNotificationsWhileDeviceLocked", @work_profile_block_notifications_while_device_locked)
                writer.write_boolean_value("workProfileBlockScreenCapture", @work_profile_block_screen_capture)
                writer.write_boolean_value("workProfileBluetoothEnableContactSharing", @work_profile_bluetooth_enable_contact_sharing)
                writer.write_enum_value("workProfileDataSharingType", @work_profile_data_sharing_type)
                writer.write_enum_value("workProfileDefaultAppPermissionPolicy", @work_profile_default_app_permission_policy)
                writer.write_boolean_value("workProfilePasswordBlockFingerprintUnlock", @work_profile_password_block_fingerprint_unlock)
                writer.write_boolean_value("workProfilePasswordBlockTrustAgents", @work_profile_password_block_trust_agents)
                writer.write_number_value("workProfilePasswordExpirationDays", @work_profile_password_expiration_days)
                writer.write_number_value("workProfilePasswordMinLetterCharacters", @work_profile_password_min_letter_characters)
                writer.write_number_value("workProfilePasswordMinLowerCaseCharacters", @work_profile_password_min_lower_case_characters)
                writer.write_number_value("workProfilePasswordMinNonLetterCharacters", @work_profile_password_min_non_letter_characters)
                writer.write_number_value("workProfilePasswordMinNumericCharacters", @work_profile_password_min_numeric_characters)
                writer.write_number_value("workProfilePasswordMinSymbolCharacters", @work_profile_password_min_symbol_characters)
                writer.write_number_value("workProfilePasswordMinUpperCaseCharacters", @work_profile_password_min_upper_case_characters)
                writer.write_number_value("workProfilePasswordMinimumLength", @work_profile_password_minimum_length)
                writer.write_number_value("workProfilePasswordMinutesOfInactivityBeforeScreenTimeout", @work_profile_password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("workProfilePasswordPreviousPasswordBlockCount", @work_profile_password_previous_password_block_count)
                writer.write_enum_value("workProfilePasswordRequiredType", @work_profile_password_required_type)
                writer.write_number_value("workProfilePasswordSignInFailureCountBeforeFactoryReset", @work_profile_password_sign_in_failure_count_before_factory_reset)
                writer.write_boolean_value("workProfileRequirePassword", @work_profile_require_password)
            end
            ## 
            ## Gets the workProfileBlockAddingAccounts property value. Block users from adding/removing accounts in work profile.
            ## @return a boolean
            ## 
            def work_profile_block_adding_accounts
                return @work_profile_block_adding_accounts
            end
            ## 
            ## Sets the workProfileBlockAddingAccounts property value. Block users from adding/removing accounts in work profile.
            ## @param value Value to set for the work_profile_block_adding_accounts property.
            ## @return a void
            ## 
            def work_profile_block_adding_accounts=(value)
                @work_profile_block_adding_accounts = value
            end
            ## 
            ## Gets the workProfileBlockCamera property value. Block work profile camera.
            ## @return a boolean
            ## 
            def work_profile_block_camera
                return @work_profile_block_camera
            end
            ## 
            ## Sets the workProfileBlockCamera property value. Block work profile camera.
            ## @param value Value to set for the work_profile_block_camera property.
            ## @return a void
            ## 
            def work_profile_block_camera=(value)
                @work_profile_block_camera = value
            end
            ## 
            ## Gets the workProfileBlockCrossProfileCallerId property value. Block display work profile caller ID in personal profile.
            ## @return a boolean
            ## 
            def work_profile_block_cross_profile_caller_id
                return @work_profile_block_cross_profile_caller_id
            end
            ## 
            ## Sets the workProfileBlockCrossProfileCallerId property value. Block display work profile caller ID in personal profile.
            ## @param value Value to set for the work_profile_block_cross_profile_caller_id property.
            ## @return a void
            ## 
            def work_profile_block_cross_profile_caller_id=(value)
                @work_profile_block_cross_profile_caller_id = value
            end
            ## 
            ## Gets the workProfileBlockCrossProfileContactsSearch property value. Block work profile contacts availability in personal profile.
            ## @return a boolean
            ## 
            def work_profile_block_cross_profile_contacts_search
                return @work_profile_block_cross_profile_contacts_search
            end
            ## 
            ## Sets the workProfileBlockCrossProfileContactsSearch property value. Block work profile contacts availability in personal profile.
            ## @param value Value to set for the work_profile_block_cross_profile_contacts_search property.
            ## @return a void
            ## 
            def work_profile_block_cross_profile_contacts_search=(value)
                @work_profile_block_cross_profile_contacts_search = value
            end
            ## 
            ## Gets the workProfileBlockCrossProfileCopyPaste property value. Boolean that indicates if the setting disallow cross profile copy/paste is enabled.
            ## @return a boolean
            ## 
            def work_profile_block_cross_profile_copy_paste
                return @work_profile_block_cross_profile_copy_paste
            end
            ## 
            ## Sets the workProfileBlockCrossProfileCopyPaste property value. Boolean that indicates if the setting disallow cross profile copy/paste is enabled.
            ## @param value Value to set for the work_profile_block_cross_profile_copy_paste property.
            ## @return a void
            ## 
            def work_profile_block_cross_profile_copy_paste=(value)
                @work_profile_block_cross_profile_copy_paste = value
            end
            ## 
            ## Gets the workProfileBlockNotificationsWhileDeviceLocked property value. Indicates whether or not to block notifications while device locked.
            ## @return a boolean
            ## 
            def work_profile_block_notifications_while_device_locked
                return @work_profile_block_notifications_while_device_locked
            end
            ## 
            ## Sets the workProfileBlockNotificationsWhileDeviceLocked property value. Indicates whether or not to block notifications while device locked.
            ## @param value Value to set for the work_profile_block_notifications_while_device_locked property.
            ## @return a void
            ## 
            def work_profile_block_notifications_while_device_locked=(value)
                @work_profile_block_notifications_while_device_locked = value
            end
            ## 
            ## Gets the workProfileBlockScreenCapture property value. Block screen capture in work profile.
            ## @return a boolean
            ## 
            def work_profile_block_screen_capture
                return @work_profile_block_screen_capture
            end
            ## 
            ## Sets the workProfileBlockScreenCapture property value. Block screen capture in work profile.
            ## @param value Value to set for the work_profile_block_screen_capture property.
            ## @return a void
            ## 
            def work_profile_block_screen_capture=(value)
                @work_profile_block_screen_capture = value
            end
            ## 
            ## Gets the workProfileBluetoothEnableContactSharing property value. Allow bluetooth devices to access enterprise contacts.
            ## @return a boolean
            ## 
            def work_profile_bluetooth_enable_contact_sharing
                return @work_profile_bluetooth_enable_contact_sharing
            end
            ## 
            ## Sets the workProfileBluetoothEnableContactSharing property value. Allow bluetooth devices to access enterprise contacts.
            ## @param value Value to set for the work_profile_bluetooth_enable_contact_sharing property.
            ## @return a void
            ## 
            def work_profile_bluetooth_enable_contact_sharing=(value)
                @work_profile_bluetooth_enable_contact_sharing = value
            end
            ## 
            ## Gets the workProfileDataSharingType property value. Android Work Profile cross profile data sharing type.
            ## @return a android_work_profile_cross_profile_data_sharing_type
            ## 
            def work_profile_data_sharing_type
                return @work_profile_data_sharing_type
            end
            ## 
            ## Sets the workProfileDataSharingType property value. Android Work Profile cross profile data sharing type.
            ## @param value Value to set for the work_profile_data_sharing_type property.
            ## @return a void
            ## 
            def work_profile_data_sharing_type=(value)
                @work_profile_data_sharing_type = value
            end
            ## 
            ## Gets the workProfileDefaultAppPermissionPolicy property value. Android Work Profile default app permission policy type.
            ## @return a android_work_profile_default_app_permission_policy_type
            ## 
            def work_profile_default_app_permission_policy
                return @work_profile_default_app_permission_policy
            end
            ## 
            ## Sets the workProfileDefaultAppPermissionPolicy property value. Android Work Profile default app permission policy type.
            ## @param value Value to set for the work_profile_default_app_permission_policy property.
            ## @return a void
            ## 
            def work_profile_default_app_permission_policy=(value)
                @work_profile_default_app_permission_policy = value
            end
            ## 
            ## Gets the workProfilePasswordBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock for work profile.
            ## @return a boolean
            ## 
            def work_profile_password_block_fingerprint_unlock
                return @work_profile_password_block_fingerprint_unlock
            end
            ## 
            ## Sets the workProfilePasswordBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock for work profile.
            ## @param value Value to set for the work_profile_password_block_fingerprint_unlock property.
            ## @return a void
            ## 
            def work_profile_password_block_fingerprint_unlock=(value)
                @work_profile_password_block_fingerprint_unlock = value
            end
            ## 
            ## Gets the workProfilePasswordBlockTrustAgents property value. Indicates whether or not to block Smart Lock and other trust agents for work profile.
            ## @return a boolean
            ## 
            def work_profile_password_block_trust_agents
                return @work_profile_password_block_trust_agents
            end
            ## 
            ## Sets the workProfilePasswordBlockTrustAgents property value. Indicates whether or not to block Smart Lock and other trust agents for work profile.
            ## @param value Value to set for the work_profile_password_block_trust_agents property.
            ## @return a void
            ## 
            def work_profile_password_block_trust_agents=(value)
                @work_profile_password_block_trust_agents = value
            end
            ## 
            ## Gets the workProfilePasswordExpirationDays property value. Number of days before the work profile password expires. Valid values 1 to 365
            ## @return a integer
            ## 
            def work_profile_password_expiration_days
                return @work_profile_password_expiration_days
            end
            ## 
            ## Sets the workProfilePasswordExpirationDays property value. Number of days before the work profile password expires. Valid values 1 to 365
            ## @param value Value to set for the work_profile_password_expiration_days property.
            ## @return a void
            ## 
            def work_profile_password_expiration_days=(value)
                @work_profile_password_expiration_days = value
            end
            ## 
            ## Gets the workProfilePasswordMinLetterCharacters property value. Minimum # of letter characters required in work profile password. Valid values 1 to 10
            ## @return a integer
            ## 
            def work_profile_password_min_letter_characters
                return @work_profile_password_min_letter_characters
            end
            ## 
            ## Sets the workProfilePasswordMinLetterCharacters property value. Minimum # of letter characters required in work profile password. Valid values 1 to 10
            ## @param value Value to set for the work_profile_password_min_letter_characters property.
            ## @return a void
            ## 
            def work_profile_password_min_letter_characters=(value)
                @work_profile_password_min_letter_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinLowerCaseCharacters property value. Minimum # of lower-case characters required in work profile password. Valid values 1 to 10
            ## @return a integer
            ## 
            def work_profile_password_min_lower_case_characters
                return @work_profile_password_min_lower_case_characters
            end
            ## 
            ## Sets the workProfilePasswordMinLowerCaseCharacters property value. Minimum # of lower-case characters required in work profile password. Valid values 1 to 10
            ## @param value Value to set for the work_profile_password_min_lower_case_characters property.
            ## @return a void
            ## 
            def work_profile_password_min_lower_case_characters=(value)
                @work_profile_password_min_lower_case_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinNonLetterCharacters property value. Minimum # of non-letter characters required in work profile password. Valid values 1 to 10
            ## @return a integer
            ## 
            def work_profile_password_min_non_letter_characters
                return @work_profile_password_min_non_letter_characters
            end
            ## 
            ## Sets the workProfilePasswordMinNonLetterCharacters property value. Minimum # of non-letter characters required in work profile password. Valid values 1 to 10
            ## @param value Value to set for the work_profile_password_min_non_letter_characters property.
            ## @return a void
            ## 
            def work_profile_password_min_non_letter_characters=(value)
                @work_profile_password_min_non_letter_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinNumericCharacters property value. Minimum # of numeric characters required in work profile password. Valid values 1 to 10
            ## @return a integer
            ## 
            def work_profile_password_min_numeric_characters
                return @work_profile_password_min_numeric_characters
            end
            ## 
            ## Sets the workProfilePasswordMinNumericCharacters property value. Minimum # of numeric characters required in work profile password. Valid values 1 to 10
            ## @param value Value to set for the work_profile_password_min_numeric_characters property.
            ## @return a void
            ## 
            def work_profile_password_min_numeric_characters=(value)
                @work_profile_password_min_numeric_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinSymbolCharacters property value. Minimum # of symbols required in work profile password. Valid values 1 to 10
            ## @return a integer
            ## 
            def work_profile_password_min_symbol_characters
                return @work_profile_password_min_symbol_characters
            end
            ## 
            ## Sets the workProfilePasswordMinSymbolCharacters property value. Minimum # of symbols required in work profile password. Valid values 1 to 10
            ## @param value Value to set for the work_profile_password_min_symbol_characters property.
            ## @return a void
            ## 
            def work_profile_password_min_symbol_characters=(value)
                @work_profile_password_min_symbol_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinUpperCaseCharacters property value. Minimum # of upper-case characters required in work profile password. Valid values 1 to 10
            ## @return a integer
            ## 
            def work_profile_password_min_upper_case_characters
                return @work_profile_password_min_upper_case_characters
            end
            ## 
            ## Sets the workProfilePasswordMinUpperCaseCharacters property value. Minimum # of upper-case characters required in work profile password. Valid values 1 to 10
            ## @param value Value to set for the work_profile_password_min_upper_case_characters property.
            ## @return a void
            ## 
            def work_profile_password_min_upper_case_characters=(value)
                @work_profile_password_min_upper_case_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumLength property value. Minimum length of work profile password. Valid values 4 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_length
                return @work_profile_password_minimum_length
            end
            ## 
            ## Sets the workProfilePasswordMinimumLength property value. Minimum length of work profile password. Valid values 4 to 16
            ## @param value Value to set for the work_profile_password_minimum_length property.
            ## @return a void
            ## 
            def work_profile_password_minimum_length=(value)
                @work_profile_password_minimum_length = value
            end
            ## 
            ## Gets the workProfilePasswordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
            ## @return a integer
            ## 
            def work_profile_password_minutes_of_inactivity_before_screen_timeout
                return @work_profile_password_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the workProfilePasswordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
            ## @param value Value to set for the work_profile_password_minutes_of_inactivity_before_screen_timeout property.
            ## @return a void
            ## 
            def work_profile_password_minutes_of_inactivity_before_screen_timeout=(value)
                @work_profile_password_minutes_of_inactivity_before_screen_timeout = value
            end
            ## 
            ## Gets the workProfilePasswordPreviousPasswordBlockCount property value. Number of previous work profile passwords to block. Valid values 0 to 24
            ## @return a integer
            ## 
            def work_profile_password_previous_password_block_count
                return @work_profile_password_previous_password_block_count
            end
            ## 
            ## Sets the workProfilePasswordPreviousPasswordBlockCount property value. Number of previous work profile passwords to block. Valid values 0 to 24
            ## @param value Value to set for the work_profile_password_previous_password_block_count property.
            ## @return a void
            ## 
            def work_profile_password_previous_password_block_count=(value)
                @work_profile_password_previous_password_block_count = value
            end
            ## 
            ## Gets the workProfilePasswordRequiredType property value. Android Work Profile required password type.
            ## @return a android_work_profile_required_password_type
            ## 
            def work_profile_password_required_type
                return @work_profile_password_required_type
            end
            ## 
            ## Sets the workProfilePasswordRequiredType property value. Android Work Profile required password type.
            ## @param value Value to set for the work_profile_password_required_type property.
            ## @return a void
            ## 
            def work_profile_password_required_type=(value)
                @work_profile_password_required_type = value
            end
            ## 
            ## Gets the workProfilePasswordSignInFailureCountBeforeFactoryReset property value. Number of sign in failures allowed before work profile is removed and all corporate data deleted. Valid values 1 to 16
            ## @return a integer
            ## 
            def work_profile_password_sign_in_failure_count_before_factory_reset
                return @work_profile_password_sign_in_failure_count_before_factory_reset
            end
            ## 
            ## Sets the workProfilePasswordSignInFailureCountBeforeFactoryReset property value. Number of sign in failures allowed before work profile is removed and all corporate data deleted. Valid values 1 to 16
            ## @param value Value to set for the work_profile_password_sign_in_failure_count_before_factory_reset property.
            ## @return a void
            ## 
            def work_profile_password_sign_in_failure_count_before_factory_reset=(value)
                @work_profile_password_sign_in_failure_count_before_factory_reset = value
            end
            ## 
            ## Gets the workProfileRequirePassword property value. Password is required or not for work profile
            ## @return a boolean
            ## 
            def work_profile_require_password
                return @work_profile_require_password
            end
            ## 
            ## Sets the workProfileRequirePassword property value. Password is required or not for work profile
            ## @param value Value to set for the work_profile_require_password property.
            ## @return a void
            ## 
            def work_profile_require_password=(value)
                @work_profile_require_password = value
            end
        end
    end
end
