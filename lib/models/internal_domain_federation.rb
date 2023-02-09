require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InternalDomainFederation < MicrosoftGraph::Models::SamlOrWsFedProvider
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # URL of the endpoint used by active clients when authenticating with federated domains set up for single sign-on in Azure Active Directory (Azure AD). Corresponds to the ActiveLogOnUri property of the Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet.
            @active_sign_in_uri
            ## 
            # Determines whether Azure AD accepts the MFA performed by the federated IdP when a federated user accesses an application that is governed by a conditional access policy that requires MFA. The possible values are: acceptIfMfaDoneByFederatedIdp, enforceMfaByFederatedIdp, rejectMfaByFederatedIdp, unknownFutureValue. For more information, see federatedIdpMfaBehavior values.
            @federated_idp_mfa_behavior
            ## 
            # If true, when SAML authentication requests are sent to the federated SAML IdP, Azure AD will sign those requests using the OrgID signing key. If false (default), the SAML authentication requests sent to the federated IdP are not signed.
            @is_signed_authentication_request_required
            ## 
            # Fallback token signing certificate that is used to sign tokens when the primary signing certificate expires. Formatted as Base64 encoded strings of the public portion of the federated IdP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Much like the signingCertificate, the nextSigningCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated.
            @next_signing_certificate
            ## 
            # Sets the preferred behavior for the sign-in prompt. The possible values are: translateToFreshPasswordAuthentication, nativeSupport, disabled, unknownFutureValue.
            @prompt_login_behavior
            ## 
            # URI that clients are redirected to when they sign out of Azure AD services. Corresponds to the LogOffUri property of the Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet.
            @sign_out_uri
            ## 
            # Provides status and timestamp of the last update of the signing certificate.
            @signing_certificate_update_status
            ## 
            ## Gets the activeSignInUri property value. URL of the endpoint used by active clients when authenticating with federated domains set up for single sign-on in Azure Active Directory (Azure AD). Corresponds to the ActiveLogOnUri property of the Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet.
            ## @return a string
            ## 
            def active_sign_in_uri
                return @active_sign_in_uri
            end
            ## 
            ## Sets the activeSignInUri property value. URL of the endpoint used by active clients when authenticating with federated domains set up for single sign-on in Azure Active Directory (Azure AD). Corresponds to the ActiveLogOnUri property of the Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet.
            ## @param value Value to set for the active_sign_in_uri property.
            ## @return a void
            ## 
            def active_sign_in_uri=(value)
                @active_sign_in_uri = value
            end
            ## 
            ## Instantiates a new InternalDomainFederation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.internalDomainFederation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a internal_domain_federation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InternalDomainFederation.new
            end
            ## 
            ## Gets the federatedIdpMfaBehavior property value. Determines whether Azure AD accepts the MFA performed by the federated IdP when a federated user accesses an application that is governed by a conditional access policy that requires MFA. The possible values are: acceptIfMfaDoneByFederatedIdp, enforceMfaByFederatedIdp, rejectMfaByFederatedIdp, unknownFutureValue. For more information, see federatedIdpMfaBehavior values.
            ## @return a federated_idp_mfa_behavior
            ## 
            def federated_idp_mfa_behavior
                return @federated_idp_mfa_behavior
            end
            ## 
            ## Sets the federatedIdpMfaBehavior property value. Determines whether Azure AD accepts the MFA performed by the federated IdP when a federated user accesses an application that is governed by a conditional access policy that requires MFA. The possible values are: acceptIfMfaDoneByFederatedIdp, enforceMfaByFederatedIdp, rejectMfaByFederatedIdp, unknownFutureValue. For more information, see federatedIdpMfaBehavior values.
            ## @param value Value to set for the federated_idp_mfa_behavior property.
            ## @return a void
            ## 
            def federated_idp_mfa_behavior=(value)
                @federated_idp_mfa_behavior = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeSignInUri" => lambda {|n| @active_sign_in_uri = n.get_string_value() },
                    "federatedIdpMfaBehavior" => lambda {|n| @federated_idp_mfa_behavior = n.get_enum_value(MicrosoftGraph::Models::FederatedIdpMfaBehavior) },
                    "isSignedAuthenticationRequestRequired" => lambda {|n| @is_signed_authentication_request_required = n.get_boolean_value() },
                    "nextSigningCertificate" => lambda {|n| @next_signing_certificate = n.get_string_value() },
                    "promptLoginBehavior" => lambda {|n| @prompt_login_behavior = n.get_enum_value(MicrosoftGraph::Models::PromptLoginBehavior) },
                    "signOutUri" => lambda {|n| @sign_out_uri = n.get_string_value() },
                    "signingCertificateUpdateStatus" => lambda {|n| @signing_certificate_update_status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SigningCertificateUpdateStatus.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isSignedAuthenticationRequestRequired property value. If true, when SAML authentication requests are sent to the federated SAML IdP, Azure AD will sign those requests using the OrgID signing key. If false (default), the SAML authentication requests sent to the federated IdP are not signed.
            ## @return a boolean
            ## 
            def is_signed_authentication_request_required
                return @is_signed_authentication_request_required
            end
            ## 
            ## Sets the isSignedAuthenticationRequestRequired property value. If true, when SAML authentication requests are sent to the federated SAML IdP, Azure AD will sign those requests using the OrgID signing key. If false (default), the SAML authentication requests sent to the federated IdP are not signed.
            ## @param value Value to set for the is_signed_authentication_request_required property.
            ## @return a void
            ## 
            def is_signed_authentication_request_required=(value)
                @is_signed_authentication_request_required = value
            end
            ## 
            ## Gets the nextSigningCertificate property value. Fallback token signing certificate that is used to sign tokens when the primary signing certificate expires. Formatted as Base64 encoded strings of the public portion of the federated IdP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Much like the signingCertificate, the nextSigningCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated.
            ## @return a string
            ## 
            def next_signing_certificate
                return @next_signing_certificate
            end
            ## 
            ## Sets the nextSigningCertificate property value. Fallback token signing certificate that is used to sign tokens when the primary signing certificate expires. Formatted as Base64 encoded strings of the public portion of the federated IdP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Much like the signingCertificate, the nextSigningCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated.
            ## @param value Value to set for the next_signing_certificate property.
            ## @return a void
            ## 
            def next_signing_certificate=(value)
                @next_signing_certificate = value
            end
            ## 
            ## Gets the promptLoginBehavior property value. Sets the preferred behavior for the sign-in prompt. The possible values are: translateToFreshPasswordAuthentication, nativeSupport, disabled, unknownFutureValue.
            ## @return a prompt_login_behavior
            ## 
            def prompt_login_behavior
                return @prompt_login_behavior
            end
            ## 
            ## Sets the promptLoginBehavior property value. Sets the preferred behavior for the sign-in prompt. The possible values are: translateToFreshPasswordAuthentication, nativeSupport, disabled, unknownFutureValue.
            ## @param value Value to set for the prompt_login_behavior property.
            ## @return a void
            ## 
            def prompt_login_behavior=(value)
                @prompt_login_behavior = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("activeSignInUri", @active_sign_in_uri)
                writer.write_enum_value("federatedIdpMfaBehavior", @federated_idp_mfa_behavior)
                writer.write_boolean_value("isSignedAuthenticationRequestRequired", @is_signed_authentication_request_required)
                writer.write_string_value("nextSigningCertificate", @next_signing_certificate)
                writer.write_enum_value("promptLoginBehavior", @prompt_login_behavior)
                writer.write_string_value("signOutUri", @sign_out_uri)
                writer.write_object_value("signingCertificateUpdateStatus", @signing_certificate_update_status)
            end
            ## 
            ## Gets the signOutUri property value. URI that clients are redirected to when they sign out of Azure AD services. Corresponds to the LogOffUri property of the Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet.
            ## @return a string
            ## 
            def sign_out_uri
                return @sign_out_uri
            end
            ## 
            ## Sets the signOutUri property value. URI that clients are redirected to when they sign out of Azure AD services. Corresponds to the LogOffUri property of the Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet.
            ## @param value Value to set for the sign_out_uri property.
            ## @return a void
            ## 
            def sign_out_uri=(value)
                @sign_out_uri = value
            end
            ## 
            ## Gets the signingCertificateUpdateStatus property value. Provides status and timestamp of the last update of the signing certificate.
            ## @return a signing_certificate_update_status
            ## 
            def signing_certificate_update_status
                return @signing_certificate_update_status
            end
            ## 
            ## Sets the signingCertificateUpdateStatus property value. Provides status and timestamp of the last update of the signing certificate.
            ## @param value Value to set for the signing_certificate_update_status property.
            ## @return a void
            ## 
            def signing_certificate_update_status=(value)
                @signing_certificate_update_status = value
            end
        end
    end
end
