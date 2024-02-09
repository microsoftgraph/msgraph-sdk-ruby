require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties and inherited properties for the MacOS DMG (Apple Disk Image) App.
        class MacOSDmgApp < MicrosoftGraph::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, indicates that the app's version will NOT be used to detect if the app is installed on a device. When FALSE, indicates that the app's version will be used to detect if the app is installed on a device. Set this to true for apps that use a self update feature. The default value is FALSE.
            @ignore_version_detection
            ## 
            # The list of .apps expected to be installed by the DMG (Apple Disk Image)
            @included_apps
            ## 
            # ComplexType macOSMinimumOperatingSystem that indicates the minimum operating system applicable for the application.
            @minimum_supported_operating_system
            ## 
            # The bundleId of the primary .app in the DMG (Apple Disk Image). This maps to the CFBundleIdentifier in the app's bundle configuration.
            @primary_bundle_id
            ## 
            # The version of the primary .app in the DMG (Apple Disk Image). This maps to the CFBundleShortVersion in the app's bundle configuration.
            @primary_bundle_version
            ## 
            ## Instantiates a new MacOSDmgApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSDmgApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_dmg_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSDmgApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ignoreVersionDetection" => lambda {|n| @ignore_version_detection = n.get_boolean_value() },
                    "includedApps" => lambda {|n| @included_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MacOSIncludedApp.create_from_discriminator_value(pn) }) },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MacOSMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "primaryBundleId" => lambda {|n| @primary_bundle_id = n.get_string_value() },
                    "primaryBundleVersion" => lambda {|n| @primary_bundle_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the ignoreVersionDetection property value. When TRUE, indicates that the app's version will NOT be used to detect if the app is installed on a device. When FALSE, indicates that the app's version will be used to detect if the app is installed on a device. Set this to true for apps that use a self update feature. The default value is FALSE.
            ## @return a boolean
            ## 
            def ignore_version_detection
                return @ignore_version_detection
            end
            ## 
            ## Sets the ignoreVersionDetection property value. When TRUE, indicates that the app's version will NOT be used to detect if the app is installed on a device. When FALSE, indicates that the app's version will be used to detect if the app is installed on a device. Set this to true for apps that use a self update feature. The default value is FALSE.
            ## @param value Value to set for the ignoreVersionDetection property.
            ## @return a void
            ## 
            def ignore_version_detection=(value)
                @ignore_version_detection = value
            end
            ## 
            ## Gets the includedApps property value. The list of .apps expected to be installed by the DMG (Apple Disk Image)
            ## @return a mac_o_s_included_app
            ## 
            def included_apps
                return @included_apps
            end
            ## 
            ## Sets the includedApps property value. The list of .apps expected to be installed by the DMG (Apple Disk Image)
            ## @param value Value to set for the includedApps property.
            ## @return a void
            ## 
            def included_apps=(value)
                @included_apps = value
            end
            ## 
            ## Gets the minimumSupportedOperatingSystem property value. ComplexType macOSMinimumOperatingSystem that indicates the minimum operating system applicable for the application.
            ## @return a mac_o_s_minimum_operating_system
            ## 
            def minimum_supported_operating_system
                return @minimum_supported_operating_system
            end
            ## 
            ## Sets the minimumSupportedOperatingSystem property value. ComplexType macOSMinimumOperatingSystem that indicates the minimum operating system applicable for the application.
            ## @param value Value to set for the minimumSupportedOperatingSystem property.
            ## @return a void
            ## 
            def minimum_supported_operating_system=(value)
                @minimum_supported_operating_system = value
            end
            ## 
            ## Gets the primaryBundleId property value. The bundleId of the primary .app in the DMG (Apple Disk Image). This maps to the CFBundleIdentifier in the app's bundle configuration.
            ## @return a string
            ## 
            def primary_bundle_id
                return @primary_bundle_id
            end
            ## 
            ## Sets the primaryBundleId property value. The bundleId of the primary .app in the DMG (Apple Disk Image). This maps to the CFBundleIdentifier in the app's bundle configuration.
            ## @param value Value to set for the primaryBundleId property.
            ## @return a void
            ## 
            def primary_bundle_id=(value)
                @primary_bundle_id = value
            end
            ## 
            ## Gets the primaryBundleVersion property value. The version of the primary .app in the DMG (Apple Disk Image). This maps to the CFBundleShortVersion in the app's bundle configuration.
            ## @return a string
            ## 
            def primary_bundle_version
                return @primary_bundle_version
            end
            ## 
            ## Sets the primaryBundleVersion property value. The version of the primary .app in the DMG (Apple Disk Image). This maps to the CFBundleShortVersion in the app's bundle configuration.
            ## @param value Value to set for the primaryBundleVersion property.
            ## @return a void
            ## 
            def primary_bundle_version=(value)
                @primary_bundle_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("ignoreVersionDetection", @ignore_version_detection)
                writer.write_collection_of_object_values("includedApps", @included_apps)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("primaryBundleId", @primary_bundle_id)
                writer.write_string_value("primaryBundleVersion", @primary_bundle_version)
            end
        end
    end
end
