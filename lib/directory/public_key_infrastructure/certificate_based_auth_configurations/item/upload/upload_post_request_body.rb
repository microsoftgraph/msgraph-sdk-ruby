require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../directory'
require_relative '../../../public_key_infrastructure'
require_relative '../../certificate_based_auth_configurations'
require_relative '../item'
require_relative './upload'

module MicrosoftGraph
    module Directory
        module PublicKeyInfrastructure
            module CertificateBasedAuthConfigurations
                module Item
                    module Upload
                        class UploadPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The sha256FileHash property
                            @sha256_file_hash
                            ## 
                            # The uploadUrl property
                            @upload_url
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
                            ## Instantiates a new UploadPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a upload_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return UploadPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "sha256FileHash" => lambda {|n| @sha256_file_hash = n.get_string_value() },
                                    "uploadUrl" => lambda {|n| @upload_url = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("sha256FileHash", @sha256_file_hash)
                                writer.write_string_value("uploadUrl", @upload_url)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the sha256FileHash property value. The sha256FileHash property
                            ## @return a string
                            ## 
                            def sha256_file_hash
                                return @sha256_file_hash
                            end
                            ## 
                            ## Sets the sha256FileHash property value. The sha256FileHash property
                            ## @param value Value to set for the sha256FileHash property.
                            ## @return a void
                            ## 
                            def sha256_file_hash=(value)
                                @sha256_file_hash = value
                            end
                            ## 
                            ## Gets the uploadUrl property value. The uploadUrl property
                            ## @return a string
                            ## 
                            def upload_url
                                return @upload_url
                            end
                            ## 
                            ## Sets the uploadUrl property value. The uploadUrl property
                            ## @param value Value to set for the uploadUrl property.
                            ## @return a void
                            ## 
                            def upload_url=(value)
                                @upload_url = value
                            end
                        end
                    end
                end
            end
        end
    end
end
