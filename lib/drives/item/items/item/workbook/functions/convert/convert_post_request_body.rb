require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './convert'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Convert
                                class ConvertPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The fromUnit property
                                    @from_unit
                                    ## 
                                    # The number property
                                    @number
                                    ## 
                                    # The toUnit property
                                    @to_unit
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
                                    ## Instantiates a new convertPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a convert_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ConvertPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the fromUnit property value. The fromUnit property
                                    ## @return a json
                                    ## 
                                    def from_unit
                                        return @from_unit
                                    end
                                    ## 
                                    ## Sets the fromUnit property value. The fromUnit property
                                    ## @param value Value to set for the from_unit property.
                                    ## @return a void
                                    ## 
                                    def from_unit=(value)
                                        @from_unit = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "fromUnit" => lambda {|n| @from_unit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "number" => lambda {|n| @number = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "toUnit" => lambda {|n| @to_unit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
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
                                        writer.write_object_value("fromUnit", @from_unit)
                                        writer.write_object_value("number", @number)
                                        writer.write_object_value("toUnit", @to_unit)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the toUnit property value. The toUnit property
                                    ## @return a json
                                    ## 
                                    def to_unit
                                        return @to_unit
                                    end
                                    ## 
                                    ## Sets the toUnit property value. The toUnit property
                                    ## @param value Value to set for the to_unit property.
                                    ## @return a void
                                    ## 
                                    def to_unit=(value)
                                        @to_unit = value
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
