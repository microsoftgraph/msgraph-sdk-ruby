require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserFlowApiConnectorConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The postAttributeCollection property
            @post_attribute_collection
            ## 
            # The postFederationSignup property
            @post_federation_signup
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
            ## Instantiates a new userFlowApiConnectorConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_flow_api_connector_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserFlowApiConnectorConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "postAttributeCollection" => lambda {|n| @post_attribute_collection = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityApiConnector.create_from_discriminator_value(pn) }) },
                    "postFederationSignup" => lambda {|n| @post_federation_signup = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentityApiConnector.create_from_discriminator_value(pn) }) },
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
            ## Gets the postAttributeCollection property value. The postAttributeCollection property
            ## @return a identity_api_connector
            ## 
            def post_attribute_collection
                return @post_attribute_collection
            end
            ## 
            ## Sets the postAttributeCollection property value. The postAttributeCollection property
            ## @param value Value to set for the post_attribute_collection property.
            ## @return a void
            ## 
            def post_attribute_collection=(value)
                @post_attribute_collection = value
            end
            ## 
            ## Gets the postFederationSignup property value. The postFederationSignup property
            ## @return a identity_api_connector
            ## 
            def post_federation_signup
                return @post_federation_signup
            end
            ## 
            ## Sets the postFederationSignup property value. The postFederationSignup property
            ## @param value Value to set for the post_federation_signup property.
            ## @return a void
            ## 
            def post_federation_signup=(value)
                @post_federation_signup = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("postAttributeCollection", @post_attribute_collection)
                writer.write_object_value("postFederationSignup", @post_federation_signup)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
