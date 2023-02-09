require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Fido2AuthenticationMethodConfiguration < MicrosoftGraph::Models::AuthenticationMethodConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of groups that are enabled to use the authentication method.
            @include_targets
            ## 
            # Determines whether attestation must be enforced for FIDO2 security key registration.
            @is_attestation_enforced
            ## 
            # Determines if users can register new FIDO2 security keys.
            @is_self_service_registration_allowed
            ## 
            # Controls whether key restrictions are enforced on FIDO2 security keys, either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (e.g. make and model) of the authenticator.
            @key_restrictions
            ## 
            ## Instantiates a new Fido2AuthenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.fido2AuthenticationMethodConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a fido2_authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Fido2AuthenticationMethodConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodTarget.create_from_discriminator_value(pn) }) },
                    "isAttestationEnforced" => lambda {|n| @is_attestation_enforced = n.get_boolean_value() },
                    "isSelfServiceRegistrationAllowed" => lambda {|n| @is_self_service_registration_allowed = n.get_boolean_value() },
                    "keyRestrictions" => lambda {|n| @key_restrictions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Fido2KeyRestrictions.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the includeTargets property value. A collection of groups that are enabled to use the authentication method.
            ## @return a authentication_method_target
            ## 
            def include_targets
                return @include_targets
            end
            ## 
            ## Sets the includeTargets property value. A collection of groups that are enabled to use the authentication method.
            ## @param value Value to set for the include_targets property.
            ## @return a void
            ## 
            def include_targets=(value)
                @include_targets = value
            end
            ## 
            ## Gets the isAttestationEnforced property value. Determines whether attestation must be enforced for FIDO2 security key registration.
            ## @return a boolean
            ## 
            def is_attestation_enforced
                return @is_attestation_enforced
            end
            ## 
            ## Sets the isAttestationEnforced property value. Determines whether attestation must be enforced for FIDO2 security key registration.
            ## @param value Value to set for the is_attestation_enforced property.
            ## @return a void
            ## 
            def is_attestation_enforced=(value)
                @is_attestation_enforced = value
            end
            ## 
            ## Gets the isSelfServiceRegistrationAllowed property value. Determines if users can register new FIDO2 security keys.
            ## @return a boolean
            ## 
            def is_self_service_registration_allowed
                return @is_self_service_registration_allowed
            end
            ## 
            ## Sets the isSelfServiceRegistrationAllowed property value. Determines if users can register new FIDO2 security keys.
            ## @param value Value to set for the is_self_service_registration_allowed property.
            ## @return a void
            ## 
            def is_self_service_registration_allowed=(value)
                @is_self_service_registration_allowed = value
            end
            ## 
            ## Gets the keyRestrictions property value. Controls whether key restrictions are enforced on FIDO2 security keys, either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (e.g. make and model) of the authenticator.
            ## @return a fido2_key_restrictions
            ## 
            def key_restrictions
                return @key_restrictions
            end
            ## 
            ## Sets the keyRestrictions property value. Controls whether key restrictions are enforced on FIDO2 security keys, either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (e.g. make and model) of the authenticator.
            ## @param value Value to set for the key_restrictions property.
            ## @return a void
            ## 
            def key_restrictions=(value)
                @key_restrictions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("includeTargets", @include_targets)
                writer.write_boolean_value("isAttestationEnforced", @is_attestation_enforced)
                writer.write_boolean_value("isSelfServiceRegistrationAllowed", @is_self_service_registration_allowed)
                writer.write_object_value("keyRestrictions", @key_restrictions)
            end
        end
    end
end
