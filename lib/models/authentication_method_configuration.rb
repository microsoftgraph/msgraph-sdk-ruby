require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuthenticationMethodConfiguration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The state of the policy. Possible values are: enabled, disabled.
            @state
            ## 
            ## Instantiates a new authenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.emailAuthenticationMethodConfiguration"
                            return EmailAuthenticationMethodConfiguration.new
                        when "#microsoft.graph.fido2AuthenticationMethodConfiguration"
                            return Fido2AuthenticationMethodConfiguration.new
                        when "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration"
                            return MicrosoftAuthenticatorAuthenticationMethodConfiguration.new
                        when "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration"
                            return TemporaryAccessPassAuthenticationMethodConfiguration.new
                        when "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration"
                            return X509CertificateAuthenticationMethodConfiguration.new
                    end
                end
                return AuthenticationMethodConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::AuthenticationMethodState) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. The state of the policy. Possible values are: enabled, disabled.
            ## @return a authentication_method_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state of the policy. Possible values are: enabled, disabled.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
