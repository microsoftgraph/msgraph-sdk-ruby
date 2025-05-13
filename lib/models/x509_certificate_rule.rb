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
            # The issuerSubjectIdentifier property
            @issuer_subject_identifier
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The policyOidIdentifier property
            @policy_oid_identifier
            ## 
            # The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue. Required.
            @x509_certificate_authentication_mode
            ## 
            # The x509CertificateRequiredAffinityLevel property
            @x509_certificate_required_affinity_level
            ## 
            # The type of the X.509 certificate mode configuration rule. The possible values are: issuerSubject, policyOID, unknownFutureValue. Required.
            @x509_certificate_rule_type
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
            ## Instantiates a new X509CertificateRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
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
                    "issuerSubjectIdentifier" => lambda {|n| @issuer_subject_identifier = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyOidIdentifier" => lambda {|n| @policy_oid_identifier = n.get_string_value() },
                    "x509CertificateAuthenticationMode" => lambda {|n| @x509_certificate_authentication_mode = n.get_enum_value(MicrosoftGraph::Models::X509CertificateAuthenticationMode) },
                    "x509CertificateRequiredAffinityLevel" => lambda {|n| @x509_certificate_required_affinity_level = n.get_enum_value(MicrosoftGraph::Models::X509CertificateAffinityLevel) },
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
            ## Gets the issuerSubjectIdentifier property value. The issuerSubjectIdentifier property
            ## @return a string
            ## 
            def issuer_subject_identifier
                return @issuer_subject_identifier
            end
            ## 
            ## Sets the issuerSubjectIdentifier property value. The issuerSubjectIdentifier property
            ## @param value Value to set for the issuerSubjectIdentifier property.
            ## @return a void
            ## 
            def issuer_subject_identifier=(value)
                @issuer_subject_identifier = value
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
            ## Gets the policyOidIdentifier property value. The policyOidIdentifier property
            ## @return a string
            ## 
            def policy_oid_identifier
                return @policy_oid_identifier
            end
            ## 
            ## Sets the policyOidIdentifier property value. The policyOidIdentifier property
            ## @param value Value to set for the policyOidIdentifier property.
            ## @return a void
            ## 
            def policy_oid_identifier=(value)
                @policy_oid_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("identifier", @identifier)
                writer.write_string_value("issuerSubjectIdentifier", @issuer_subject_identifier)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("policyOidIdentifier", @policy_oid_identifier)
                writer.write_enum_value("x509CertificateAuthenticationMode", @x509_certificate_authentication_mode)
                writer.write_enum_value("x509CertificateRequiredAffinityLevel", @x509_certificate_required_affinity_level)
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
            ## @param value Value to set for the x509CertificateAuthenticationMode property.
            ## @return a void
            ## 
            def x509_certificate_authentication_mode=(value)
                @x509_certificate_authentication_mode = value
            end
            ## 
            ## Gets the x509CertificateRequiredAffinityLevel property value. The x509CertificateRequiredAffinityLevel property
            ## @return a x509_certificate_affinity_level
            ## 
            def x509_certificate_required_affinity_level
                return @x509_certificate_required_affinity_level
            end
            ## 
            ## Sets the x509CertificateRequiredAffinityLevel property value. The x509CertificateRequiredAffinityLevel property
            ## @param value Value to set for the x509CertificateRequiredAffinityLevel property.
            ## @return a void
            ## 
            def x509_certificate_required_affinity_level=(value)
                @x509_certificate_required_affinity_level = value
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
            ## @param value Value to set for the x509CertificateRuleType property.
            ## @return a void
            ## 
            def x509_certificate_rule_type=(value)
                @x509_certificate_rule_type = value
            end
        end
    end
end
