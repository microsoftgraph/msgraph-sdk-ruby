require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/password_credential'
require_relative '../../applications'
require_relative '../item'
require_relative './add_password'

module MicrosoftGraph
    module Applications
        module Item
            module AddPassword
                class AddPasswordPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The passwordCredential property
                    @password_credential
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
                    ## Instantiates a new addPasswordPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a add_password_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return AddPasswordPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "passwordCredential" => lambda {|n| @password_credential = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PasswordCredential.create_from_discriminator_value(pn) }) },
                        }
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
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("passwordCredential", @password_credential)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
