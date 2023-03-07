require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../domains'
require_relative '../item'
require_relative './force_delete'

module MicrosoftGraph
    module Domains
        module Item
            module ForceDelete
                class ForceDeletePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The disableUserAccounts property
                    @disable_user_accounts
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
                    ## Instantiates a new forceDeletePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a force_delete_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ForceDeletePostRequestBody.new
                    end
                    ## 
                    ## Gets the disableUserAccounts property value. The disableUserAccounts property
                    ## @return a boolean
                    ## 
                    def disable_user_accounts
                        return @disable_user_accounts
                    end
                    ## 
                    ## Sets the disableUserAccounts property value. The disableUserAccounts property
                    ## @param value Value to set for the disable_user_accounts property.
                    ## @return a void
                    ## 
                    def disable_user_accounts=(value)
                        @disable_user_accounts = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "disableUserAccounts" => lambda {|n| @disable_user_accounts = n.get_boolean_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_boolean_value("disableUserAccounts", @disable_user_accounts)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
