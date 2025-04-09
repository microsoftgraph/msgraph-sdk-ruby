require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../contacts'
require_relative '../item'
require_relative './restore'

module MicrosoftGraph
    module Contacts
        module Item
            module Restore
                class RestorePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The newUserPrincipalName property
                    @new_user_principal_name
                    ## 
                    ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @return a i_dictionary
                    ## 
                    def additional_data
                        return @additional_data
                    end
                    ## 
                    ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @param value Value to set for the AdditionalData property.
                    ## @return a void
                    ## 
                    def additional_data=(value)
                        @additional_data = value
                    end
                    ## 
                    ## Instantiates a new RestorePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a restore_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return RestorePostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "newUserPrincipalName" => lambda {|n| @new_user_principal_name = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the newUserPrincipalName property value. The newUserPrincipalName property
                    ## @return a string
                    ## 
                    def new_user_principal_name
                        return @new_user_principal_name
                    end
                    ## 
                    ## Sets the newUserPrincipalName property value. The newUserPrincipalName property
                    ## @param value Value to set for the newUserPrincipalName property.
                    ## @return a void
                    ## 
                    def new_user_principal_name=(value)
                        @new_user_principal_name = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("newUserPrincipalName", @new_user_principal_name)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
