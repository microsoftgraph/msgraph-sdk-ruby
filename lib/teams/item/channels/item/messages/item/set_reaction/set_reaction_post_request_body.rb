require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../teams'
require_relative '../../../../../item'
require_relative '../../../../channels'
require_relative '../../../item'
require_relative '../../messages'
require_relative '../item'
require_relative './set_reaction'

module MicrosoftGraph
    module Teams
        module Item
            module Channels
                module Item
                    module Messages
                        module Item
                            module SetReaction
                                class SetReactionPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The reactionType property
                                    @reaction_type
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
                                    ## Instantiates a new setReactionPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a set_reaction_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return SetReactionPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "reactionType" => lambda {|n| @reaction_type = n.get_string_value() },
                                        }
                                    end
                                    ## 
                                    ## Gets the reactionType property value. The reactionType property
                                    ## @return a string
                                    ## 
                                    def reaction_type
                                        return @reaction_type
                                    end
                                    ## 
                                    ## Sets the reactionType property value. The reactionType property
                                    ## @param value Value to set for the reactionType property.
                                    ## @return a void
                                    ## 
                                    def reaction_type=(value)
                                        @reaction_type = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_string_value("reactionType", @reaction_type)
                                        writer.write_additional_data(@additional_data)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
