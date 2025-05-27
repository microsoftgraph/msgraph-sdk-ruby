require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CertificateAuthorityDetail < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The certificate property
            @certificate
            ## 
            # The certificateAuthorityType property
            @certificate_authority_type
            ## 
            # The certificateRevocationListUrl property
            @certificate_revocation_list_url
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The deltaCertificateRevocationListUrl property
            @delta_certificate_revocation_list_url
            ## 
            # The displayName property
            @display_name
            ## 
            # The expirationDateTime property
            @expiration_date_time
            ## 
            # The isIssuerHintEnabled property
            @is_issuer_hint_enabled
            ## 
            # The issuer property
            @issuer
            ## 
            # The issuerSubjectKeyIdentifier property
            @issuer_subject_key_identifier
            ## 
            # The thumbprint property
            @thumbprint
            ## 
            ## Gets the certificate property value. The certificate property
            ## @return a base64url
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. The certificate property
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Gets the certificateAuthorityType property value. The certificateAuthorityType property
            ## @return a certificate_authority_type
            ## 
            def certificate_authority_type
                return @certificate_authority_type
            end
            ## 
            ## Sets the certificateAuthorityType property value. The certificateAuthorityType property
            ## @param value Value to set for the certificateAuthorityType property.
            ## @return a void
            ## 
            def certificate_authority_type=(value)
                @certificate_authority_type = value
            end
            ## 
            ## Gets the certificateRevocationListUrl property value. The certificateRevocationListUrl property
            ## @return a string
            ## 
            def certificate_revocation_list_url
                return @certificate_revocation_list_url
            end
            ## 
            ## Sets the certificateRevocationListUrl property value. The certificateRevocationListUrl property
            ## @param value Value to set for the certificateRevocationListUrl property.
            ## @return a void
            ## 
            def certificate_revocation_list_url=(value)
                @certificate_revocation_list_url = value
            end
            ## 
            ## Instantiates a new CertificateAuthorityDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.certificateAuthorityDetail"
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a certificate_authority_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateAuthorityDetail.new
            end
            ## 
            ## Gets the deltaCertificateRevocationListUrl property value. The deltaCertificateRevocationListUrl property
            ## @return a string
            ## 
            def delta_certificate_revocation_list_url
                return @delta_certificate_revocation_list_url
            end
            ## 
            ## Sets the deltaCertificateRevocationListUrl property value. The deltaCertificateRevocationListUrl property
            ## @param value Value to set for the deltaCertificateRevocationListUrl property.
            ## @return a void
            ## 
            def delta_certificate_revocation_list_url=(value)
                @delta_certificate_revocation_list_url = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the expirationDateTime property value. The expirationDateTime property
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expirationDateTime property
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificate" => lambda {|n| @certificate = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "certificateAuthorityType" => lambda {|n| @certificate_authority_type = n.get_enum_value(MicrosoftGraph::Models::CertificateAuthorityType) },
                    "certificateRevocationListUrl" => lambda {|n| @certificate_revocation_list_url = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deltaCertificateRevocationListUrl" => lambda {|n| @delta_certificate_revocation_list_url = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "isIssuerHintEnabled" => lambda {|n| @is_issuer_hint_enabled = n.get_boolean_value() },
                    "issuer" => lambda {|n| @issuer = n.get_string_value() },
                    "issuerSubjectKeyIdentifier" => lambda {|n| @issuer_subject_key_identifier = n.get_string_value() },
                    "thumbprint" => lambda {|n| @thumbprint = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isIssuerHintEnabled property value. The isIssuerHintEnabled property
            ## @return a boolean
            ## 
            def is_issuer_hint_enabled
                return @is_issuer_hint_enabled
            end
            ## 
            ## Sets the isIssuerHintEnabled property value. The isIssuerHintEnabled property
            ## @param value Value to set for the isIssuerHintEnabled property.
            ## @return a void
            ## 
            def is_issuer_hint_enabled=(value)
                @is_issuer_hint_enabled = value
            end
            ## 
            ## Gets the issuer property value. The issuer property
            ## @return a string
            ## 
            def issuer
                return @issuer
            end
            ## 
            ## Sets the issuer property value. The issuer property
            ## @param value Value to set for the issuer property.
            ## @return a void
            ## 
            def issuer=(value)
                @issuer = value
            end
            ## 
            ## Gets the issuerSubjectKeyIdentifier property value. The issuerSubjectKeyIdentifier property
            ## @return a string
            ## 
            def issuer_subject_key_identifier
                return @issuer_subject_key_identifier
            end
            ## 
            ## Sets the issuerSubjectKeyIdentifier property value. The issuerSubjectKeyIdentifier property
            ## @param value Value to set for the issuerSubjectKeyIdentifier property.
            ## @return a void
            ## 
            def issuer_subject_key_identifier=(value)
                @issuer_subject_key_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("certificate", @certificate)
                writer.write_enum_value("certificateAuthorityType", @certificate_authority_type)
                writer.write_string_value("certificateRevocationListUrl", @certificate_revocation_list_url)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("deltaCertificateRevocationListUrl", @delta_certificate_revocation_list_url)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_boolean_value("isIssuerHintEnabled", @is_issuer_hint_enabled)
                writer.write_string_value("issuer", @issuer)
                writer.write_string_value("issuerSubjectKeyIdentifier", @issuer_subject_key_identifier)
                writer.write_string_value("thumbprint", @thumbprint)
            end
            ## 
            ## Gets the thumbprint property value. The thumbprint property
            ## @return a string
            ## 
            def thumbprint
                return @thumbprint
            end
            ## 
            ## Sets the thumbprint property value. The thumbprint property
            ## @param value Value to set for the thumbprint property.
            ## @return a void
            ## 
            def thumbprint=(value)
                @thumbprint = value
            end
        end
    end
end
