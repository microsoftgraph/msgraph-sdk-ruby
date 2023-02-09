require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AndroidStoreApp < MicrosoftGraph::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Android app store URL.
            @app_store_url
            ## 
            # The value for the minimum applicable operating system.
            @minimum_supported_operating_system
            ## 
            # The package identifier.
            @package_id
            ## 
            ## Gets the appStoreUrl property value. The Android app store URL.
            ## @return a string
            ## 
            def app_store_url
                return @app_store_url
            end
            ## 
            ## Sets the appStoreUrl property value. The Android app store URL.
            ## @param value Value to set for the app_store_url property.
            ## @return a void
            ## 
            def app_store_url=(value)
                @app_store_url = value
            end
            ## 
            ## Instantiates a new AndroidStoreApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidStoreApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_store_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidStoreApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appStoreUrl" => lambda {|n| @app_store_url = n.get_string_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AndroidMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "packageId" => lambda {|n| @package_id = n.get_string_value() },
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
                writer.write_string_value("appStoreUrl", @app_store_url)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("packageId", @package_id)
            end
        end
    end
end
