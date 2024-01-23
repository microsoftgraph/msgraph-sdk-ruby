require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains properties for file encryption information for the content version of a line of business app.
        class FileEncryptionInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The key used to encrypt the file content.
            @encryption_key
            ## 
            # The file digest prior to encryption. ProfileVersion1 requires a non-null FileDigest.
            @file_digest
            ## 
            # The file digest algorithm. ProfileVersion1 currently only supports SHA256 for the FileDigestAlgorithm.
            @file_digest_algorithm
            ## 
            # The initialization vector (IV) used for the encryption algorithm. Must be 16 bytes.
            @initialization_vector
            ## 
            # The hash of the concatenation of the IV and encrypted file content. Must be 32 bytes.
            @mac
            ## 
            # The key used to compute the message authentication code of the concatenation of the IV and encrypted file content. Must be 32 bytes.
            @mac_key
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The profile identifier. Maps to the strategy used to encrypt the file. Currently, only ProfileVersion1 is supported.
            @profile_identifier
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new fileEncryptionInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a file_encryption_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileEncryptionInfo.new
            end
            ## 
            ## Gets the encryptionKey property value. The key used to encrypt the file content.
            ## @return a base64url
            ## 
            def encryption_key
                return @encryption_key
            end
            ## 
            ## Sets the encryptionKey property value. The key used to encrypt the file content.
            ## @param value Value to set for the encryptionKey property.
            ## @return a void
            ## 
            def encryption_key=(value)
                @encryption_key = value
            end
            ## 
            ## Gets the fileDigest property value. The file digest prior to encryption. ProfileVersion1 requires a non-null FileDigest.
            ## @return a base64url
            ## 
            def file_digest
                return @file_digest
            end
            ## 
            ## Sets the fileDigest property value. The file digest prior to encryption. ProfileVersion1 requires a non-null FileDigest.
            ## @param value Value to set for the fileDigest property.
            ## @return a void
            ## 
            def file_digest=(value)
                @file_digest = value
            end
            ## 
            ## Gets the fileDigestAlgorithm property value. The file digest algorithm. ProfileVersion1 currently only supports SHA256 for the FileDigestAlgorithm.
            ## @return a string
            ## 
            def file_digest_algorithm
                return @file_digest_algorithm
            end
            ## 
            ## Sets the fileDigestAlgorithm property value. The file digest algorithm. ProfileVersion1 currently only supports SHA256 for the FileDigestAlgorithm.
            ## @param value Value to set for the fileDigestAlgorithm property.
            ## @return a void
            ## 
            def file_digest_algorithm=(value)
                @file_digest_algorithm = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "encryptionKey" => lambda {|n| @encryption_key = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "fileDigest" => lambda {|n| @file_digest = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "fileDigestAlgorithm" => lambda {|n| @file_digest_algorithm = n.get_string_value() },
                    "initializationVector" => lambda {|n| @initialization_vector = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "mac" => lambda {|n| @mac = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "macKey" => lambda {|n| @mac_key = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "profileIdentifier" => lambda {|n| @profile_identifier = n.get_string_value() },
                }
            end
            ## 
            ## Gets the initializationVector property value. The initialization vector (IV) used for the encryption algorithm. Must be 16 bytes.
            ## @return a base64url
            ## 
            def initialization_vector
                return @initialization_vector
            end
            ## 
            ## Sets the initializationVector property value. The initialization vector (IV) used for the encryption algorithm. Must be 16 bytes.
            ## @param value Value to set for the initializationVector property.
            ## @return a void
            ## 
            def initialization_vector=(value)
                @initialization_vector = value
            end
            ## 
            ## Gets the mac property value. The hash of the concatenation of the IV and encrypted file content. Must be 32 bytes.
            ## @return a base64url
            ## 
            def mac
                return @mac
            end
            ## 
            ## Sets the mac property value. The hash of the concatenation of the IV and encrypted file content. Must be 32 bytes.
            ## @param value Value to set for the mac property.
            ## @return a void
            ## 
            def mac=(value)
                @mac = value
            end
            ## 
            ## Gets the macKey property value. The key used to compute the message authentication code of the concatenation of the IV and encrypted file content. Must be 32 bytes.
            ## @return a base64url
            ## 
            def mac_key
                return @mac_key
            end
            ## 
            ## Sets the macKey property value. The key used to compute the message authentication code of the concatenation of the IV and encrypted file content. Must be 32 bytes.
            ## @param value Value to set for the macKey property.
            ## @return a void
            ## 
            def mac_key=(value)
                @mac_key = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the profileIdentifier property value. The profile identifier. Maps to the strategy used to encrypt the file. Currently, only ProfileVersion1 is supported.
            ## @return a string
            ## 
            def profile_identifier
                return @profile_identifier
            end
            ## 
            ## Sets the profileIdentifier property value. The profile identifier. Maps to the strategy used to encrypt the file. Currently, only ProfileVersion1 is supported.
            ## @param value Value to set for the profileIdentifier property.
            ## @return a void
            ## 
            def profile_identifier=(value)
                @profile_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("encryptionKey", @encryption_key)
                writer.write_object_value("fileDigest", @file_digest)
                writer.write_string_value("fileDigestAlgorithm", @file_digest_algorithm)
                writer.write_object_value("initializationVector", @initialization_vector)
                writer.write_object_value("mac", @mac)
                writer.write_object_value("macKey", @mac_key)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("profileIdentifier", @profile_identifier)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
