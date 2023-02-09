require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class FileDetails
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The name of the file.
                @file_name
                ## 
                # The file path (location) of the file instance.
                @file_path
                ## 
                # The publisher of the file.
                @file_publisher
                ## 
                # The size of the file in bytes.
                @file_size
                ## 
                # The certificate authority (CA) that issued the certificate.
                @issuer
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The Sha1 cryptographic hash of the file content.
                @sha1
                ## 
                # The Sha256 cryptographic hash of the file content.
                @sha256
                ## 
                # The signer of the signed file.
                @signer
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
                ## Instantiates a new fileDetails and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a file_details
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return FileDetails.new
                end
                ## 
                ## Gets the fileName property value. The name of the file.
                ## @return a string
                ## 
                def file_name
                    return @file_name
                end
                ## 
                ## Sets the fileName property value. The name of the file.
                ## @param value Value to set for the file_name property.
                ## @return a void
                ## 
                def file_name=(value)
                    @file_name = value
                end
                ## 
                ## Gets the filePath property value. The file path (location) of the file instance.
                ## @return a string
                ## 
                def file_path
                    return @file_path
                end
                ## 
                ## Sets the filePath property value. The file path (location) of the file instance.
                ## @param value Value to set for the file_path property.
                ## @return a void
                ## 
                def file_path=(value)
                    @file_path = value
                end
                ## 
                ## Gets the filePublisher property value. The publisher of the file.
                ## @return a string
                ## 
                def file_publisher
                    return @file_publisher
                end
                ## 
                ## Sets the filePublisher property value. The publisher of the file.
                ## @param value Value to set for the file_publisher property.
                ## @return a void
                ## 
                def file_publisher=(value)
                    @file_publisher = value
                end
                ## 
                ## Gets the fileSize property value. The size of the file in bytes.
                ## @return a int64
                ## 
                def file_size
                    return @file_size
                end
                ## 
                ## Sets the fileSize property value. The size of the file in bytes.
                ## @param value Value to set for the file_size property.
                ## @return a void
                ## 
                def file_size=(value)
                    @file_size = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "fileName" => lambda {|n| @file_name = n.get_string_value() },
                        "filePath" => lambda {|n| @file_path = n.get_string_value() },
                        "filePublisher" => lambda {|n| @file_publisher = n.get_string_value() },
                        "fileSize" => lambda {|n| @file_size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "issuer" => lambda {|n| @issuer = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "sha1" => lambda {|n| @sha1 = n.get_string_value() },
                        "sha256" => lambda {|n| @sha256 = n.get_string_value() },
                        "signer" => lambda {|n| @signer = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the issuer property value. The certificate authority (CA) that issued the certificate.
                ## @return a string
                ## 
                def issuer
                    return @issuer
                end
                ## 
                ## Sets the issuer property value. The certificate authority (CA) that issued the certificate.
                ## @param value Value to set for the issuer property.
                ## @return a void
                ## 
                def issuer=(value)
                    @issuer = value
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("fileName", @file_name)
                    writer.write_string_value("filePath", @file_path)
                    writer.write_string_value("filePublisher", @file_publisher)
                    writer.write_object_value("fileSize", @file_size)
                    writer.write_string_value("issuer", @issuer)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("sha1", @sha1)
                    writer.write_string_value("sha256", @sha256)
                    writer.write_string_value("signer", @signer)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the sha1 property value. The Sha1 cryptographic hash of the file content.
                ## @return a string
                ## 
                def sha1
                    return @sha1
                end
                ## 
                ## Sets the sha1 property value. The Sha1 cryptographic hash of the file content.
                ## @param value Value to set for the sha1 property.
                ## @return a void
                ## 
                def sha1=(value)
                    @sha1 = value
                end
                ## 
                ## Gets the sha256 property value. The Sha256 cryptographic hash of the file content.
                ## @return a string
                ## 
                def sha256
                    return @sha256
                end
                ## 
                ## Sets the sha256 property value. The Sha256 cryptographic hash of the file content.
                ## @param value Value to set for the sha256 property.
                ## @return a void
                ## 
                def sha256=(value)
                    @sha256 = value
                end
                ## 
                ## Gets the signer property value. The signer of the signed file.
                ## @return a string
                ## 
                def signer
                    return @signer
                end
                ## 
                ## Sets the signer property value. The signer of the signed file.
                ## @param value Value to set for the signer property.
                ## @return a void
                ## 
                def signer=(value)
                    @signer = value
                end
            end
        end
    end
end
