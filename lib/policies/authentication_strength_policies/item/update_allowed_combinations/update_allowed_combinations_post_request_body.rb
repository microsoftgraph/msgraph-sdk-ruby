require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/authentication_method_modes'
require_relative '../../../policies'
require_relative '../../authentication_strength_policies'
require_relative '../item'
require_relative './update_allowed_combinations'

module MicrosoftGraph
    module Policies
        module AuthenticationStrengthPolicies
            module Item
                module UpdateAllowedCombinations
                    class UpdateAllowedCombinationsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The allowedCombinations property
                        @allowed_combinations
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
                        ## Gets the allowedCombinations property value. The allowedCombinations property
                        ## @return a authentication_method_modes
                        ## 
                        def allowed_combinations
                            return @allowed_combinations
                        end
                        ## 
                        ## Sets the allowedCombinations property value. The allowedCombinations property
                        ## @param value Value to set for the allowedCombinations property.
                        ## @return a void
                        ## 
                        def allowed_combinations=(value)
                            @allowed_combinations = value
                        end
                        ## 
                        ## Instantiates a new UpdateAllowedCombinationsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a update_allowed_combinations_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UpdateAllowedCombinationsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "allowedCombinations" => lambda {|n| @allowed_combinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AuthenticationMethodModes.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("allowedCombinations", @allowed_combinations)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
