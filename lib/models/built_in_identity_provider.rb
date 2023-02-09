require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BuiltInIdentityProvider < MicrosoftGraph::Models::IdentityProviderBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identity provider type. For a B2B scenario, possible values: AADSignup, MicrosoftAccount, EmailOTP. Required.
            @identity_provider_type
            ## 
            ## Instantiates a new BuiltInIdentityProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.builtInIdentityProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a built_in_identity_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BuiltInIdentityProvider.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identityProviderType" => lambda {|n| @identity_provider_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the identityProviderType property value. The identity provider type. For a B2B scenario, possible values: AADSignup, MicrosoftAccount, EmailOTP. Required.
            ## @return a string
            ## 
            def identity_provider_type
                return @identity_provider_type
            end
            ## 
            ## Sets the identityProviderType property value. The identity provider type. For a B2B scenario, possible values: AADSignup, MicrosoftAccount, EmailOTP. Required.
            ## @param value Value to set for the identity_provider_type property.
            ## @return a void
            ## 
            def identity_provider_type=(value)
                @identity_provider_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("identityProviderType", @identity_provider_type)
            end
        end
    end
end
