require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class X509CertificateRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The identifier of the X.509 certificate. Required.
            @identifier
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue. Required.
            @x509_certificate_authentication_mode
            ## 
            # The type of the X.509 certificate mode configuration rule. The possible values are: issuerSubject, policyOID, unknownFutureValue. Required.
            @x509_certificate_rule_type
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
            ## Instantiates a new x509CertificateRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a x509_certificate_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return X509CertificateRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "identifier" => lambda {|n| @identifier = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "x509CertificateAuthenticationMode" => lambda {|n| @x509_certificate_authentication_mode = n.get_enum_value(MicrosoftGraph::Models::X509CertificateAuthenticationMode) },
                    "x509CertificateRuleType" => lambda {|n| @x509_certificate_rule_type = n.get_enum_value(MicrosoftGraph::Models::X509CertificateRuleType) },
                }
            end
            ## 
            ## Gets the identifier property value. The identifier of the X.509 certificate. Required.
            ## @return a string
            ## 
            def identifier
                return @identifier
            end
            ## 
            ## Sets the identifier property value. The identifier of the X.509 certificate. Required.
            ## @param value Value to set for the identifier property.
            ## @return a void
            ## 
            def identifier=(value)
                @identifier = value
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
                writer.write_string_value("identifier", @identifier)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("x509CertificateAuthenticationMode", @x509_certificate_authentication_mode)
                writer.write_enum_value("x509CertificateRuleType", @x509_certificate_rule_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the x509CertificateAuthenticationMode property value. The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue. Required.
            ## @return a x509_certificate_authentication_mode
            ## 
            def x509_certificate_authentication_mode
                return @x509_certificate_authentication_mode
            end
            ## 
            ## Sets the x509CertificateAuthenticationMode property value. The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue. Required.
            ## @param value Value to set for the x509_certificate_authentication_mode property.
            ## @return a void
            ## 
            def x509_certificate_authentication_mode=(value)
                @x509_certificate_authentication_mode = value
            end
            ## 
            ## Gets the x509CertificateRuleType property value. The type of the X.509 certificate mode configuration rule. The possible values are: issuerSubject, policyOID, unknownFutureValue. Required.
            ## @return a x509_certificate_rule_type
            ## 
            def x509_certificate_rule_type
                return @x509_certificate_rule_type
            end
            ## 
            ## Sets the x509CertificateRuleType property value. The type of the X.509 certificate mode configuration rule. The possible values are: issuerSubject, policyOID, unknownFutureValue. Required.
            ## @param value Value to set for the x509_certificate_rule_type property.
            ## @return a void
            ## 
            def x509_certificate_rule_type=(value)
                @x509_certificate_rule_type = value
            end
        end
    end
end
