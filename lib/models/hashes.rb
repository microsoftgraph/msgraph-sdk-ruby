require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Hashes
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The CRC32 value of the file in little endian (if available). Read-only.
            @crc32_hash
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A proprietary hash of the file that can be used to determine if the contents of the file have changed (if available). Read-only.
            @quick_xor_hash
            ## 
            # SHA1 hash for the contents of the file (if available). Read-only.
            @sha1_hash
            ## 
            # SHA256 hash for the contents of the file (if available). Read-only.
            @sha256_hash
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new hashes and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the crc32Hash property value. The CRC32 value of the file in little endian (if available). Read-only.
            ## @return a string
            ## 
            def crc32_hash
                return @crc32_hash
            end
            ## 
            ## Sets the crc32Hash property value. The CRC32 value of the file in little endian (if available). Read-only.
            ## @param value Value to set for the crc32_hash property.
            ## @return a void
            ## 
            def crc32_hash=(value)
                @crc32_hash = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a hashes
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Hashes.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "crc32Hash" => lambda {|n| @crc32_hash = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "quickXorHash" => lambda {|n| @quick_xor_hash = n.get_string_value() },
                    "sha1Hash" => lambda {|n| @sha1_hash = n.get_string_value() },
                    "sha256Hash" => lambda {|n| @sha256_hash = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the quickXorHash property value. A proprietary hash of the file that can be used to determine if the contents of the file have changed (if available). Read-only.
            ## @return a string
            ## 
            def quick_xor_hash
                return @quick_xor_hash
            end
            ## 
            ## Sets the quickXorHash property value. A proprietary hash of the file that can be used to determine if the contents of the file have changed (if available). Read-only.
            ## @param value Value to set for the quick_xor_hash property.
            ## @return a void
            ## 
            def quick_xor_hash=(value)
                @quick_xor_hash = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("crc32Hash", @crc32_hash)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("quickXorHash", @quick_xor_hash)
                writer.write_string_value("sha1Hash", @sha1_hash)
                writer.write_string_value("sha256Hash", @sha256_hash)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sha1Hash property value. SHA1 hash for the contents of the file (if available). Read-only.
            ## @return a string
            ## 
            def sha1_hash
                return @sha1_hash
            end
            ## 
            ## Sets the sha1Hash property value. SHA1 hash for the contents of the file (if available). Read-only.
            ## @param value Value to set for the sha1_hash property.
            ## @return a void
            ## 
            def sha1_hash=(value)
                @sha1_hash = value
            end
            ## 
            ## Gets the sha256Hash property value. SHA256 hash for the contents of the file (if available). Read-only.
            ## @return a string
            ## 
            def sha256_hash
                return @sha256_hash
            end
            ## 
            ## Sets the sha256Hash property value. SHA256 hash for the contents of the file (if available). Read-only.
            ## @param value Value to set for the sha256_hash property.
            ## @return a void
            ## 
            def sha256_hash=(value)
                @sha256_hash = value
            end
        end
    end
end
