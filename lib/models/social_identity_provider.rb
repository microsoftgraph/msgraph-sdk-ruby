require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SocialIdentityProvider < MicrosoftGraph::Models::IdentityProviderBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier for the client application obtained when registering the application with the identity provider. Required.
            @client_id
            ## 
            # The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns ****. Required.
            @client_secret
            ## 
            # For a B2B scenario, possible values: Google, Facebook. For a B2C scenario, possible values: Microsoft, Google, Amazon, LinkedIn, Facebook, GitHub, Twitter, Weibo, QQ, WeChat. Required.
            @identity_provider_type
            ## 
            ## Gets the clientId property value. The identifier for the client application obtained when registering the application with the identity provider. Required.
            ## @return a string
            ## 
            def client_id
                return @client_id
            end
            ## 
            ## Sets the clientId property value. The identifier for the client application obtained when registering the application with the identity provider. Required.
            ## @param value Value to set for the client_id property.
            ## @return a void
            ## 
            def client_id=(value)
                @client_id = value
            end
            ## 
            ## Gets the clientSecret property value. The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns ****. Required.
            ## @return a string
            ## 
            def client_secret
                return @client_secret
            end
            ## 
            ## Sets the clientSecret property value. The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns ****. Required.
            ## @param value Value to set for the client_secret property.
            ## @return a void
            ## 
            def client_secret=(value)
                @client_secret = value
            end
            ## 
            ## Instantiates a new SocialIdentityProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.socialIdentityProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a social_identity_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SocialIdentityProvider.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientId" => lambda {|n| @client_id = n.get_string_value() },
                    "clientSecret" => lambda {|n| @client_secret = n.get_string_value() },
                    "identityProviderType" => lambda {|n| @identity_provider_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the identityProviderType property value. For a B2B scenario, possible values: Google, Facebook. For a B2C scenario, possible values: Microsoft, Google, Amazon, LinkedIn, Facebook, GitHub, Twitter, Weibo, QQ, WeChat. Required.
            ## @return a string
            ## 
            def identity_provider_type
                return @identity_provider_type
            end
            ## 
            ## Sets the identityProviderType property value. For a B2B scenario, possible values: Google, Facebook. For a B2C scenario, possible values: Microsoft, Google, Amazon, LinkedIn, Facebook, GitHub, Twitter, Weibo, QQ, WeChat. Required.
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
                writer.write_string_value("clientId", @client_id)
                writer.write_string_value("clientSecret", @client_secret)
                writer.write_string_value("identityProviderType", @identity_provider_type)
            end
        end
    end
end
