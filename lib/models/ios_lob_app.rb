require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosLobApp < MicrosoftGraph::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains properties of the possible iOS device types the mobile app can run on.
            @applicable_device_type
            ## 
            # The build number of iOS Line of Business (LoB) app.
            @build_number
            ## 
            # The Identity Name.
            @bundle_id
            ## 
            # The expiration time.
            @expiration_date_time
            ## 
            # The value for the minimum applicable operating system.
            @minimum_supported_operating_system
            ## 
            # The version number of iOS Line of Business (LoB) app.
            @version_number
            ## 
            ## Gets the applicableDeviceType property value. Contains properties of the possible iOS device types the mobile app can run on.
            ## @return a ios_device_type
            ## 
            def applicable_device_type
                return @applicable_device_type
            end
            ## 
            ## Sets the applicableDeviceType property value. Contains properties of the possible iOS device types the mobile app can run on.
            ## @param value Value to set for the applicable_device_type property.
            ## @return a void
            ## 
            def applicable_device_type=(value)
                @applicable_device_type = value
            end
            ## 
            ## Gets the buildNumber property value. The build number of iOS Line of Business (LoB) app.
            ## @return a string
            ## 
            def build_number
                return @build_number
            end
            ## 
            ## Sets the buildNumber property value. The build number of iOS Line of Business (LoB) app.
            ## @param value Value to set for the build_number property.
            ## @return a void
            ## 
            def build_number=(value)
                @build_number = value
            end
            ## 
            ## Gets the bundleId property value. The Identity Name.
            ## @return a string
            ## 
            def bundle_id
                return @bundle_id
            end
            ## 
            ## Sets the bundleId property value. The Identity Name.
            ## @param value Value to set for the bundle_id property.
            ## @return a void
            ## 
            def bundle_id=(value)
                @bundle_id = value
            end
            ## 
            ## Instantiates a new IosLobApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosLobApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_lob_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosLobApp.new
            end
            ## 
            ## Gets the expirationDateTime property value. The expiration time.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expiration time.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicableDeviceType" => lambda {|n| @applicable_device_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IosDeviceType.create_from_discriminator_value(pn) }) },
                    "buildNumber" => lambda {|n| @build_number = n.get_string_value() },
                    "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IosMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "versionNumber" => lambda {|n| @version_number = n.get_string_value() },
                })
            end
            ## 
            ## Gets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @return a ios_minimum_operating_system
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("applicableDeviceType", @applicable_device_type)
                writer.write_string_value("buildNumber", @build_number)
                writer.write_string_value("bundleId", @bundle_id)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("versionNumber", @version_number)
            end
            ## 
            ## Gets the versionNumber property value. The version number of iOS Line of Business (LoB) app.
            ## @return a string
            ## 
            def version_number
                return @version_number
            end
            ## 
            ## Sets the versionNumber property value. The version number of iOS Line of Business (LoB) app.
            ## @param value Value to set for the version_number property.
            ## @return a void
            ## 
            def version_number=(value)
                @version_number = value
            end
        end
    end
end
