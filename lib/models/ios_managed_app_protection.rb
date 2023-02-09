require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosManagedAppProtection < MicrosoftGraph::Models::TargetedManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the level to which app data is encrypted for managed apps
            @app_data_encryption_type
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # A custom browser protocol to open weblink on iOS. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            @custom_browser_protocol
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
            ## 
            # Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True.
            @face_id_blocked
            ## 
            # Versions less than the specified version will block the managed app from accessing company data.
            @minimum_required_sdk_version
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
            ## Instantiates a new IosManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosManagedAppProtection.new
            end
            ## 
            ## Gets the customBrowserProtocol property value. A custom browser protocol to open weblink on iOS. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            ## @return a string
            ## 
            def custom_browser_protocol
                return @custom_browser_protocol
            end
            ## 
            ## Sets the customBrowserProtocol property value. A custom browser protocol to open weblink on iOS. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.
            ## @param value Value to set for the custom_browser_protocol property.
            ## @return a void
            ## 
            def custom_browser_protocol=(value)
                @custom_browser_protocol = value
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
            ## Gets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True.
            ## @return a boolean
            ## 
            def face_id_blocked
                return @face_id_blocked
            end
            ## 
            ## Sets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True.
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
                    "customBrowserProtocol" => lambda {|n| @custom_browser_protocol = n.get_string_value() },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "faceIdBlocked" => lambda {|n| @face_id_blocked = n.get_boolean_value() },
                    "minimumRequiredSdkVersion" => lambda {|n| @minimum_required_sdk_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_required_sdk_version
                return @minimum_required_sdk_version
            end
            ## 
            ## Sets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @param value Value to set for the minimum_required_sdk_version property.
            ## @return a void
            ## 
            def minimum_required_sdk_version=(value)
                @minimum_required_sdk_version = value
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
                writer.write_string_value("customBrowserProtocol", @custom_browser_protocol)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
                writer.write_boolean_value("faceIdBlocked", @face_id_blocked)
                writer.write_string_value("minimumRequiredSdkVersion", @minimum_required_sdk_version)
            end
        end
    end
end
