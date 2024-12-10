require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/synchronization_secret_key_string_value_pair'
require_relative '../../../service_principals'
require_relative '../../item'
require_relative '../synchronization'
require_relative './acquire_access_token'

module MicrosoftGraph
    module ServicePrincipals
        module Item
            module Synchronization
                module AcquireAccessToken
                    class AcquireAccessTokenPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The credentials property
                        @credentials
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
                        ## Instantiates a new AcquireAccessTokenPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a acquire_access_token_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return AcquireAccessTokenPostRequestBody.new
                        end
                        ## 
                        ## Gets the credentials property value. The credentials property
                        ## @return a synchronization_secret_key_string_value_pair
                        ## 
                        def credentials
                            return @credentials
                        end
                        ## 
                        ## Sets the credentials property value. The credentials property
                        ## @param value Value to set for the credentials property.
                        ## @return a void
                        ## 
                        def credentials=(value)
                            @credentials = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "credentials" => lambda {|n| @credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SynchronizationSecretKeyStringValuePair.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("credentials", @credentials)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
