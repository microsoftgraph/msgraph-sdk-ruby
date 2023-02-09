require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ImplicitGrantSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow.
            @enable_access_token_issuance
            ## 
            # Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow.
            @enable_id_token_issuance
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new implicitGrantSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a implicit_grant_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ImplicitGrantSettings.new
            end
            ## 
            ## Gets the enableAccessTokenIssuance property value. Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow.
            ## @return a boolean
            ## 
            def enable_access_token_issuance
                return @enable_access_token_issuance
            end
            ## 
            ## Sets the enableAccessTokenIssuance property value. Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow.
            ## @param value Value to set for the enable_access_token_issuance property.
            ## @return a void
            ## 
            def enable_access_token_issuance=(value)
                @enable_access_token_issuance = value
            end
            ## 
            ## Gets the enableIdTokenIssuance property value. Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow.
            ## @return a boolean
            ## 
            def enable_id_token_issuance
                return @enable_id_token_issuance
            end
            ## 
            ## Sets the enableIdTokenIssuance property value. Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow.
            ## @param value Value to set for the enable_id_token_issuance property.
            ## @return a void
            ## 
            def enable_id_token_issuance=(value)
                @enable_id_token_issuance = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enableAccessTokenIssuance" => lambda {|n| @enable_access_token_issuance = n.get_boolean_value() },
                    "enableIdTokenIssuance" => lambda {|n| @enable_id_token_issuance = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("enableAccessTokenIssuance", @enable_access_token_issuance)
                writer.write_boolean_value("enableIdTokenIssuance", @enable_id_token_issuance)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
