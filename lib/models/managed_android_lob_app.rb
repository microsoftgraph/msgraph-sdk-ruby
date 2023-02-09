require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ManagedAndroidLobApp < MicrosoftGraph::Models::ManagedMobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The value for the minimum applicable operating system.
            @minimum_supported_operating_system
            ## 
            # The package identifier.
            @package_id
            ## 
            # The version code of managed Android Line of Business (LoB) app.
            @version_code
            ## 
            # The version name of managed Android Line of Business (LoB) app.
            @version_name
            ## 
            ## Instantiates a new ManagedAndroidLobApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.managedAndroidLobApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_android_lob_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAndroidLobApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AndroidMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "packageId" => lambda {|n| @package_id = n.get_string_value() },
                    "versionCode" => lambda {|n| @version_code = n.get_string_value() },
                    "versionName" => lambda {|n| @version_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @return a android_minimum_operating_system
            ## 
            def minimum_supported_operating_system
                return @minimum_supported_operating_system
            end
            ## 
            ## Sets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @param value Value to set for the minimum_supported_operating_system property.
            ## @return a void
            ## 
            def minimum_supported_operating_system=(value)
                @minimum_supported_operating_system = value
            end
            ## 
            ## Gets the packageId property value. The package identifier.
            ## @return a string
            ## 
            def package_id
                return @package_id
            end
            ## 
            ## Sets the packageId property value. The package identifier.
            ## @param value Value to set for the package_id property.
            ## @return a void
            ## 
            def package_id=(value)
                @package_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("packageId", @package_id)
                writer.write_string_value("versionCode", @version_code)
                writer.write_string_value("versionName", @version_name)
            end
            ## 
            ## Gets the versionCode property value. The version code of managed Android Line of Business (LoB) app.
            ## @return a string
            ## 
            def version_code
                return @version_code
            end
            ## 
            ## Sets the versionCode property value. The version code of managed Android Line of Business (LoB) app.
            ## @param value Value to set for the version_code property.
            ## @return a void
            ## 
            def version_code=(value)
                @version_code = value
            end
            ## 
            ## Gets the versionName property value. The version name of managed Android Line of Business (LoB) app.
            ## @return a string
            ## 
            def version_name
                return @version_name
            end
            ## 
            ## Sets the versionName property value. The version name of managed Android Line of Business (LoB) app.
            ## @param value Value to set for the version_name property.
            ## @return a void
            ## 
            def version_name=(value)
                @version_name = value
            end
        end
    end
end
