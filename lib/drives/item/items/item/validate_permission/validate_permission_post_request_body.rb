require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../drives'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './validate_permission'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module ValidatePermission
                        class ValidatePermissionPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The challengeToken property
                            @challenge_token
                            ## 
                            # The password property
                            @password
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
                            ## Gets the challengeToken property value. The challengeToken property
                            ## @return a string
                            ## 
                            def challenge_token
                                return @challenge_token
                            end
                            ## 
                            ## Sets the challengeToken property value. The challengeToken property
                            ## @param value Value to set for the challenge_token property.
                            ## @return a void
                            ## 
                            def challenge_token=(value)
                                @challenge_token = value
                            end
                            ## 
                            ## Instantiates a new validatePermissionPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a validate_permission_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ValidatePermissionPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "challengeToken" => lambda {|n| @challenge_token = n.get_string_value() },
                                    "password" => lambda {|n| @password = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Gets the password property value. The password property
                            ## @return a string
                            ## 
                            def password
                                return @password
                            end
                            ## 
                            ## Sets the password property value. The password property
                            ## @param value Value to set for the password property.
                            ## @return a void
                            ## 
                            def password=(value)
                                @password = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("challengeToken", @challenge_token)
                                writer.write_string_value("password", @password)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
