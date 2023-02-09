require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MacOSLobApp < MicrosoftGraph::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The build number of the package. This should match the package CFBundleShortVersionString of the .pkg file.
            @build_number
            ## 
            # The primary bundleId of the package.
            @bundle_id
            ## 
            # List of ComplexType macOSLobChildApp objects. Represents the apps expected to be installed by the package.
            @child_apps
            ## 
            # When TRUE, indicates that the app's version will NOT be used to detect if the app is installed on a device. When FALSE, indicates that the app's version will be used to detect if the app is installed on a device. Set this to true for apps that use a self update feature.
            @ignore_version_detection
            ## 
            # When TRUE, indicates that the app will be installed as managed (requires macOS 11.0 and other managed package restrictions). When FALSE, indicates that the app will be installed as unmanaged.
            @install_as_managed
            ## 
            # The MD5 hash codes. This is empty if the package was uploaded directly. If the Intune App Wrapping Tool is used to create a .intunemac, this value can be found inside the Detection.xml file.
            @md5_hash
            ## 
            # The chunk size for MD5 hash. This is '0' or empty if the package was uploaded directly. If the Intune App Wrapping Tool is used to create a .intunemac, this value can be found inside the Detection.xml file.
            @md5_hash_chunk_size
            ## 
            # ComplexType macOSMinimumOperatingSystem that indicates the minimum operating system applicable for the application.
            @minimum_supported_operating_system
            ## 
            # The version number of the package. This should match the package CFBundleVersion in the packageinfo file.
            @version_number
            ## 
            ## Gets the buildNumber property value. The build number of the package. This should match the package CFBundleShortVersionString of the .pkg file.
            ## @return a string
            ## 
            def build_number
                return @build_number
            end
            ## 
            ## Sets the buildNumber property value. The build number of the package. This should match the package CFBundleShortVersionString of the .pkg file.
            ## @param value Value to set for the build_number property.
            ## @return a void
            ## 
            def build_number=(value)
                @build_number = value
            end
            ## 
            ## Gets the bundleId property value. The primary bundleId of the package.
            ## @return a string
            ## 
            def bundle_id
                return @bundle_id
            end
            ## 
            ## Sets the bundleId property value. The primary bundleId of the package.
            ## @param value Value to set for the bundle_id property.
            ## @return a void
            ## 
            def bundle_id=(value)
                @bundle_id = value
            end
            ## 
            ## Gets the childApps property value. List of ComplexType macOSLobChildApp objects. Represents the apps expected to be installed by the package.
            ## @return a mac_o_s_lob_child_app
            ## 
            def child_apps
                return @child_apps
            end
            ## 
            ## Sets the childApps property value. List of ComplexType macOSLobChildApp objects. Represents the apps expected to be installed by the package.
            ## @param value Value to set for the child_apps property.
            ## @return a void
            ## 
            def child_apps=(value)
                @child_apps = value
            end
            ## 
            ## Instantiates a new MacOSLobApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSLobApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_lob_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSLobApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "buildNumber" => lambda {|n| @build_number = n.get_string_value() },
                    "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
                    "childApps" => lambda {|n| @child_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MacOSLobChildApp.create_from_discriminator_value(pn) }) },
                    "ignoreVersionDetection" => lambda {|n| @ignore_version_detection = n.get_boolean_value() },
                    "installAsManaged" => lambda {|n| @install_as_managed = n.get_boolean_value() },
                    "md5Hash" => lambda {|n| @md5_hash = n.get_collection_of_primitive_values(String) },
                    "md5HashChunkSize" => lambda {|n| @md5_hash_chunk_size = n.get_number_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::MacOSMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "versionNumber" => lambda {|n| @version_number = n.get_string_value() },
                })
            end
            ## 
            ## Gets the ignoreVersionDetection property value. When TRUE, indicates that the app's version will NOT be used to detect if the app is installed on a device. When FALSE, indicates that the app's version will be used to detect if the app is installed on a device. Set this to true for apps that use a self update feature.
            ## @return a boolean
            ## 
            def ignore_version_detection
                return @ignore_version_detection
            end
            ## 
            ## Sets the ignoreVersionDetection property value. When TRUE, indicates that the app's version will NOT be used to detect if the app is installed on a device. When FALSE, indicates that the app's version will be used to detect if the app is installed on a device. Set this to true for apps that use a self update feature.
            ## @param value Value to set for the ignore_version_detection property.
            ## @return a void
            ## 
            def ignore_version_detection=(value)
                @ignore_version_detection = value
            end
            ## 
            ## Gets the installAsManaged property value. When TRUE, indicates that the app will be installed as managed (requires macOS 11.0 and other managed package restrictions). When FALSE, indicates that the app will be installed as unmanaged.
            ## @return a boolean
            ## 
            def install_as_managed
                return @install_as_managed
            end
            ## 
            ## Sets the installAsManaged property value. When TRUE, indicates that the app will be installed as managed (requires macOS 11.0 and other managed package restrictions). When FALSE, indicates that the app will be installed as unmanaged.
            ## @param value Value to set for the install_as_managed property.
            ## @return a void
            ## 
            def install_as_managed=(value)
                @install_as_managed = value
            end
            ## 
            ## Gets the md5Hash property value. The MD5 hash codes. This is empty if the package was uploaded directly. If the Intune App Wrapping Tool is used to create a .intunemac, this value can be found inside the Detection.xml file.
            ## @return a string
            ## 
            def md5_hash
                return @md5_hash
            end
            ## 
            ## Sets the md5Hash property value. The MD5 hash codes. This is empty if the package was uploaded directly. If the Intune App Wrapping Tool is used to create a .intunemac, this value can be found inside the Detection.xml file.
            ## @param value Value to set for the md5_hash property.
            ## @return a void
            ## 
            def md5_hash=(value)
                @md5_hash = value
            end
            ## 
            ## Gets the md5HashChunkSize property value. The chunk size for MD5 hash. This is '0' or empty if the package was uploaded directly. If the Intune App Wrapping Tool is used to create a .intunemac, this value can be found inside the Detection.xml file.
            ## @return a integer
            ## 
            def md5_hash_chunk_size
                return @md5_hash_chunk_size
            end
            ## 
            ## Sets the md5HashChunkSize property value. The chunk size for MD5 hash. This is '0' or empty if the package was uploaded directly. If the Intune App Wrapping Tool is used to create a .intunemac, this value can be found inside the Detection.xml file.
            ## @param value Value to set for the md5_hash_chunk_size property.
            ## @return a void
            ## 
            def md5_hash_chunk_size=(value)
                @md5_hash_chunk_size = value
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
            ## @param value Value to set for the minimum_supported_operating_system property.
            ## @return a void
            ## 
            def minimum_supported_operating_system=(value)
                @minimum_supported_operating_system = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("buildNumber", @build_number)
                writer.write_string_value("bundleId", @bundle_id)
                writer.write_collection_of_object_values("childApps", @child_apps)
                writer.write_boolean_value("ignoreVersionDetection", @ignore_version_detection)
                writer.write_boolean_value("installAsManaged", @install_as_managed)
                writer.write_collection_of_primitive_values("md5Hash", @md5_hash)
                writer.write_number_value("md5HashChunkSize", @md5_hash_chunk_size)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("versionNumber", @version_number)
            end
            ## 
            ## Gets the versionNumber property value. The version number of the package. This should match the package CFBundleVersion in the packageinfo file.
            ## @return a string
            ## 
            def version_number
                return @version_number
            end
            ## 
            ## Sets the versionNumber property value. The version number of the package. This should match the package CFBundleVersion in the packageinfo file.
            ## @param value Value to set for the version_number property.
            ## @return a void
            ## 
            def version_number=(value)
                @version_number = value
            end
        end
    end
end
