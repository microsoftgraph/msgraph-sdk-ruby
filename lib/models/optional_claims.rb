require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OptionalClaims
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The optional claims returned in the JWT access token.
            @access_token
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The optional claims returned in the JWT ID token.
            @id_token
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The optional claims returned in the SAML token.
            @saml2_token
            ## 
            ## Gets the accessToken property value. The optional claims returned in the JWT access token.
            ## @return a optional_claim
            ## 
            def access_token
                return @access_token
            end
            ## 
            ## Sets the accessToken property value. The optional claims returned in the JWT access token.
            ## @param value Value to set for the access_token property.
            ## @return a void
            ## 
            def access_token=(value)
                @access_token = value
            end
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
            ## Instantiates a new optionalClaims and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a optional_claims
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OptionalClaims.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessToken" => lambda {|n| @access_token = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OptionalClaim.create_from_discriminator_value(pn) }) },
                    "idToken" => lambda {|n| @id_token = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OptionalClaim.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "saml2Token" => lambda {|n| @saml2_token = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OptionalClaim.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the idToken property value. The optional claims returned in the JWT ID token.
            ## @return a optional_claim
            ## 
            def id_token
                return @id_token
            end
            ## 
            ## Sets the idToken property value. The optional claims returned in the JWT ID token.
            ## @param value Value to set for the id_token property.
            ## @return a void
            ## 
            def id_token=(value)
                @id_token = value
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
            ## Gets the saml2Token property value. The optional claims returned in the SAML token.
            ## @return a optional_claim
            ## 
            def saml2_token
                return @saml2_token
            end
            ## 
            ## Sets the saml2Token property value. The optional claims returned in the SAML token.
            ## @param value Value to set for the saml2_token property.
            ## @return a void
            ## 
            def saml2_token=(value)
                @saml2_token = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("accessToken", @access_token)
                writer.write_collection_of_object_values("idToken", @id_token)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("saml2Token", @saml2_token)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
