require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftAuthenticatorAuthenticationMethodTarget < MicrosoftGraph::Models::AuthenticationMethodTarget
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authenticationMode property
            @authentication_mode
            ## 
            ## Gets the authenticationMode property value. The authenticationMode property
            ## @return a microsoft_authenticator_authentication_mode
            ## 
            def authentication_mode
                return @authentication_mode
            end
            ## 
            ## Sets the authenticationMode property value. The authenticationMode property
            ## @param value Value to set for the authentication_mode property.
            ## @return a void
            ## 
            def authentication_mode=(value)
                @authentication_mode = value
            end
            ## 
            ## Instantiates a new MicrosoftAuthenticatorAuthenticationMethodTarget and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_authenticator_authentication_method_target
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftAuthenticatorAuthenticationMethodTarget.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMode" => lambda {|n| @authentication_mode = n.get_enum_value(MicrosoftGraph::Models::MicrosoftAuthenticatorAuthenticationMode) },
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
                writer.write_enum_value("authenticationMode", @authentication_mode)
            end
        end
    end
end
