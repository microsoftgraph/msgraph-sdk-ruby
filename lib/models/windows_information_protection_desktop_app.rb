require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WindowsInformationProtectionDesktopApp < MicrosoftGraph::Models::WindowsInformationProtectionApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The binary name.
            @binary_name
            ## 
            # The high binary version.
            @binary_version_high
            ## 
            # The lower binary version.
            @binary_version_low
            ## 
            ## Gets the binaryName property value. The binary name.
            ## @return a string
            ## 
            def binary_name
                return @binary_name
            end
            ## 
            ## Sets the binaryName property value. The binary name.
            ## @param value Value to set for the binary_name property.
            ## @return a void
            ## 
            def binary_name=(value)
                @binary_name = value
            end
            ## 
            ## Gets the binaryVersionHigh property value. The high binary version.
            ## @return a string
            ## 
            def binary_version_high
                return @binary_version_high
            end
            ## 
            ## Sets the binaryVersionHigh property value. The high binary version.
            ## @param value Value to set for the binary_version_high property.
            ## @return a void
            ## 
            def binary_version_high=(value)
                @binary_version_high = value
            end
            ## 
            ## Gets the binaryVersionLow property value. The lower binary version.
            ## @return a string
            ## 
            def binary_version_low
                return @binary_version_low
            end
            ## 
            ## Sets the binaryVersionLow property value. The lower binary version.
            ## @param value Value to set for the binary_version_low property.
            ## @return a void
            ## 
            def binary_version_low=(value)
                @binary_version_low = value
            end
            ## 
            ## Instantiates a new WindowsInformationProtectionDesktopApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsInformationProtectionDesktopApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_desktop_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionDesktopApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "binaryName" => lambda {|n| @binary_name = n.get_string_value() },
                    "binaryVersionHigh" => lambda {|n| @binary_version_high = n.get_string_value() },
                    "binaryVersionLow" => lambda {|n| @binary_version_low = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("binaryName", @binary_name)
                writer.write_string_value("binaryVersionHigh", @binary_version_high)
                writer.write_string_value("binaryVersionLow", @binary_version_low)
            end
        end
    end
end
