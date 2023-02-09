require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class X509CertificateAuthenticationModeConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Rules are configured in addition to the authentication mode to bind a specific x509CertificateRuleType to an x509CertificateAuthenticationMode. For example, bind the policyOID with identifier 1.32.132.343 to x509CertificateMultiFactor authentication mode.
            @rules
            ## 
            # The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue.
            @x509_certificate_authentication_default_mode
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
            ## Instantiates a new x509CertificateAuthenticationModeConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a x509_certificate_authentication_mode_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return X509CertificateAuthenticationModeConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::X509CertificateRule.create_from_discriminator_value(pn) }) },
                    "x509CertificateAuthenticationDefaultMode" => lambda {|n| @x509_certificate_authentication_default_mode = n.get_enum_value(MicrosoftGraph::Models::X509CertificateAuthenticationMode) },
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
            ## Gets the rules property value. Rules are configured in addition to the authentication mode to bind a specific x509CertificateRuleType to an x509CertificateAuthenticationMode. For example, bind the policyOID with identifier 1.32.132.343 to x509CertificateMultiFactor authentication mode.
            ## @return a x509_certificate_rule
            ## 
            def rules
                return @rules
            end
            ## 
            ## Sets the rules property value. Rules are configured in addition to the authentication mode to bind a specific x509CertificateRuleType to an x509CertificateAuthenticationMode. For example, bind the policyOID with identifier 1.32.132.343 to x509CertificateMultiFactor authentication mode.
            ## @param value Value to set for the rules property.
            ## @return a void
            ## 
            def rules=(value)
                @rules = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("rules", @rules)
                writer.write_enum_value("x509CertificateAuthenticationDefaultMode", @x509_certificate_authentication_default_mode)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the x509CertificateAuthenticationDefaultMode property value. The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue.
            ## @return a x509_certificate_authentication_mode
            ## 
            def x509_certificate_authentication_default_mode
                return @x509_certificate_authentication_default_mode
            end
            ## 
            ## Sets the x509CertificateAuthenticationDefaultMode property value. The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue.
            ## @param value Value to set for the x509_certificate_authentication_default_mode property.
            ## @return a void
            ## 
            def x509_certificate_authentication_default_mode=(value)
                @x509_certificate_authentication_default_mode = value
            end
        end
    end
end
