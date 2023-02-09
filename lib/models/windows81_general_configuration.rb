require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Windows81GeneralConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.
            @accounts_block_adding_non_microsoft_account_email
            ## 
            # Value indicating whether this policy only applies to Windows 8.1. This property is read-only.
            @apply_only_to_windows81
            ## 
            # Indicates whether or not to block auto fill.
            @browser_block_autofill
            ## 
            # Indicates whether or not to block automatic detection of Intranet sites.
            @browser_block_automatic_detection_of_intranet_sites
            ## 
            # Indicates whether or not to block enterprise mode access.
            @browser_block_enterprise_mode_access
            ## 
            # Indicates whether or not to Block the user from using JavaScript.
            @browser_block_java_script
            ## 
            # Indicates whether or not to block plug-ins.
            @browser_block_plugins
            ## 
            # Indicates whether or not to block popups.
            @browser_block_popups
            ## 
            # Indicates whether or not to Block the user from sending the do not track header.
            @browser_block_sending_do_not_track_header
            ## 
            # Indicates whether or not to block a single word entry on Intranet sites.
            @browser_block_single_word_entry_on_intranet_sites
            ## 
            # The enterprise mode site list location. Could be a local file, local network or http location.
            @browser_enterprise_mode_site_list_location
            ## 
            # Possible values for internet site security level.
            @browser_internet_security_level
            ## 
            # Possible values for site security level.
            @browser_intranet_security_level
            ## 
            # The logging report location.
            @browser_logging_report_location
            ## 
            # Indicates whether or not to require a firewall.
            @browser_require_firewall
            ## 
            # Indicates whether or not to require fraud warning.
            @browser_require_fraud_warning
            ## 
            # Indicates whether or not to require high security for restricted sites.
            @browser_require_high_security_for_restricted_sites
            ## 
            # Indicates whether or not to require the user to use the smart screen filter.
            @browser_require_smart_screen
            ## 
            # Possible values for site security level.
            @browser_trusted_sites_security_level
            ## 
            # Indicates whether or not to block data roaming.
            @cellular_block_data_roaming
            ## 
            # Indicates whether or not to block diagnostic data submission.
            @diagnostics_block_data_submission
            ## 
            # Indicates whether or not to Block the user from using a pictures password and pin.
            @password_block_picture_password_and_pin
            ## 
            # Password expiration in days.
            @password_expiration_days
            ## 
            # The number of character sets required in the password.
            @password_minimum_character_set_count
            ## 
            # The minimum password length.
            @password_minimum_length
            ## 
            # The minutes of inactivity before the screen times out.
            @password_minutes_of_inactivity_before_screen_timeout
            ## 
            # The number of previous passwords to prevent re-use of. Valid values 0 to 24
            @password_previous_password_block_count
            ## 
            # Possible values of required passwords.
            @password_required_type
            ## 
            # The number of sign in failures before factory reset.
            @password_sign_in_failure_count_before_factory_reset
            ## 
            # Indicates whether or not to require encryption on a mobile device.
            @storage_require_device_encryption
            ## 
            # Indicates whether or not to require automatic updates.
            @updates_require_automatic_updates
            ## 
            # Possible values for Windows user account control settings.
            @user_account_control_settings
            ## 
            # The work folders url.
            @work_folders_url
            ## 
            ## Gets the accountsBlockAddingNonMicrosoftAccountEmail property value. Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.
            ## @return a boolean
            ## 
            def accounts_block_adding_non_microsoft_account_email
                return @accounts_block_adding_non_microsoft_account_email
            end
            ## 
            ## Sets the accountsBlockAddingNonMicrosoftAccountEmail property value. Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.
            ## @param value Value to set for the accounts_block_adding_non_microsoft_account_email property.
            ## @return a void
            ## 
            def accounts_block_adding_non_microsoft_account_email=(value)
                @accounts_block_adding_non_microsoft_account_email = value
            end
            ## 
            ## Gets the applyOnlyToWindows81 property value. Value indicating whether this policy only applies to Windows 8.1. This property is read-only.
            ## @return a boolean
            ## 
            def apply_only_to_windows81
                return @apply_only_to_windows81
            end
            ## 
            ## Sets the applyOnlyToWindows81 property value. Value indicating whether this policy only applies to Windows 8.1. This property is read-only.
            ## @param value Value to set for the apply_only_to_windows81 property.
            ## @return a void
            ## 
            def apply_only_to_windows81=(value)
                @apply_only_to_windows81 = value
            end
            ## 
            ## Gets the browserBlockAutofill property value. Indicates whether or not to block auto fill.
            ## @return a boolean
            ## 
            def browser_block_autofill
                return @browser_block_autofill
            end
            ## 
            ## Sets the browserBlockAutofill property value. Indicates whether or not to block auto fill.
            ## @param value Value to set for the browser_block_autofill property.
            ## @return a void
            ## 
            def browser_block_autofill=(value)
                @browser_block_autofill = value
            end
            ## 
            ## Gets the browserBlockAutomaticDetectionOfIntranetSites property value. Indicates whether or not to block automatic detection of Intranet sites.
            ## @return a boolean
            ## 
            def browser_block_automatic_detection_of_intranet_sites
                return @browser_block_automatic_detection_of_intranet_sites
            end
            ## 
            ## Sets the browserBlockAutomaticDetectionOfIntranetSites property value. Indicates whether or not to block automatic detection of Intranet sites.
            ## @param value Value to set for the browser_block_automatic_detection_of_intranet_sites property.
            ## @return a void
            ## 
            def browser_block_automatic_detection_of_intranet_sites=(value)
                @browser_block_automatic_detection_of_intranet_sites = value
            end
            ## 
            ## Gets the browserBlockEnterpriseModeAccess property value. Indicates whether or not to block enterprise mode access.
            ## @return a boolean
            ## 
            def browser_block_enterprise_mode_access
                return @browser_block_enterprise_mode_access
            end
            ## 
            ## Sets the browserBlockEnterpriseModeAccess property value. Indicates whether or not to block enterprise mode access.
            ## @param value Value to set for the browser_block_enterprise_mode_access property.
            ## @return a void
            ## 
            def browser_block_enterprise_mode_access=(value)
                @browser_block_enterprise_mode_access = value
            end
            ## 
            ## Gets the browserBlockJavaScript property value. Indicates whether or not to Block the user from using JavaScript.
            ## @return a boolean
            ## 
            def browser_block_java_script
                return @browser_block_java_script
            end
            ## 
            ## Sets the browserBlockJavaScript property value. Indicates whether or not to Block the user from using JavaScript.
            ## @param value Value to set for the browser_block_java_script property.
            ## @return a void
            ## 
            def browser_block_java_script=(value)
                @browser_block_java_script = value
            end
            ## 
            ## Gets the browserBlockPlugins property value. Indicates whether or not to block plug-ins.
            ## @return a boolean
            ## 
            def browser_block_plugins
                return @browser_block_plugins
            end
            ## 
            ## Sets the browserBlockPlugins property value. Indicates whether or not to block plug-ins.
            ## @param value Value to set for the browser_block_plugins property.
            ## @return a void
            ## 
            def browser_block_plugins=(value)
                @browser_block_plugins = value
            end
            ## 
            ## Gets the browserBlockPopups property value. Indicates whether or not to block popups.
            ## @return a boolean
            ## 
            def browser_block_popups
                return @browser_block_popups
            end
            ## 
            ## Sets the browserBlockPopups property value. Indicates whether or not to block popups.
            ## @param value Value to set for the browser_block_popups property.
            ## @return a void
            ## 
            def browser_block_popups=(value)
                @browser_block_popups = value
            end
            ## 
            ## Gets the browserBlockSendingDoNotTrackHeader property value. Indicates whether or not to Block the user from sending the do not track header.
            ## @return a boolean
            ## 
            def browser_block_sending_do_not_track_header
                return @browser_block_sending_do_not_track_header
            end
            ## 
            ## Sets the browserBlockSendingDoNotTrackHeader property value. Indicates whether or not to Block the user from sending the do not track header.
            ## @param value Value to set for the browser_block_sending_do_not_track_header property.
            ## @return a void
            ## 
            def browser_block_sending_do_not_track_header=(value)
                @browser_block_sending_do_not_track_header = value
            end
            ## 
            ## Gets the browserBlockSingleWordEntryOnIntranetSites property value. Indicates whether or not to block a single word entry on Intranet sites.
            ## @return a boolean
            ## 
            def browser_block_single_word_entry_on_intranet_sites
                return @browser_block_single_word_entry_on_intranet_sites
            end
            ## 
            ## Sets the browserBlockSingleWordEntryOnIntranetSites property value. Indicates whether or not to block a single word entry on Intranet sites.
            ## @param value Value to set for the browser_block_single_word_entry_on_intranet_sites property.
            ## @return a void
            ## 
            def browser_block_single_word_entry_on_intranet_sites=(value)
                @browser_block_single_word_entry_on_intranet_sites = value
            end
            ## 
            ## Gets the browserEnterpriseModeSiteListLocation property value. The enterprise mode site list location. Could be a local file, local network or http location.
            ## @return a string
            ## 
            def browser_enterprise_mode_site_list_location
                return @browser_enterprise_mode_site_list_location
            end
            ## 
            ## Sets the browserEnterpriseModeSiteListLocation property value. The enterprise mode site list location. Could be a local file, local network or http location.
            ## @param value Value to set for the browser_enterprise_mode_site_list_location property.
            ## @return a void
            ## 
            def browser_enterprise_mode_site_list_location=(value)
                @browser_enterprise_mode_site_list_location = value
            end
            ## 
            ## Gets the browserInternetSecurityLevel property value. Possible values for internet site security level.
            ## @return a internet_site_security_level
            ## 
            def browser_internet_security_level
                return @browser_internet_security_level
            end
            ## 
            ## Sets the browserInternetSecurityLevel property value. Possible values for internet site security level.
            ## @param value Value to set for the browser_internet_security_level property.
            ## @return a void
            ## 
            def browser_internet_security_level=(value)
                @browser_internet_security_level = value
            end
            ## 
            ## Gets the browserIntranetSecurityLevel property value. Possible values for site security level.
            ## @return a site_security_level
            ## 
            def browser_intranet_security_level
                return @browser_intranet_security_level
            end
            ## 
            ## Sets the browserIntranetSecurityLevel property value. Possible values for site security level.
            ## @param value Value to set for the browser_intranet_security_level property.
            ## @return a void
            ## 
            def browser_intranet_security_level=(value)
                @browser_intranet_security_level = value
            end
            ## 
            ## Gets the browserLoggingReportLocation property value. The logging report location.
            ## @return a string
            ## 
            def browser_logging_report_location
                return @browser_logging_report_location
            end
            ## 
            ## Sets the browserLoggingReportLocation property value. The logging report location.
            ## @param value Value to set for the browser_logging_report_location property.
            ## @return a void
            ## 
            def browser_logging_report_location=(value)
                @browser_logging_report_location = value
            end
            ## 
            ## Gets the browserRequireFirewall property value. Indicates whether or not to require a firewall.
            ## @return a boolean
            ## 
            def browser_require_firewall
                return @browser_require_firewall
            end
            ## 
            ## Sets the browserRequireFirewall property value. Indicates whether or not to require a firewall.
            ## @param value Value to set for the browser_require_firewall property.
            ## @return a void
            ## 
            def browser_require_firewall=(value)
                @browser_require_firewall = value
            end
            ## 
            ## Gets the browserRequireFraudWarning property value. Indicates whether or not to require fraud warning.
            ## @return a boolean
            ## 
            def browser_require_fraud_warning
                return @browser_require_fraud_warning
            end
            ## 
            ## Sets the browserRequireFraudWarning property value. Indicates whether or not to require fraud warning.
            ## @param value Value to set for the browser_require_fraud_warning property.
            ## @return a void
            ## 
            def browser_require_fraud_warning=(value)
                @browser_require_fraud_warning = value
            end
            ## 
            ## Gets the browserRequireHighSecurityForRestrictedSites property value. Indicates whether or not to require high security for restricted sites.
            ## @return a boolean
            ## 
            def browser_require_high_security_for_restricted_sites
                return @browser_require_high_security_for_restricted_sites
            end
            ## 
            ## Sets the browserRequireHighSecurityForRestrictedSites property value. Indicates whether or not to require high security for restricted sites.
            ## @param value Value to set for the browser_require_high_security_for_restricted_sites property.
            ## @return a void
            ## 
            def browser_require_high_security_for_restricted_sites=(value)
                @browser_require_high_security_for_restricted_sites = value
            end
            ## 
            ## Gets the browserRequireSmartScreen property value. Indicates whether or not to require the user to use the smart screen filter.
            ## @return a boolean
            ## 
            def browser_require_smart_screen
                return @browser_require_smart_screen
            end
            ## 
            ## Sets the browserRequireSmartScreen property value. Indicates whether or not to require the user to use the smart screen filter.
            ## @param value Value to set for the browser_require_smart_screen property.
            ## @return a void
            ## 
            def browser_require_smart_screen=(value)
                @browser_require_smart_screen = value
            end
            ## 
            ## Gets the browserTrustedSitesSecurityLevel property value. Possible values for site security level.
            ## @return a site_security_level
            ## 
            def browser_trusted_sites_security_level
                return @browser_trusted_sites_security_level
            end
            ## 
            ## Sets the browserTrustedSitesSecurityLevel property value. Possible values for site security level.
            ## @param value Value to set for the browser_trusted_sites_security_level property.
            ## @return a void
            ## 
            def browser_trusted_sites_security_level=(value)
                @browser_trusted_sites_security_level = value
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
            ## Instantiates a new Windows81GeneralConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows81GeneralConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows81_general_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows81GeneralConfiguration.new
            end
            ## 
            ## Gets the diagnosticsBlockDataSubmission property value. Indicates whether or not to block diagnostic data submission.
            ## @return a boolean
            ## 
            def diagnostics_block_data_submission
                return @diagnostics_block_data_submission
            end
            ## 
            ## Sets the diagnosticsBlockDataSubmission property value. Indicates whether or not to block diagnostic data submission.
            ## @param value Value to set for the diagnostics_block_data_submission property.
            ## @return a void
            ## 
            def diagnostics_block_data_submission=(value)
                @diagnostics_block_data_submission = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountsBlockAddingNonMicrosoftAccountEmail" => lambda {|n| @accounts_block_adding_non_microsoft_account_email = n.get_boolean_value() },
                    "applyOnlyToWindows81" => lambda {|n| @apply_only_to_windows81 = n.get_boolean_value() },
                    "browserBlockAutofill" => lambda {|n| @browser_block_autofill = n.get_boolean_value() },
                    "browserBlockAutomaticDetectionOfIntranetSites" => lambda {|n| @browser_block_automatic_detection_of_intranet_sites = n.get_boolean_value() },
                    "browserBlockEnterpriseModeAccess" => lambda {|n| @browser_block_enterprise_mode_access = n.get_boolean_value() },
                    "browserBlockJavaScript" => lambda {|n| @browser_block_java_script = n.get_boolean_value() },
                    "browserBlockPlugins" => lambda {|n| @browser_block_plugins = n.get_boolean_value() },
                    "browserBlockPopups" => lambda {|n| @browser_block_popups = n.get_boolean_value() },
                    "browserBlockSendingDoNotTrackHeader" => lambda {|n| @browser_block_sending_do_not_track_header = n.get_boolean_value() },
                    "browserBlockSingleWordEntryOnIntranetSites" => lambda {|n| @browser_block_single_word_entry_on_intranet_sites = n.get_boolean_value() },
                    "browserEnterpriseModeSiteListLocation" => lambda {|n| @browser_enterprise_mode_site_list_location = n.get_string_value() },
                    "browserInternetSecurityLevel" => lambda {|n| @browser_internet_security_level = n.get_enum_value(MicrosoftGraph::Models::InternetSiteSecurityLevel) },
                    "browserIntranetSecurityLevel" => lambda {|n| @browser_intranet_security_level = n.get_enum_value(MicrosoftGraph::Models::SiteSecurityLevel) },
                    "browserLoggingReportLocation" => lambda {|n| @browser_logging_report_location = n.get_string_value() },
                    "browserRequireFirewall" => lambda {|n| @browser_require_firewall = n.get_boolean_value() },
                    "browserRequireFraudWarning" => lambda {|n| @browser_require_fraud_warning = n.get_boolean_value() },
                    "browserRequireHighSecurityForRestrictedSites" => lambda {|n| @browser_require_high_security_for_restricted_sites = n.get_boolean_value() },
                    "browserRequireSmartScreen" => lambda {|n| @browser_require_smart_screen = n.get_boolean_value() },
                    "browserTrustedSitesSecurityLevel" => lambda {|n| @browser_trusted_sites_security_level = n.get_enum_value(MicrosoftGraph::Models::SiteSecurityLevel) },
                    "cellularBlockDataRoaming" => lambda {|n| @cellular_block_data_roaming = n.get_boolean_value() },
                    "diagnosticsBlockDataSubmission" => lambda {|n| @diagnostics_block_data_submission = n.get_boolean_value() },
                    "passwordBlockPicturePasswordAndPin" => lambda {|n| @password_block_picture_password_and_pin = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumCharacterSetCount" => lambda {|n| @password_minimum_character_set_count = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraph::Models::RequiredPasswordType) },
                    "passwordSignInFailureCountBeforeFactoryReset" => lambda {|n| @password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                    "storageRequireDeviceEncryption" => lambda {|n| @storage_require_device_encryption = n.get_boolean_value() },
                    "updatesRequireAutomaticUpdates" => lambda {|n| @updates_require_automatic_updates = n.get_boolean_value() },
                    "userAccountControlSettings" => lambda {|n| @user_account_control_settings = n.get_enum_value(MicrosoftGraph::Models::WindowsUserAccountControlSettings) },
                    "workFoldersUrl" => lambda {|n| @work_folders_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the passwordBlockPicturePasswordAndPin property value. Indicates whether or not to Block the user from using a pictures password and pin.
            ## @return a boolean
            ## 
            def password_block_picture_password_and_pin
                return @password_block_picture_password_and_pin
            end
            ## 
            ## Sets the passwordBlockPicturePasswordAndPin property value. Indicates whether or not to Block the user from using a pictures password and pin.
            ## @param value Value to set for the password_block_picture_password_and_pin property.
            ## @return a void
            ## 
            def password_block_picture_password_and_pin=(value)
                @password_block_picture_password_and_pin = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. Password expiration in days.
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. Password expiration in days.
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
            ## Gets the passwordMinimumLength property value. The minimum password length.
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. The minimum password length.
            ## @param value Value to set for the password_minimum_length property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeScreenTimeout property value. The minutes of inactivity before the screen times out.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_screen_timeout
                return @password_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeScreenTimeout property value. The minutes of inactivity before the screen times out.
            ## @param value Value to set for the password_minutes_of_inactivity_before_screen_timeout property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_screen_timeout=(value)
                @password_minutes_of_inactivity_before_screen_timeout = value
            end
            ## 
            ## Gets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent re-use of. Valid values 0 to 24
            ## @return a integer
            ## 
            def password_previous_password_block_count
                return @password_previous_password_block_count
            end
            ## 
            ## Sets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent re-use of. Valid values 0 to 24
            ## @param value Value to set for the password_previous_password_block_count property.
            ## @return a void
            ## 
            def password_previous_password_block_count=(value)
                @password_previous_password_block_count = value
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
            ## Gets the passwordSignInFailureCountBeforeFactoryReset property value. The number of sign in failures before factory reset.
            ## @return a integer
            ## 
            def password_sign_in_failure_count_before_factory_reset
                return @password_sign_in_failure_count_before_factory_reset
            end
            ## 
            ## Sets the passwordSignInFailureCountBeforeFactoryReset property value. The number of sign in failures before factory reset.
            ## @param value Value to set for the password_sign_in_failure_count_before_factory_reset property.
            ## @return a void
            ## 
            def password_sign_in_failure_count_before_factory_reset=(value)
                @password_sign_in_failure_count_before_factory_reset = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("accountsBlockAddingNonMicrosoftAccountEmail", @accounts_block_adding_non_microsoft_account_email)
                writer.write_boolean_value("browserBlockAutofill", @browser_block_autofill)
                writer.write_boolean_value("browserBlockAutomaticDetectionOfIntranetSites", @browser_block_automatic_detection_of_intranet_sites)
                writer.write_boolean_value("browserBlockEnterpriseModeAccess", @browser_block_enterprise_mode_access)
                writer.write_boolean_value("browserBlockJavaScript", @browser_block_java_script)
                writer.write_boolean_value("browserBlockPlugins", @browser_block_plugins)
                writer.write_boolean_value("browserBlockPopups", @browser_block_popups)
                writer.write_boolean_value("browserBlockSendingDoNotTrackHeader", @browser_block_sending_do_not_track_header)
                writer.write_boolean_value("browserBlockSingleWordEntryOnIntranetSites", @browser_block_single_word_entry_on_intranet_sites)
                writer.write_string_value("browserEnterpriseModeSiteListLocation", @browser_enterprise_mode_site_list_location)
                writer.write_enum_value("browserInternetSecurityLevel", @browser_internet_security_level)
                writer.write_enum_value("browserIntranetSecurityLevel", @browser_intranet_security_level)
                writer.write_string_value("browserLoggingReportLocation", @browser_logging_report_location)
                writer.write_boolean_value("browserRequireFirewall", @browser_require_firewall)
                writer.write_boolean_value("browserRequireFraudWarning", @browser_require_fraud_warning)
                writer.write_boolean_value("browserRequireHighSecurityForRestrictedSites", @browser_require_high_security_for_restricted_sites)
                writer.write_boolean_value("browserRequireSmartScreen", @browser_require_smart_screen)
                writer.write_enum_value("browserTrustedSitesSecurityLevel", @browser_trusted_sites_security_level)
                writer.write_boolean_value("cellularBlockDataRoaming", @cellular_block_data_roaming)
                writer.write_boolean_value("diagnosticsBlockDataSubmission", @diagnostics_block_data_submission)
                writer.write_boolean_value("passwordBlockPicturePasswordAndPin", @password_block_picture_password_and_pin)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumCharacterSetCount", @password_minimum_character_set_count)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_number_value("passwordSignInFailureCountBeforeFactoryReset", @password_sign_in_failure_count_before_factory_reset)
                writer.write_boolean_value("storageRequireDeviceEncryption", @storage_require_device_encryption)
                writer.write_boolean_value("updatesRequireAutomaticUpdates", @updates_require_automatic_updates)
                writer.write_enum_value("userAccountControlSettings", @user_account_control_settings)
                writer.write_string_value("workFoldersUrl", @work_folders_url)
            end
            ## 
            ## Gets the storageRequireDeviceEncryption property value. Indicates whether or not to require encryption on a mobile device.
            ## @return a boolean
            ## 
            def storage_require_device_encryption
                return @storage_require_device_encryption
            end
            ## 
            ## Sets the storageRequireDeviceEncryption property value. Indicates whether or not to require encryption on a mobile device.
            ## @param value Value to set for the storage_require_device_encryption property.
            ## @return a void
            ## 
            def storage_require_device_encryption=(value)
                @storage_require_device_encryption = value
            end
            ## 
            ## Gets the updatesRequireAutomaticUpdates property value. Indicates whether or not to require automatic updates.
            ## @return a boolean
            ## 
            def updates_require_automatic_updates
                return @updates_require_automatic_updates
            end
            ## 
            ## Sets the updatesRequireAutomaticUpdates property value. Indicates whether or not to require automatic updates.
            ## @param value Value to set for the updates_require_automatic_updates property.
            ## @return a void
            ## 
            def updates_require_automatic_updates=(value)
                @updates_require_automatic_updates = value
            end
            ## 
            ## Gets the userAccountControlSettings property value. Possible values for Windows user account control settings.
            ## @return a windows_user_account_control_settings
            ## 
            def user_account_control_settings
                return @user_account_control_settings
            end
            ## 
            ## Sets the userAccountControlSettings property value. Possible values for Windows user account control settings.
            ## @param value Value to set for the user_account_control_settings property.
            ## @return a void
            ## 
            def user_account_control_settings=(value)
                @user_account_control_settings = value
            end
            ## 
            ## Gets the workFoldersUrl property value. The work folders url.
            ## @return a string
            ## 
            def work_folders_url
                return @work_folders_url
            end
            ## 
            ## Sets the workFoldersUrl property value. The work folders url.
            ## @param value Value to set for the work_folders_url property.
            ## @return a void
            ## 
            def work_folders_url=(value)
                @work_folders_url = value
            end
        end
    end
end
