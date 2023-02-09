require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosStoreApp < MicrosoftGraph::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Apple App Store URL
            @app_store_url
            ## 
            # Contains properties of the possible iOS device types the mobile app can run on.
            @applicable_device_type
            ## 
            # The Identity Name.
            @bundle_id
            ## 
            # The value for the minimum applicable operating system.
            @minimum_supported_operating_system
            ## 
            ## Gets the appStoreUrl property value. The Apple App Store URL
            ## @return a string
            ## 
            def app_store_url
                return @app_store_url
            end
            ## 
            ## Sets the appStoreUrl property value. The Apple App Store URL
            ## @param value Value to set for the app_store_url property.
            ## @return a void
            ## 
            def app_store_url=(value)
                @app_store_url = value
            end
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
            ## Instantiates a new IosStoreApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosStoreApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_store_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosStoreApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appStoreUrl" => lambda {|n| @app_store_url = n.get_string_value() },
                    "applicableDeviceType" => lambda {|n| @applicable_device_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IosDeviceType.create_from_discriminator_value(pn) }) },
                    "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IosMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("appStoreUrl", @app_store_url)
                writer.write_object_value("applicableDeviceType", @applicable_device_type)
                writer.write_string_value("bundleId", @bundle_id)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
            end
        end
    end
end
