require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityApiConnector < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The object which describes the authentication configuration details for calling the API. Basic and PKCS 12 client certificate are supported.
            @authentication_configuration
            ## 
            # The name of the API connector.
            @display_name
            ## 
            # The URL of the API endpoint to call.
            @target_url
            ## 
            ## Gets the authenticationConfiguration property value. The object which describes the authentication configuration details for calling the API. Basic and PKCS 12 client certificate are supported.
            ## @return a api_authentication_configuration_base
            ## 
            def authentication_configuration
                return @authentication_configuration
            end
            ## 
            ## Sets the authenticationConfiguration property value. The object which describes the authentication configuration details for calling the API. Basic and PKCS 12 client certificate are supported.
            ## @param value Value to set for the authentication_configuration property.
            ## @return a void
            ## 
            def authentication_configuration=(value)
                @authentication_configuration = value
            end
            ## 
            ## Instantiates a new IdentityApiConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a identity_api_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityApiConnector.new
            end
            ## 
            ## Gets the displayName property value. The name of the API connector.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the API connector.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationConfiguration" => lambda {|n| @authentication_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ApiAuthenticationConfigurationBase.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "targetUrl" => lambda {|n| @target_url = n.get_string_value() },
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
                writer.write_object_value("authenticationConfiguration", @authentication_configuration)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("targetUrl", @target_url)
            end
            ## 
            ## Gets the targetUrl property value. The URL of the API endpoint to call.
            ## @return a string
            ## 
            def target_url
                return @target_url
            end
            ## 
            ## Sets the targetUrl property value. The URL of the API endpoint to call.
            ## @param value Value to set for the target_url property.
            ## @return a void
            ## 
            def target_url=(value)
                @target_url = value
            end
        end
    end
end
