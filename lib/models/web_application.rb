require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WebApplication
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Home page or landing page of the application.
            @home_page_url
            ## 
            # Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow.
            @implicit_grant_settings
            ## 
            # Specifies the URL that will be used by Microsoft's authorization service to logout an user using front-channel, back-channel or SAML logout protocols.
            @logout_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The redirectUriSettings property
            @redirect_uri_settings
            ## 
            # Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
            @redirect_uris
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new webApplication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a web_application
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebApplication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "homePageUrl" => lambda {|n| @home_page_url = n.get_string_value() },
                    "implicitGrantSettings" => lambda {|n| @implicit_grant_settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ImplicitGrantSettings.create_from_discriminator_value(pn) }) },
                    "logoutUrl" => lambda {|n| @logout_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "redirectUriSettings" => lambda {|n| @redirect_uri_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::RedirectUriSettings.create_from_discriminator_value(pn) }) },
                    "redirectUris" => lambda {|n| @redirect_uris = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the homePageUrl property value. Home page or landing page of the application.
            ## @return a string
            ## 
            def home_page_url
                return @home_page_url
            end
            ## 
            ## Sets the homePageUrl property value. Home page or landing page of the application.
            ## @param value Value to set for the home_page_url property.
            ## @return a void
            ## 
            def home_page_url=(value)
                @home_page_url = value
            end
            ## 
            ## Gets the implicitGrantSettings property value. Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow.
            ## @return a implicit_grant_settings
            ## 
            def implicit_grant_settings
                return @implicit_grant_settings
            end
            ## 
            ## Sets the implicitGrantSettings property value. Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow.
            ## @param value Value to set for the implicit_grant_settings property.
            ## @return a void
            ## 
            def implicit_grant_settings=(value)
                @implicit_grant_settings = value
            end
            ## 
            ## Gets the logoutUrl property value. Specifies the URL that will be used by Microsoft's authorization service to logout an user using front-channel, back-channel or SAML logout protocols.
            ## @return a string
            ## 
            def logout_url
                return @logout_url
            end
            ## 
            ## Sets the logoutUrl property value. Specifies the URL that will be used by Microsoft's authorization service to logout an user using front-channel, back-channel or SAML logout protocols.
            ## @param value Value to set for the logout_url property.
            ## @return a void
            ## 
            def logout_url=(value)
                @logout_url = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the redirectUriSettings property value. The redirectUriSettings property
            ## @return a redirect_uri_settings
            ## 
            def redirect_uri_settings
                return @redirect_uri_settings
            end
            ## 
            ## Sets the redirectUriSettings property value. The redirectUriSettings property
            ## @param value Value to set for the redirect_uri_settings property.
            ## @return a void
            ## 
            def redirect_uri_settings=(value)
                @redirect_uri_settings = value
            end
            ## 
            ## Gets the redirectUris property value. Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
            ## @return a string
            ## 
            def redirect_uris
                return @redirect_uris
            end
            ## 
            ## Sets the redirectUris property value. Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
            ## @param value Value to set for the redirect_uris property.
            ## @return a void
            ## 
            def redirect_uris=(value)
                @redirect_uris = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("homePageUrl", @home_page_url)
                writer.write_object_value("implicitGrantSettings", @implicit_grant_settings)
                writer.write_string_value("logoutUrl", @logout_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("redirectUriSettings", @redirect_uri_settings)
                writer.write_collection_of_primitive_values("redirectUris", @redirect_uris)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
