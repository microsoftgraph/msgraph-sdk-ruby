require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AppLogCollectionDownloadDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The appLogDecryptionAlgorithm property
            @app_log_decryption_algorithm
            ## 
            # Decryption key that used to decrypt the log.
            @decryption_key
            ## 
            # Download SAS (Shared Access Signature) Url for completed app log request.
            @download_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appLogDecryptionAlgorithm property value. The appLogDecryptionAlgorithm property
            ## @return a app_log_decryption_algorithm
            ## 
            def app_log_decryption_algorithm
                return @app_log_decryption_algorithm
            end
            ## 
            ## Sets the appLogDecryptionAlgorithm property value. The appLogDecryptionAlgorithm property
            ## @param value Value to set for the appLogDecryptionAlgorithm property.
            ## @return a void
            ## 
            def app_log_decryption_algorithm=(value)
                @app_log_decryption_algorithm = value
            end
            ## 
            ## Instantiates a new appLogCollectionDownloadDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_log_collection_download_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppLogCollectionDownloadDetails.new
            end
            ## 
            ## Gets the decryptionKey property value. Decryption key that used to decrypt the log.
            ## @return a string
            ## 
            def decryption_key
                return @decryption_key
            end
            ## 
            ## Sets the decryptionKey property value. Decryption key that used to decrypt the log.
            ## @param value Value to set for the decryptionKey property.
            ## @return a void
            ## 
            def decryption_key=(value)
                @decryption_key = value
            end
            ## 
            ## Gets the downloadUrl property value. Download SAS (Shared Access Signature) Url for completed app log request.
            ## @return a string
            ## 
            def download_url
                return @download_url
            end
            ## 
            ## Sets the downloadUrl property value. Download SAS (Shared Access Signature) Url for completed app log request.
            ## @param value Value to set for the downloadUrl property.
            ## @return a void
            ## 
            def download_url=(value)
                @download_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appLogDecryptionAlgorithm" => lambda {|n| @app_log_decryption_algorithm = n.get_enum_value(MicrosoftGraph::Models::AppLogDecryptionAlgorithm) },
                    "decryptionKey" => lambda {|n| @decryption_key = n.get_string_value() },
                    "downloadUrl" => lambda {|n| @download_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_enum_value("appLogDecryptionAlgorithm", @app_log_decryption_algorithm)
                writer.write_string_value("decryptionKey", @decryption_key)
                writer.write_string_value("downloadUrl", @download_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
