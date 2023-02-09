require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SamlOrWsFedProvider < MicrosoftGraph::Models::IdentityProviderBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Issuer URI of the federation server.
            @issuer_uri
            ## 
            # URI of the metadata exchange endpoint used for authentication from rich client applications.
            @metadata_exchange_uri
            ## 
            # URI that web-based clients are directed to when signing in to Azure Active Directory (Azure AD) services.
            @passive_sign_in_uri
            ## 
            # Preferred authentication protocol. The possible values are: wsFed, saml, unknownFutureValue.
            @preferred_authentication_protocol
            ## 
            # Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class.   This property is used in the following scenarios:  if a rollover is required outside of the autorollover update a new federation service is being set up  if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.   Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available.
            @signing_certificate
            ## 
            ## Instantiates a new SamlOrWsFedProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.samlOrWsFedProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a saml_or_ws_fed_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.internalDomainFederation"
                            return InternalDomainFederation.new
                        when "#microsoft.graph.samlOrWsFedExternalDomainFederation"
                            return SamlOrWsFedExternalDomainFederation.new
                    end
                end
                return SamlOrWsFedProvider.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "issuerUri" => lambda {|n| @issuer_uri = n.get_string_value() },
                    "metadataExchangeUri" => lambda {|n| @metadata_exchange_uri = n.get_string_value() },
                    "passiveSignInUri" => lambda {|n| @passive_sign_in_uri = n.get_string_value() },
                    "preferredAuthenticationProtocol" => lambda {|n| @preferred_authentication_protocol = n.get_enum_value(MicrosoftGraph::Models::AuthenticationProtocol) },
                    "signingCertificate" => lambda {|n| @signing_certificate = n.get_string_value() },
                })
            end
            ## 
            ## Gets the issuerUri property value. Issuer URI of the federation server.
            ## @return a string
            ## 
            def issuer_uri
                return @issuer_uri
            end
            ## 
            ## Sets the issuerUri property value. Issuer URI of the federation server.
            ## @param value Value to set for the issuer_uri property.
            ## @return a void
            ## 
            def issuer_uri=(value)
                @issuer_uri = value
            end
            ## 
            ## Gets the metadataExchangeUri property value. URI of the metadata exchange endpoint used for authentication from rich client applications.
            ## @return a string
            ## 
            def metadata_exchange_uri
                return @metadata_exchange_uri
            end
            ## 
            ## Sets the metadataExchangeUri property value. URI of the metadata exchange endpoint used for authentication from rich client applications.
            ## @param value Value to set for the metadata_exchange_uri property.
            ## @return a void
            ## 
            def metadata_exchange_uri=(value)
                @metadata_exchange_uri = value
            end
            ## 
            ## Gets the passiveSignInUri property value. URI that web-based clients are directed to when signing in to Azure Active Directory (Azure AD) services.
            ## @return a string
            ## 
            def passive_sign_in_uri
                return @passive_sign_in_uri
            end
            ## 
            ## Sets the passiveSignInUri property value. URI that web-based clients are directed to when signing in to Azure Active Directory (Azure AD) services.
            ## @param value Value to set for the passive_sign_in_uri property.
            ## @return a void
            ## 
            def passive_sign_in_uri=(value)
                @passive_sign_in_uri = value
            end
            ## 
            ## Gets the preferredAuthenticationProtocol property value. Preferred authentication protocol. The possible values are: wsFed, saml, unknownFutureValue.
            ## @return a authentication_protocol
            ## 
            def preferred_authentication_protocol
                return @preferred_authentication_protocol
            end
            ## 
            ## Sets the preferredAuthenticationProtocol property value. Preferred authentication protocol. The possible values are: wsFed, saml, unknownFutureValue.
            ## @param value Value to set for the preferred_authentication_protocol property.
            ## @return a void
            ## 
            def preferred_authentication_protocol=(value)
                @preferred_authentication_protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("issuerUri", @issuer_uri)
                writer.write_string_value("metadataExchangeUri", @metadata_exchange_uri)
                writer.write_string_value("passiveSignInUri", @passive_sign_in_uri)
                writer.write_enum_value("preferredAuthenticationProtocol", @preferred_authentication_protocol)
                writer.write_string_value("signingCertificate", @signing_certificate)
            end
            ## 
            ## Gets the signingCertificate property value. Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class.   This property is used in the following scenarios:  if a rollover is required outside of the autorollover update a new federation service is being set up  if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.   Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available.
            ## @return a string
            ## 
            def signing_certificate
                return @signing_certificate
            end
            ## 
            ## Sets the signingCertificate property value. Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class.   This property is used in the following scenarios:  if a rollover is required outside of the autorollover update a new federation service is being set up  if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.   Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available.
            ## @param value Value to set for the signing_certificate property.
            ## @return a void
            ## 
            def signing_certificate=(value)
                @signing_certificate = value
            end
        end
    end
end
