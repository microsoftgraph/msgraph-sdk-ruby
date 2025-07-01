require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp < MicrosoftGraph::Models::OnAuthenticationMethodLoadStartHandler
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identityProviders property
            @identity_providers
            ## 
            ## Instantiates a new OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_authentication_method_load_start_external_users_self_service_sign_up
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identityProviders" => lambda {|n| @identity_providers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::IdentityProviderBase.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identityProviders property value. The identityProviders property
            ## @return a identity_provider_base
            ## 
            def identity_providers
                return @identity_providers
            end
            ## 
            ## Sets the identityProviders property value. The identityProviders property
            ## @param value Value to set for the identityProviders property.
            ## @return a void
            ## 
            def identity_providers=(value)
                @identity_providers = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("identityProviders", @identity_providers)
            end
        end
    end
end
