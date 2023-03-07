require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './sum_if'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module SumIf
                                class SumIfPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The criteria property
                                    @criteria
                                    ## 
                                    # The range property
                                    @range
                                    ## 
                                    # The sumRange property
                                    @sum_range
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
                                    ## Instantiates a new sumIfPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a sum_if_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return SumIfPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the criteria property value. The criteria property
                                    ## @return a json
                                    ## 
                                    def criteria
                                        return @criteria
                                    end
                                    ## 
                                    ## Sets the criteria property value. The criteria property
                                    ## @param value Value to set for the criteria property.
                                    ## @return a void
                                    ## 
                                    def criteria=(value)
                                        @criteria = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "criteria" => lambda {|n| @criteria = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "range" => lambda {|n| @range = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "sumRange" => lambda {|n| @sum_range = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the range property value. The range property
                                    ## @return a json
                                    ## 
                                    def range
                                        return @range
                                    end
                                    ## 
                                    ## Sets the range property value. The range property
                                    ## @param value Value to set for the range property.
                                    ## @return a void
                                    ## 
                                    def range=(value)
                                        @range = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("criteria", @criteria)
                                        writer.write_object_value("range", @range)
                                        writer.write_object_value("sumRange", @sum_range)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the sumRange property value. The sumRange property
                                    ## @return a json
                                    ## 
                                    def sum_range
                                        return @sum_range
                                    end
                                    ## 
                                    ## Sets the sumRange property value. The sumRange property
                                    ## @param value Value to set for the sum_range property.
                                    ## @return a void
                                    ## 
                                    def sum_range=(value)
                                        @sum_range = value
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
