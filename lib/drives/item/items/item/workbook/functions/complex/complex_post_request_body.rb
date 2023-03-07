require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './complex'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Complex
                                class ComplexPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The iNum property
                                    @i_num
                                    ## 
                                    # The realNum property
                                    @real_num
                                    ## 
                                    # The suffix property
                                    @suffix
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
                                    ## Instantiates a new complexPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a complex_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ComplexPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "iNum" => lambda {|n| @i_num = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "realNum" => lambda {|n| @real_num = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "suffix" => lambda {|n| @suffix = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the iNum property value. The iNum property
                                    ## @return a json
                                    ## 
                                    def i_num
                                        return @i_num
                                    end
                                    ## 
                                    ## Sets the iNum property value. The iNum property
                                    ## @param value Value to set for the i_num property.
                                    ## @return a void
                                    ## 
                                    def i_num=(value)
                                        @i_num = value
                                    end
                                    ## 
                                    ## Gets the realNum property value. The realNum property
                                    ## @return a json
                                    ## 
                                    def real_num
                                        return @real_num
                                    end
                                    ## 
                                    ## Sets the realNum property value. The realNum property
                                    ## @param value Value to set for the real_num property.
                                    ## @return a void
                                    ## 
                                    def real_num=(value)
                                        @real_num = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("iNum", @i_num)
                                        writer.write_object_value("realNum", @real_num)
                                        writer.write_object_value("suffix", @suffix)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the suffix property value. The suffix property
                                    ## @return a json
                                    ## 
                                    def suffix
                                        return @suffix
                                    end
                                    ## 
                                    ## Sets the suffix property value. The suffix property
                                    ## @param value Value to set for the suffix property.
                                    ## @return a void
                                    ## 
                                    def suffix=(value)
                                        @suffix = value
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
