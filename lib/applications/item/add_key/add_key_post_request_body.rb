require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/key_credential'
require_relative '../../../models/password_credential'
require_relative '../../applications'
require_relative '../item'
require_relative './add_key'

module MicrosoftGraph
    module Applications
        module Item
            module AddKey
                class AddKeyPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The keyCredential property
                    @key_credential
                    ## 
                    # The passwordCredential property
                    @password_credential
                    ## 
                    # The proof property
                    @proof
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
                    ## Instantiates a new addKeyPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a add_key_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return AddKeyPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "keyCredential" => lambda {|n| @key_credential = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::KeyCredential.create_from_discriminator_value(pn) }) },
                            "passwordCredential" => lambda {|n| @password_credential = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PasswordCredential.create_from_discriminator_value(pn) }) },
                            "proof" => lambda {|n| @proof = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the keyCredential property value. The keyCredential property
                    ## @return a key_credential
                    ## 
                    def key_credential
                        return @key_credential
                    end
                    ## 
                    ## Sets the keyCredential property value. The keyCredential property
                    ## @param value Value to set for the key_credential property.
                    ## @return a void
                    ## 
                    def key_credential=(value)
                        @key_credential = value
                    end
                    ## 
                    ## Gets the passwordCredential property value. The passwordCredential property
                    ## @return a password_credential
                    ## 
                    def password_credential
                        return @password_credential
                    end
                    ## 
                    ## Sets the passwordCredential property value. The passwordCredential property
                    ## @param value Value to set for the password_credential property.
                    ## @return a void
                    ## 
                    def password_credential=(value)
                        @password_credential = value
                    end
                    ## 
                    ## Gets the proof property value. The proof property
                    ## @return a string
                    ## 
                    def proof
                        return @proof
                    end
                    ## 
                    ## Sets the proof property value. The proof property
                    ## @param value Value to set for the proof property.
                    ## @return a void
                    ## 
                    def proof=(value)
                        @proof = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("keyCredential", @key_credential)
                        writer.write_object_value("passwordCredential", @password_credential)
                        writer.write_string_value("proof", @proof)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
