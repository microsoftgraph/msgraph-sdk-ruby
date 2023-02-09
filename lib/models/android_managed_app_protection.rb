require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AndroidManagedAppProtection < MicrosoftGraph::Models::TargetedManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # Friendly name of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            @custom_browser_display_name
            ## 
            # Unique identifier of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            @custom_browser_package_id
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
            ## 
            # When this setting is enabled, app level encryption is disabled if device level encryption is enabled
            @disable_app_encryption_if_device_encryption_is_enabled
            ## 
            # Indicates whether application data for managed apps should be encrypted
            @encrypt_app_data
            ## 
            # Define the oldest required Android security patch level a user can have to gain secure access to the app.
            @minimum_required_patch_version
            ## 
            # Define the oldest recommended Android security patch level a user can have for secure access to the app.
            @minimum_warning_patch_version
            ## 
            # Indicates whether a managed user can take screen captures of managed apps
            @screen_capture_blocked
            ## 
            ## Gets the apps property value. List of apps to which the policy is deployed.
            ## @return a managed_mobile_app
            ## 
            def apps
                return @apps
            end
            ## 
            ## Sets the apps property value. List of apps to which the policy is deployed.
            ## @param value Value to set for the apps property.
            ## @return a void
            ## 
            def apps=(value)
                @apps = value
            end
            ## 
            ## Instantiates a new AndroidManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidManagedAppProtection.new
            end
            ## 
            ## Gets the customBrowserDisplayName property value. Friendly name of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            ## @return a string
            ## 
            def custom_browser_display_name
                return @custom_browser_display_name
            end
            ## 
            ## Sets the customBrowserDisplayName property value. Friendly name of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            ## @param value Value to set for the custom_browser_display_name property.
            ## @return a void
            ## 
            def custom_browser_display_name=(value)
                @custom_browser_display_name = value
            end
            ## 
            ## Gets the customBrowserPackageId property value. Unique identifier of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            ## @return a string
            ## 
            def custom_browser_package_id
                return @custom_browser_package_id
            end
            ## 
            ## Sets the customBrowserPackageId property value. Unique identifier of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            ## @param value Value to set for the custom_browser_package_id property.
            ## @return a void
            ## 
            def custom_browser_package_id=(value)
                @custom_browser_package_id = value
            end
            ## 
            ## Gets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @return a integer
            ## 
            def deployed_app_count
                return @deployed_app_count
            end
            ## 
            ## Sets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @param value Value to set for the deployed_app_count property.
            ## @return a void
            ## 
            def deployed_app_count=(value)
                @deployed_app_count = value
            end
            ## 
            ## Gets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @return a managed_app_policy_deployment_summary
            ## 
            def deployment_summary
                return @deployment_summary
            end
            ## 
            ## Sets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @param value Value to set for the deployment_summary property.
            ## @return a void
            ## 
            def deployment_summary=(value)
                @deployment_summary = value
            end
            ## 
            ## Gets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled
            ## @return a boolean
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled
                return @disable_app_encryption_if_device_encryption_is_enabled
            end
            ## 
            ## Sets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled
            ## @param value Value to set for the disable_app_encryption_if_device_encryption_is_enabled property.
            ## @return a void
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled=(value)
                @disable_app_encryption_if_device_encryption_is_enabled = value
            end
            ## 
            ## Gets the encryptAppData property value. Indicates whether application data for managed apps should be encrypted
            ## @return a boolean
            ## 
            def encrypt_app_data
                return @encrypt_app_data
            end
            ## 
            ## Sets the encryptAppData property value. Indicates whether application data for managed apps should be encrypted
            ## @param value Value to set for the encrypt_app_data property.
            ## @return a void
            ## 
            def encrypt_app_data=(value)
                @encrypt_app_data = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "customBrowserDisplayName" => lambda {|n| @custom_browser_display_name = n.get_string_value() },
                    "customBrowserPackageId" => lambda {|n| @custom_browser_package_id = n.get_string_value() },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "disableAppEncryptionIfDeviceEncryptionIsEnabled" => lambda {|n| @disable_app_encryption_if_device_encryption_is_enabled = n.get_boolean_value() },
                    "encryptAppData" => lambda {|n| @encrypt_app_data = n.get_boolean_value() },
                    "minimumRequiredPatchVersion" => lambda {|n| @minimum_required_patch_version = n.get_string_value() },
                    "minimumWarningPatchVersion" => lambda {|n| @minimum_warning_patch_version = n.get_string_value() },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app.
            ## @return a string
            ## 
            def minimum_required_patch_version
                return @minimum_required_patch_version
            end
            ## 
            ## Sets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app.
            ## @param value Value to set for the minimum_required_patch_version property.
            ## @return a void
            ## 
            def minimum_required_patch_version=(value)
                @minimum_required_patch_version = value
            end
            ## 
            ## Gets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app.
            ## @return a string
            ## 
            def minimum_warning_patch_version
                return @minimum_warning_patch_version
            end
            ## 
            ## Sets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app.
            ## @param value Value to set for the minimum_warning_patch_version property.
            ## @return a void
            ## 
            def minimum_warning_patch_version=(value)
                @minimum_warning_patch_version = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether a managed user can take screen captures of managed apps
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether a managed user can take screen captures of managed apps
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
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_string_value("customBrowserDisplayName", @custom_browser_display_name)
                writer.write_string_value("customBrowserPackageId", @custom_browser_package_id)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
                writer.write_boolean_value("disableAppEncryptionIfDeviceEncryptionIsEnabled", @disable_app_encryption_if_device_encryption_is_enabled)
                writer.write_boolean_value("encryptAppData", @encrypt_app_data)
                writer.write_string_value("minimumRequiredPatchVersion", @minimum_required_patch_version)
                writer.write_string_value("minimumWarningPatchVersion", @minimum_warning_patch_version)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
            end
        end
    end
end
