require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './round_up'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module RoundUp
                                class RoundUpPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The numDigits property
                                    @num_digits
                                    ## 
                                    # The number property
                                    @number
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
                                    ## Instantiates a new roundUpPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a round_up_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return RoundUpPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "numDigits" => lambda {|n| @num_digits = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "number" => lambda {|n| @number = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the numDigits property value. The numDigits property
                                    ## @return a json
                                    ## 
                                    def num_digits
                                        return @num_digits
                                    end
                                    ## 
                                    ## Sets the numDigits property value. The numDigits property
                                    ## @param value Value to set for the num_digits property.
                                    ## @return a void
                                    ## 
                                    def num_digits=(value)
                                        @num_digits = value
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
                                        writer.write_object_value("numDigits", @num_digits)
                                        writer.write_object_value("number", @number)
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
