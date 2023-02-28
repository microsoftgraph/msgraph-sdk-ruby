require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../identity_protection'
require_relative '../risky_service_principals'
require_relative './dismiss'

module MicrosoftGraph
    module IdentityProtection
        module RiskyServicePrincipals
            module Dismiss
                class DismissPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The servicePrincipalIds property
                    @service_principal_ids
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
                    ## Instantiates a new dismissPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a dismiss_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return DismissPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "servicePrincipalIds" => lambda {|n| @service_principal_ids = n.get_collection_of_primitive_values(String) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("servicePrincipalIds", @service_principal_ids)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the servicePrincipalIds property value. The servicePrincipalIds property
                    ## @return a string
                    ## 
                    def service_principal_ids
                        return @service_principal_ids
                    end
                    ## 
                    ## Sets the servicePrincipalIds property value. The servicePrincipalIds property
                    ## @param value Value to set for the service_principal_ids property.
                    ## @return a void
                    ## 
                    def service_principal_ids=(value)
                        @service_principal_ids = value
                    end
                end
            end
        end
    end
end
