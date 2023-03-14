require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './confidence_norm'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Confidence_Norm
                                class ConfidenceNormPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The alpha property
                                    @alpha
                                    ## 
                                    # The size property
                                    @size
                                    ## 
                                    # The standardDev property
                                    @standard_dev
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
                                    ## Gets the alpha property value. The alpha property
                                    ## @return a json
                                    ## 
                                    def alpha
                                        return @alpha
                                    end
                                    ## 
                                    ## Sets the alpha property value. The alpha property
                                    ## @param value Value to set for the alpha property.
                                    ## @return a void
                                    ## 
                                    def alpha=(value)
                                        @alpha = value
                                    end
                                    ## 
                                    ## Instantiates a new ConfidenceNormPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a confidence_norm_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ConfidenceNormPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "alpha" => lambda {|n| @alpha = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "standardDev" => lambda {|n| @standard_dev = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("alpha", @alpha)
                                        writer.write_object_value("size", @size)
                                        writer.write_object_value("standardDev", @standard_dev)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the size property value. The size property
                                    ## @return a json
                                    ## 
                                    def size
                                        return @size
                                    end
                                    ## 
                                    ## Sets the size property value. The size property
                                    ## @param value Value to set for the size property.
                                    ## @return a void
                                    ## 
                                    def size=(value)
                                        @size = value
                                    end
                                    ## 
                                    ## Gets the standardDev property value. The standardDev property
                                    ## @return a json
                                    ## 
                                    def standard_dev
                                        return @standard_dev
                                    end
                                    ## 
                                    ## Sets the standardDev property value. The standardDev property
                                    ## @param value Value to set for the standard_dev property.
                                    ## @return a void
                                    ## 
                                    def standard_dev=(value)
                                        @standard_dev = value
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
