require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharedPCConfiguration < MicrosoftGraph::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies how accounts are managed on a shared PC. Only applies when disableAccountManager is false.
            @account_manager_policy
            ## 
            # Specifies whether local storage is allowed on a shared PC.
            @allow_local_storage
            ## 
            # Type of accounts that are allowed to share the PC.
            @allowed_accounts
            ## 
            # Disables the account manager for shared PC mode.
            @disable_account_manager
            ## 
            # Specifies whether the default shared PC education environment policies should be disabled. For Windows 10 RS2 and later, this policy will be applied without setting Enabled to true.
            @disable_edu_policies
            ## 
            # Specifies whether the default shared PC power policies should be disabled.
            @disable_power_policies
            ## 
            # Disables the requirement to sign in whenever the device wakes up from sleep mode.
            @disable_sign_in_on_resume
            ## 
            # Enables shared PC mode and applies the shared pc policies.
            @enabled
            ## 
            # Specifies the time in seconds that a device must sit idle before the PC goes to sleep. Setting this value to 0 prevents the sleep timeout from occurring.
            @idle_time_before_sleep_in_seconds
            ## 
            # Specifies the display text for the account shown on the sign-in screen which launches the app specified by SetKioskAppUserModelId. Only applies when KioskAppUserModelId is set.
            @kiosk_app_display_name
            ## 
            # Specifies the application user model ID of the app to use with assigned access.
            @kiosk_app_user_model_id
            ## 
            # Specifies the daily start time of maintenance hour.
            @maintenance_start_time
            ## 
            ## Gets the accountManagerPolicy property value. Specifies how accounts are managed on a shared PC. Only applies when disableAccountManager is false.
            ## @return a shared_p_c_account_manager_policy
            ## 
            def account_manager_policy
                return @account_manager_policy
            end
            ## 
            ## Sets the accountManagerPolicy property value. Specifies how accounts are managed on a shared PC. Only applies when disableAccountManager is false.
            ## @param value Value to set for the account_manager_policy property.
            ## @return a void
            ## 
            def account_manager_policy=(value)
                @account_manager_policy = value
            end
            ## 
            ## Gets the allowLocalStorage property value. Specifies whether local storage is allowed on a shared PC.
            ## @return a boolean
            ## 
            def allow_local_storage
                return @allow_local_storage
            end
            ## 
            ## Sets the allowLocalStorage property value. Specifies whether local storage is allowed on a shared PC.
            ## @param value Value to set for the allow_local_storage property.
            ## @return a void
            ## 
            def allow_local_storage=(value)
                @allow_local_storage = value
            end
            ## 
            ## Gets the allowedAccounts property value. Type of accounts that are allowed to share the PC.
            ## @return a shared_p_c_allowed_account_type
            ## 
            def allowed_accounts
                return @allowed_accounts
            end
            ## 
            ## Sets the allowedAccounts property value. Type of accounts that are allowed to share the PC.
            ## @param value Value to set for the allowed_accounts property.
            ## @return a void
            ## 
            def allowed_accounts=(value)
                @allowed_accounts = value
            end
            ## 
            ## Instantiates a new SharedPCConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sharedPCConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shared_p_c_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedPCConfiguration.new
            end
            ## 
            ## Gets the disableAccountManager property value. Disables the account manager for shared PC mode.
            ## @return a boolean
            ## 
            def disable_account_manager
                return @disable_account_manager
            end
            ## 
            ## Sets the disableAccountManager property value. Disables the account manager for shared PC mode.
            ## @param value Value to set for the disable_account_manager property.
            ## @return a void
            ## 
            def disable_account_manager=(value)
                @disable_account_manager = value
            end
            ## 
            ## Gets the disableEduPolicies property value. Specifies whether the default shared PC education environment policies should be disabled. For Windows 10 RS2 and later, this policy will be applied without setting Enabled to true.
            ## @return a boolean
            ## 
            def disable_edu_policies
                return @disable_edu_policies
            end
            ## 
            ## Sets the disableEduPolicies property value. Specifies whether the default shared PC education environment policies should be disabled. For Windows 10 RS2 and later, this policy will be applied without setting Enabled to true.
            ## @param value Value to set for the disable_edu_policies property.
            ## @return a void
            ## 
            def disable_edu_policies=(value)
                @disable_edu_policies = value
            end
            ## 
            ## Gets the disablePowerPolicies property value. Specifies whether the default shared PC power policies should be disabled.
            ## @return a boolean
            ## 
            def disable_power_policies
                return @disable_power_policies
            end
            ## 
            ## Sets the disablePowerPolicies property value. Specifies whether the default shared PC power policies should be disabled.
            ## @param value Value to set for the disable_power_policies property.
            ## @return a void
            ## 
            def disable_power_policies=(value)
                @disable_power_policies = value
            end
            ## 
            ## Gets the disableSignInOnResume property value. Disables the requirement to sign in whenever the device wakes up from sleep mode.
            ## @return a boolean
            ## 
            def disable_sign_in_on_resume
                return @disable_sign_in_on_resume
            end
            ## 
            ## Sets the disableSignInOnResume property value. Disables the requirement to sign in whenever the device wakes up from sleep mode.
            ## @param value Value to set for the disable_sign_in_on_resume property.
            ## @return a void
            ## 
            def disable_sign_in_on_resume=(value)
                @disable_sign_in_on_resume = value
            end
            ## 
            ## Gets the enabled property value. Enables shared PC mode and applies the shared pc policies.
            ## @return a boolean
            ## 
            def enabled
                return @enabled
            end
            ## 
            ## Sets the enabled property value. Enables shared PC mode and applies the shared pc policies.
            ## @param value Value to set for the enabled property.
            ## @return a void
            ## 
            def enabled=(value)
                @enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountManagerPolicy" => lambda {|n| @account_manager_policy = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharedPCAccountManagerPolicy.create_from_discriminator_value(pn) }) },
                    "allowLocalStorage" => lambda {|n| @allow_local_storage = n.get_boolean_value() },
                    "allowedAccounts" => lambda {|n| @allowed_accounts = n.get_enum_value(MicrosoftGraph::Models::SharedPCAllowedAccountType) },
                    "disableAccountManager" => lambda {|n| @disable_account_manager = n.get_boolean_value() },
                    "disableEduPolicies" => lambda {|n| @disable_edu_policies = n.get_boolean_value() },
                    "disablePowerPolicies" => lambda {|n| @disable_power_policies = n.get_boolean_value() },
                    "disableSignInOnResume" => lambda {|n| @disable_sign_in_on_resume = n.get_boolean_value() },
                    "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                    "idleTimeBeforeSleepInSeconds" => lambda {|n| @idle_time_before_sleep_in_seconds = n.get_number_value() },
                    "kioskAppDisplayName" => lambda {|n| @kiosk_app_display_name = n.get_string_value() },
                    "kioskAppUserModelId" => lambda {|n| @kiosk_app_user_model_id = n.get_string_value() },
                    "maintenanceStartTime" => lambda {|n| @maintenance_start_time = n.get_time_value() },
                })
            end
            ## 
            ## Gets the idleTimeBeforeSleepInSeconds property value. Specifies the time in seconds that a device must sit idle before the PC goes to sleep. Setting this value to 0 prevents the sleep timeout from occurring.
            ## @return a integer
            ## 
            def idle_time_before_sleep_in_seconds
                return @idle_time_before_sleep_in_seconds
            end
            ## 
            ## Sets the idleTimeBeforeSleepInSeconds property value. Specifies the time in seconds that a device must sit idle before the PC goes to sleep. Setting this value to 0 prevents the sleep timeout from occurring.
            ## @param value Value to set for the idle_time_before_sleep_in_seconds property.
            ## @return a void
            ## 
            def idle_time_before_sleep_in_seconds=(value)
                @idle_time_before_sleep_in_seconds = value
            end
            ## 
            ## Gets the kioskAppDisplayName property value. Specifies the display text for the account shown on the sign-in screen which launches the app specified by SetKioskAppUserModelId. Only applies when KioskAppUserModelId is set.
            ## @return a string
            ## 
            def kiosk_app_display_name
                return @kiosk_app_display_name
            end
            ## 
            ## Sets the kioskAppDisplayName property value. Specifies the display text for the account shown on the sign-in screen which launches the app specified by SetKioskAppUserModelId. Only applies when KioskAppUserModelId is set.
            ## @param value Value to set for the kiosk_app_display_name property.
            ## @return a void
            ## 
            def kiosk_app_display_name=(value)
                @kiosk_app_display_name = value
            end
            ## 
            ## Gets the kioskAppUserModelId property value. Specifies the application user model ID of the app to use with assigned access.
            ## @return a string
            ## 
            def kiosk_app_user_model_id
                return @kiosk_app_user_model_id
            end
            ## 
            ## Sets the kioskAppUserModelId property value. Specifies the application user model ID of the app to use with assigned access.
            ## @param value Value to set for the kiosk_app_user_model_id property.
            ## @return a void
            ## 
            def kiosk_app_user_model_id=(value)
                @kiosk_app_user_model_id = value
            end
            ## 
            ## Gets the maintenanceStartTime property value. Specifies the daily start time of maintenance hour.
            ## @return a time
            ## 
            def maintenance_start_time
                return @maintenance_start_time
            end
            ## 
            ## Sets the maintenanceStartTime property value. Specifies the daily start time of maintenance hour.
            ## @param value Value to set for the maintenance_start_time property.
            ## @return a void
            ## 
            def maintenance_start_time=(value)
                @maintenance_start_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accountManagerPolicy", @account_manager_policy)
                writer.write_boolean_value("allowLocalStorage", @allow_local_storage)
                writer.write_enum_value("allowedAccounts", @allowed_accounts)
                writer.write_boolean_value("disableAccountManager", @disable_account_manager)
                writer.write_boolean_value("disableEduPolicies", @disable_edu_policies)
                writer.write_boolean_value("disablePowerPolicies", @disable_power_policies)
                writer.write_boolean_value("disableSignInOnResume", @disable_sign_in_on_resume)
                writer.write_boolean_value("enabled", @enabled)
                writer.write_number_value("idleTimeBeforeSleepInSeconds", @idle_time_before_sleep_in_seconds)
                writer.write_string_value("kioskAppDisplayName", @kiosk_app_display_name)
                writer.write_string_value("kioskAppUserModelId", @kiosk_app_user_model_id)
                writer.write_time_value("maintenanceStartTime", @maintenance_start_time)
            end
        end
    end
end
