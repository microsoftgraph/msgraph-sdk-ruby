require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # A managed or unmanaged app that is installed on a managed device. Unmanaged apps will only appear for devices marked as corporate owned.
        class DetectedApp < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of devices that have installed this application
            @device_count
            ## 
            # Name of the discovered application. Read-only
            @display_name
            ## 
            # The devices that have the discovered application installed
            @managed_devices
            ## 
            # Indicates the operating system / platform of the discovered application.  Some possible values are Windows, iOS, macOS. The default value is unknown (0).
            @platform
            ## 
            # Indicates the publisher of the discovered application. For example: 'Microsoft'.  The default value is an empty string.
            @publisher
            ## 
            # Discovered application size in bytes. Read-only
            @size_in_byte
            ## 
            # Version of the discovered application. Read-only
            @version
            ## 
            ## Instantiates a new detectedApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a detected_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DetectedApp.new
            end
            ## 
            ## Gets the deviceCount property value. The number of devices that have installed this application
            ## @return a integer
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. The number of devices that have installed this application
            ## @param value Value to set for the device_count property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## Gets the displayName property value. Name of the discovered application. Read-only
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the discovered application. Read-only
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "managedDevices" => lambda {|n| @managed_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraph::Models::DetectedAppPlatformType) },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "sizeInByte" => lambda {|n| @size_in_byte = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managedDevices property value. The devices that have the discovered application installed
            ## @return a managed_device
            ## 
            def managed_devices
                return @managed_devices
            end
            ## 
            ## Sets the managedDevices property value. The devices that have the discovered application installed
            ## @param value Value to set for the managed_devices property.
            ## @return a void
            ## 
            def managed_devices=(value)
                @managed_devices = value
            end
            ## 
            ## Gets the platform property value. Indicates the operating system / platform of the discovered application.  Some possible values are Windows, iOS, macOS. The default value is unknown (0).
            ## @return a detected_app_platform_type
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. Indicates the operating system / platform of the discovered application.  Some possible values are Windows, iOS, macOS. The default value is unknown (0).
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Gets the publisher property value. Indicates the publisher of the discovered application. For example: 'Microsoft'.  The default value is an empty string.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. Indicates the publisher of the discovered application. For example: 'Microsoft'.  The default value is an empty string.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("deviceCount", @device_count)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("managedDevices", @managed_devices)
                writer.write_enum_value("platform", @platform)
                writer.write_string_value("publisher", @publisher)
                writer.write_object_value("sizeInByte", @size_in_byte)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the sizeInByte property value. Discovered application size in bytes. Read-only
            ## @return a int64
            ## 
            def size_in_byte
                return @size_in_byte
            end
            ## 
            ## Sets the sizeInByte property value. Discovered application size in bytes. Read-only
            ## @param value Value to set for the size_in_byte property.
            ## @return a void
            ## 
            def size_in_byte=(value)
                @size_in_byte = value
            end
            ## 
            ## Gets the version property value. Version of the discovered application. Read-only
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the discovered application. Read-only
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
