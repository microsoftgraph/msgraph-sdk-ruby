require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './ceiling_math'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Ceiling_Math
                                class CeilingMathPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The mode property
                                    @mode
                                    ## 
                                    # The number property
                                    @number
                                    ## 
                                    # The significance property
                                    @significance
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
                                    ## Instantiates a new CeilingMathPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a ceiling_math_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return CeilingMathPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "mode" => lambda {|n| @mode = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "number" => lambda {|n| @number = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "significance" => lambda {|n| @significance = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the mode property value. The mode property
                                    ## @return a json
                                    ## 
                                    def mode
                                        return @mode
                                    end
                                    ## 
                                    ## Sets the mode property value. The mode property
                                    ## @param value Value to set for the mode property.
                                    ## @return a void
                                    ## 
                                    def mode=(value)
                                        @mode = value
                                    end
                                    ## 
                                    ## Gets the number property value. The number property
                                    ## @return a json
                                    ## 
                                    def number
                                        return @number
                                    end
                                    ## 
                                    ## Sets the number property value. The number property
                                    ## @param value Value to set for the number property.
                                    ## @return a void
                                    ## 
                                    def number=(value)
                                        @number = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("mode", @mode)
                                        writer.write_object_value("number", @number)
                                        writer.write_object_value("significance", @significance)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the significance property value. The significance property
                                    ## @return a json
                                    ## 
                                    def significance
                                        return @significance
                                    end
                                    ## 
                                    ## Sets the significance property value. The significance property
                                    ## @param value Value to set for the significance property.
                                    ## @return a void
                                    ## 
                                    def significance=(value)
                                        @significance = value
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
