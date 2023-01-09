require 'microsoft_kiota_abstractions'
require_relative '../../applications'
require_relative '../item'
require_relative './remove_password'

module MicrosoftGraph::Applications::Item::RemovePassword
    class RemovePasswordPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The keyId property
        @key_id
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
        ## Instantiates a new removePasswordPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a remove_password_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RemovePasswordPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "keyId" => lambda {|n| @key_id = n.get_guid_value() },
            }
        end
        ## 
        ## Gets the keyId property value. The keyId property
        ## @return a guid
        ## 
        def key_id
            return @key_id
        end
        ## 
        ## Sets the keyId property value. The keyId property
        ## @param value Value to set for the keyId property.
        ## @return a void
        ## 
        def key_id=(value)
            @key_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_guid_value("keyId", @key_id)
            writer.write_additional_data(@additional_data)
        end
    end
end
