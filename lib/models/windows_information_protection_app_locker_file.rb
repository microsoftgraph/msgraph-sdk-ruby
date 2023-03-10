require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Windows Information Protection AppLocker File
        class WindowsInformationProtectionAppLockerFile < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The friendly name
            @display_name
            ## 
            # File as a byte array
            @file
            ## 
            # SHA256 hash of the file
            @file_hash
            ## 
            # Version of the entity.
            @version
            ## 
            ## Instantiates a new windowsInformationProtectionAppLockerFile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_app_locker_file
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionAppLockerFile.new
            end
            ## 
            ## Gets the displayName property value. The friendly name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The friendly name
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the file property value. File as a byte array
            ## @return a base64url
            ## 
            def file
                return @file
            end
            ## 
            ## Sets the file property value. File as a byte array
            ## @param value Value to set for the file property.
            ## @return a void
            ## 
            def file=(value)
                @file = value
            end
            ## 
            ## Gets the fileHash property value. SHA256 hash of the file
            ## @return a string
            ## 
            def file_hash
                return @file_hash
            end
            ## 
            ## Sets the fileHash property value. SHA256 hash of the file
            ## @param value Value to set for the file_hash property.
            ## @return a void
            ## 
            def file_hash=(value)
                @file_hash = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "file" => lambda {|n| @file = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "fileHash" => lambda {|n| @file_hash = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("file", @file)
                writer.write_string_value("fileHash", @file_hash)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. Version of the entity.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the entity.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
