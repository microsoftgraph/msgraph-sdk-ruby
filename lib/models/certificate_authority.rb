require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CertificateAuthority
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Required. The base64 encoded string representing the public certificate.
            @certificate
            ## 
            # The URL of the certificate revocation list.
            @certificate_revocation_list_url
            ## 
            # The URL contains the list of all revoked certificates since the last time a full certificate revocaton list was created.
            @delta_certificate_revocation_list_url
            ## 
            # Required. true if the trusted certificate is a root authority, false if the trusted certificate is an intermediate authority.
            @is_root_authority
            ## 
            # The issuer of the certificate, calculated from the certificate value. Read-only.
            @issuer
            ## 
            # The subject key identifier of the certificate, calculated from the certificate value. Read-only.
            @issuer_ski
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
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the certificate property value. Required. The base64 encoded string representing the public certificate.
            ## @return a base64url
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. Required. The base64 encoded string representing the public certificate.
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Gets the certificateRevocationListUrl property value. The URL of the certificate revocation list.
            ## @return a string
            ## 
            def certificate_revocation_list_url
                return @certificate_revocation_list_url
            end
            ## 
            ## Sets the certificateRevocationListUrl property value. The URL of the certificate revocation list.
            ## @param value Value to set for the certificate_revocation_list_url property.
            ## @return a void
            ## 
            def certificate_revocation_list_url=(value)
                @certificate_revocation_list_url = value
            end
            ## 
            ## Instantiates a new certificateAuthority and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a certificate_authority
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateAuthority.new
            end
            ## 
            ## Gets the deltaCertificateRevocationListUrl property value. The URL contains the list of all revoked certificates since the last time a full certificate revocaton list was created.
            ## @return a string
            ## 
            def delta_certificate_revocation_list_url
                return @delta_certificate_revocation_list_url
            end
            ## 
            ## Sets the deltaCertificateRevocationListUrl property value. The URL contains the list of all revoked certificates since the last time a full certificate revocaton list was created.
            ## @param value Value to set for the delta_certificate_revocation_list_url property.
            ## @return a void
            ## 
            def delta_certificate_revocation_list_url=(value)
                @delta_certificate_revocation_list_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "certificate" => lambda {|n| @certificate = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "certificateRevocationListUrl" => lambda {|n| @certificate_revocation_list_url = n.get_string_value() },
                    "deltaCertificateRevocationListUrl" => lambda {|n| @delta_certificate_revocation_list_url = n.get_string_value() },
                    "isRootAuthority" => lambda {|n| @is_root_authority = n.get_boolean_value() },
                    "issuer" => lambda {|n| @issuer = n.get_string_value() },
                    "issuerSki" => lambda {|n| @issuer_ski = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isRootAuthority property value. Required. true if the trusted certificate is a root authority, false if the trusted certificate is an intermediate authority.
            ## @return a boolean
            ## 
            def is_root_authority
                return @is_root_authority
            end
            ## 
            ## Sets the isRootAuthority property value. Required. true if the trusted certificate is a root authority, false if the trusted certificate is an intermediate authority.
            ## @param value Value to set for the is_root_authority property.
            ## @return a void
            ## 
            def is_root_authority=(value)
                @is_root_authority = value
            end
            ## 
            ## Gets the issuer property value. The issuer of the certificate, calculated from the certificate value. Read-only.
            ## @return a string
            ## 
            def issuer
                return @issuer
            end
            ## 
            ## Sets the issuer property value. The issuer of the certificate, calculated from the certificate value. Read-only.
            ## @param value Value to set for the issuer property.
            ## @return a void
            ## 
            def issuer=(value)
                @issuer = value
            end
            ## 
            ## Gets the issuerSki property value. The subject key identifier of the certificate, calculated from the certificate value. Read-only.
            ## @return a string
            ## 
            def issuer_ski
                return @issuer_ski
            end
            ## 
            ## Sets the issuerSki property value. The subject key identifier of the certificate, calculated from the certificate value. Read-only.
            ## @param value Value to set for the issuer_ski property.
            ## @return a void
            ## 
            def issuer_ski=(value)
                @issuer_ski = value
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
                writer.write_object_value("certificate", @certificate)
                writer.write_string_value("certificateRevocationListUrl", @certificate_revocation_list_url)
                writer.write_string_value("deltaCertificateRevocationListUrl", @delta_certificate_revocation_list_url)
                writer.write_boolean_value("isRootAuthority", @is_root_authority)
                writer.write_string_value("issuer", @issuer)
                writer.write_string_value("issuerSki", @issuer_ski)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
