require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../identity'
require_relative '../../api_connectors'
require_relative '../item'
require_relative './upload_client_certificate'

module MicrosoftGraph
    module Identity
        module ApiConnectors
            module Item
                module UploadClientCertificate
                    class UploadClientCertificatePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The password property
                        @password
                        ## 
                        # The pkcs12Value property
                        @pkcs12_value
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
                        ## Instantiates a new uploadClientCertificatePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a upload_client_certificate_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UploadClientCertificatePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "password" => lambda {|n| @password = n.get_string_value() },
                                "pkcs12Value" => lambda {|n| @pkcs12_value = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the password property value. The password property
                        ## @return a string
                        ## 
                        def password
                            return @password
                        end
                        ## 
                        ## Sets the password property value. The password property
                        ## @param value Value to set for the password property.
                        ## @return a void
                        ## 
                        def password=(value)
                            @password = value
                        end
                        ## 
                        ## Gets the pkcs12Value property value. The pkcs12Value property
                        ## @return a string
                        ## 
                        def pkcs12_value
                            return @pkcs12_value
                        end
                        ## 
                        ## Sets the pkcs12Value property value. The pkcs12Value property
                        ## @param value Value to set for the pkcs12_value property.
                        ## @return a void
                        ## 
                        def pkcs12_value=(value)
                            @pkcs12_value = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("password", @password)
                            writer.write_string_value("pkcs12Value", @pkcs12_value)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
