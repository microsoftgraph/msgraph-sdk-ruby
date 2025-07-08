require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../audit_logs'
require_relative '../sign_ins'
require_relative './confirm_compromised'

module MicrosoftGraph
    module AuditLogs
        module SignIns
            module ConfirmCompromised
                class ConfirmCompromisedPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The requestIds property
                    @request_ids
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
                    ## Instantiates a new ConfirmCompromisedPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a confirm_compromised_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ConfirmCompromisedPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "requestIds" => lambda {|n| @request_ids = n.get_collection_of_primitive_values(String) },
                        }
                    end
                    ## 
                    ## Gets the requestIds property value. The requestIds property
                    ## @return a string
                    ## 
                    def request_ids
                        return @request_ids
                    end
                    ## 
                    ## Sets the requestIds property value. The requestIds property
                    ## @param value Value to set for the requestIds property.
                    ## @return a void
                    ## 
                    def request_ids=(value)
                        @request_ids = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("requestIds", @request_ids)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
