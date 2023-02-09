require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class X509CertificateAuthenticationMethodConfiguration < MicrosoftGraph::Models::AuthenticationMethodConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings.
            @authentication_mode_configuration
            ## 
            # Defines fields in the X.509 certificate that map to attributes of the Azure AD user object in order to bind the certificate to the user. The priority of the object determines the order in which the binding is carried out. The first binding that matches will be used and the rest ignored.
            @certificate_user_bindings
            ## 
            # A collection of groups that are enabled to use the authentication method.
            @include_targets
            ## 
            ## Gets the authenticationModeConfiguration property value. Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings.
            ## @return a x509_certificate_authentication_mode_configuration
            ## 
            def authentication_mode_configuration
                return @authentication_mode_configuration
            end
            ## 
            ## Sets the authenticationModeConfiguration property value. Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings.
            ## @param value Value to set for the authentication_mode_configuration property.
            ## @return a void
            ## 
            def authentication_mode_configuration=(value)
                @authentication_mode_configuration = value
            end
            ## 
            ## Gets the certificateUserBindings property value. Defines fields in the X.509 certificate that map to attributes of the Azure AD user object in order to bind the certificate to the user. The priority of the object determines the order in which the binding is carried out. The first binding that matches will be used and the rest ignored.
            ## @return a x509_certificate_user_binding
            ## 
            def certificate_user_bindings
                return @certificate_user_bindings
            end
            ## 
            ## Sets the certificateUserBindings property value. Defines fields in the X.509 certificate that map to attributes of the Azure AD user object in order to bind the certificate to the user. The priority of the object determines the order in which the binding is carried out. The first binding that matches will be used and the rest ignored.
            ## @param value Value to set for the certificate_user_bindings property.
            ## @return a void
            ## 
            def certificate_user_bindings=(value)
                @certificate_user_bindings = value
            end
            ## 
            ## Instantiates a new X509CertificateAuthenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a x509_certificate_authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return X509CertificateAuthenticationMethodConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationModeConfiguration" => lambda {|n| @authentication_mode_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::X509CertificateAuthenticationModeConfiguration.create_from_discriminator_value(pn) }) },
                    "certificateUserBindings" => lambda {|n| @certificate_user_bindings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::X509CertificateUserBinding.create_from_discriminator_value(pn) }) },
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodTarget.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("authenticationModeConfiguration", @authentication_mode_configuration)
                writer.write_collection_of_object_values("certificateUserBindings", @certificate_user_bindings)
                writer.write_collection_of_object_values("includeTargets", @include_targets)
            end
        end
    end
end
