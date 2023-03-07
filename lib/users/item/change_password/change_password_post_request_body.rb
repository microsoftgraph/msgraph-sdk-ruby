require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../users'
require_relative '../item'
require_relative './change_password'

module MicrosoftGraph
    module Users
        module Item
            module ChangePassword
                class ChangePasswordPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The currentPassword property
                    @current_password
                    ## 
                    # The newPassword property
                    @new_password
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
                    ## Instantiates a new changePasswordPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a change_password_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ChangePasswordPostRequestBody.new
                    end
                    ## 
                    ## Gets the currentPassword property value. The currentPassword property
                    ## @return a string
                    ## 
                    def current_password
                        return @current_password
                    end
                    ## 
                    ## Sets the currentPassword property value. The currentPassword property
                    ## @param value Value to set for the current_password property.
                    ## @return a void
                    ## 
                    def current_password=(value)
                        @current_password = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "currentPassword" => lambda {|n| @current_password = n.get_string_value() },
                            "newPassword" => lambda {|n| @new_password = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the newPassword property value. The newPassword property
                    ## @return a string
                    ## 
                    def new_password
                        return @new_password
                    end
                    ## 
                    ## Sets the newPassword property value. The newPassword property
                    ## @param value Value to set for the new_password property.
                    ## @return a void
                    ## 
                    def new_password=(value)
                        @new_password = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("currentPassword", @current_password)
                        writer.write_string_value("newPassword", @new_password)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
