require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityProvider < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The client ID for the application. This is the client ID obtained when registering the application with the identity provider. Required. Not nullable.
            @client_id
            ## 
            # The client secret for the application. This is the client secret obtained when registering the application with the identity provider. This is write-only. A read operation will return ****.  Required. Not nullable.
            @client_secret
            ## 
            # The display name of the identity provider. Not nullable.
            @name
            ## 
            # The identity provider type is a required field. For B2B scenario: Google, Facebook. For B2C scenario: Microsoft, Google, Amazon, LinkedIn, Facebook, GitHub, Twitter, Weibo, QQ, WeChat, OpenIDConnect. Not nullable.
            @type
            ## 
            ## Gets the clientId property value. The client ID for the application. This is the client ID obtained when registering the application with the identity provider. Required. Not nullable.
            ## @return a string
            ## 
            def client_id
                return @client_id
            end
            ## 
            ## Sets the clientId property value. The client ID for the application. This is the client ID obtained when registering the application with the identity provider. Required. Not nullable.
            ## @param value Value to set for the client_id property.
            ## @return a void
            ## 
            def client_id=(value)
                @client_id = value
            end
            ## 
            ## Gets the clientSecret property value. The client secret for the application. This is the client secret obtained when registering the application with the identity provider. This is write-only. A read operation will return ****.  Required. Not nullable.
            ## @return a string
            ## 
            def client_secret
                return @client_secret
            end
            ## 
            ## Sets the clientSecret property value. The client secret for the application. This is the client secret obtained when registering the application with the identity provider. This is write-only. A read operation will return ****.  Required. Not nullable.
            ## @param value Value to set for the client_secret property.
            ## @return a void
            ## 
            def client_secret=(value)
                @client_secret = value
            end
            ## 
            ## Instantiates a new identityProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityProvider.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientId" => lambda {|n| @client_id = n.get_string_value() },
                    "clientSecret" => lambda {|n| @client_secret = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The display name of the identity provider. Not nullable.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The display name of the identity provider. Not nullable.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
                writer.write_string_value("name", @name)
                writer.write_string_value("type", @type)
            end
            ## 
            ## Gets the type property value. The identity provider type is a required field. For B2B scenario: Google, Facebook. For B2C scenario: Microsoft, Google, Amazon, LinkedIn, Facebook, GitHub, Twitter, Weibo, QQ, WeChat, OpenIDConnect. Not nullable.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The identity provider type is a required field. For B2B scenario: Google, Facebook. For B2C scenario: Microsoft, Google, Amazon, LinkedIn, Facebook, GitHub, Twitter, Weibo, QQ, WeChat, OpenIDConnect. Not nullable.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
