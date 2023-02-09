require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DefaultManagedAppProtection < MicrosoftGraph::Models::ManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the level to which app data is encrypted for managed apps
            @app_data_encryption_type
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # A set of string key and string value pairs to be sent to the affected users, unalterned by this service
            @custom_settings
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
            ## 
            # When this setting is enabled, app level encryption is disabled if device level encryption is enabled. (Android only)
            @disable_app_encryption_if_device_encryption_is_enabled
            ## 
            # Indicates whether managed-app data should be encrypted. (Android only)
            @encrypt_app_data
            ## 
            # Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True. (iOS Only)
            @face_id_blocked
            ## 
            # Define the oldest required Android security patch level a user can have to gain secure access to the app. (Android only)
            @minimum_required_patch_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data. (iOS Only)
            @minimum_required_sdk_version
            ## 
            # Define the oldest recommended Android security patch level a user can have for secure access to the app. (Android only)
            @minimum_warning_patch_version
            ## 
            # Indicates whether screen capture is blocked. (Android only)
            @screen_capture_blocked
            ## 
            ## Gets the appDataEncryptionType property value. Represents the level to which app data is encrypted for managed apps
            ## @return a managed_app_data_encryption_type
            ## 
            def app_data_encryption_type
                return @app_data_encryption_type
            end
            ## 
            ## Sets the appDataEncryptionType property value. Represents the level to which app data is encrypted for managed apps
            ## @param value Value to set for the app_data_encryption_type property.
            ## @return a void
            ## 
            def app_data_encryption_type=(value)
                @app_data_encryption_type = value
            end
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
            ## Instantiates a new DefaultManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.defaultManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a default_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DefaultManagedAppProtection.new
            end
            ## 
            ## Gets the customSettings property value. A set of string key and string value pairs to be sent to the affected users, unalterned by this service
            ## @return a key_value_pair
            ## 
            def custom_settings
                return @custom_settings
            end
            ## 
            ## Sets the customSettings property value. A set of string key and string value pairs to be sent to the affected users, unalterned by this service
            ## @param value Value to set for the custom_settings property.
            ## @return a void
            ## 
            def custom_settings=(value)
                @custom_settings = value
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
            ## Gets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled. (Android only)
            ## @return a boolean
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled
                return @disable_app_encryption_if_device_encryption_is_enabled
            end
            ## 
            ## Sets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled. (Android only)
            ## @param value Value to set for the disable_app_encryption_if_device_encryption_is_enabled property.
            ## @return a void
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled=(value)
                @disable_app_encryption_if_device_encryption_is_enabled = value
            end
            ## 
            ## Gets the encryptAppData property value. Indicates whether managed-app data should be encrypted. (Android only)
            ## @return a boolean
            ## 
            def encrypt_app_data
                return @encrypt_app_data
            end
            ## 
            ## Sets the encryptAppData property value. Indicates whether managed-app data should be encrypted. (Android only)
            ## @param value Value to set for the encrypt_app_data property.
            ## @return a void
            ## 
            def encrypt_app_data=(value)
                @encrypt_app_data = value
            end
            ## 
            ## Gets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True. (iOS Only)
            ## @return a boolean
            ## 
            def face_id_blocked
                return @face_id_blocked
            end
            ## 
            ## Sets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True. (iOS Only)
            ## @param value Value to set for the face_id_blocked property.
            ## @return a void
            ## 
            def face_id_blocked=(value)
                @face_id_blocked = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDataEncryptionType" => lambda {|n| @app_data_encryption_type = n.get_enum_value(MicrosoftGraph::Models::ManagedAppDataEncryptionType) },
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "customSettings" => lambda {|n| @custom_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "disableAppEncryptionIfDeviceEncryptionIsEnabled" => lambda {|n| @disable_app_encryption_if_device_encryption_is_enabled = n.get_boolean_value() },
                    "encryptAppData" => lambda {|n| @encrypt_app_data = n.get_boolean_value() },
                    "faceIdBlocked" => lambda {|n| @face_id_blocked = n.get_boolean_value() },
                    "minimumRequiredPatchVersion" => lambda {|n| @minimum_required_patch_version = n.get_string_value() },
                    "minimumRequiredSdkVersion" => lambda {|n| @minimum_required_sdk_version = n.get_string_value() },
                    "minimumWarningPatchVersion" => lambda {|n| @minimum_warning_patch_version = n.get_string_value() },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app. (Android only)
            ## @return a string
            ## 
            def minimum_required_patch_version
                return @minimum_required_patch_version
            end
            ## 
            ## Sets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app. (Android only)
            ## @param value Value to set for the minimum_required_patch_version property.
            ## @return a void
            ## 
            def minimum_required_patch_version=(value)
                @minimum_required_patch_version = value
            end
            ## 
            ## Gets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data. (iOS Only)
            ## @return a string
            ## 
            def minimum_required_sdk_version
                return @minimum_required_sdk_version
            end
            ## 
            ## Sets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data. (iOS Only)
            ## @param value Value to set for the minimum_required_sdk_version property.
            ## @return a void
            ## 
            def minimum_required_sdk_version=(value)
                @minimum_required_sdk_version = value
            end
            ## 
            ## Gets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app. (Android only)
            ## @return a string
            ## 
            def minimum_warning_patch_version
                return @minimum_warning_patch_version
            end
            ## 
            ## Sets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app. (Android only)
            ## @param value Value to set for the minimum_warning_patch_version property.
            ## @return a void
            ## 
            def minimum_warning_patch_version=(value)
                @minimum_warning_patch_version = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether screen capture is blocked. (Android only)
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether screen capture is blocked. (Android only)
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
                writer.write_enum_value("appDataEncryptionType", @app_data_encryption_type)
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_collection_of_object_values("customSettings", @custom_settings)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
                writer.write_boolean_value("disableAppEncryptionIfDeviceEncryptionIsEnabled", @disable_app_encryption_if_device_encryption_is_enabled)
                writer.write_boolean_value("encryptAppData", @encrypt_app_data)
                writer.write_boolean_value("faceIdBlocked", @face_id_blocked)
                writer.write_string_value("minimumRequiredPatchVersion", @minimum_required_patch_version)
                writer.write_string_value("minimumRequiredSdkVersion", @minimum_required_sdk_version)
                writer.write_string_value("minimumWarningPatchVersion", @minimum_warning_patch_version)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
            end
        end
    end
end
