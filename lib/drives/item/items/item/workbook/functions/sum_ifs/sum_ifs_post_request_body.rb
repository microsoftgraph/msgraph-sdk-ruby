require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './sum_ifs'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module SumIfs
                                class SumIfsPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The sumRange property
                                    @sum_range
                                    ## 
                                    # The values property
                                    @values
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
                                    ## Instantiates a new sumIfsPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a sum_ifs_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return SumIfsPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "sumRange" => lambda {|n| @sum_range = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("sumRange", @sum_range)
                                        writer.write_object_value("values", @values)
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
                                    ## 
                                    ## Gets the values property value. The values property
                                    ## @return a json
                                    ## 
                                    def values
                                        return @values
                                    end
                                    ## 
                                    ## Sets the values property value. The values property
                                    ## @param value Value to set for the values property.
                                    ## @return a void
                                    ## 
                                    def values=(value)
                                        @values = value
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
