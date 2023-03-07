require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './series_sum'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module SeriesSum
                                class SeriesSumPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The coefficients property
                                    @coefficients
                                    ## 
                                    # The m property
                                    @m
                                    ## 
                                    # The n property
                                    @n
                                    ## 
                                    # The x property
                                    @x
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
                                    ## Gets the coefficients property value. The coefficients property
                                    ## @return a json
                                    ## 
                                    def coefficients
                                        return @coefficients
                                    end
                                    ## 
                                    ## Sets the coefficients property value. The coefficients property
                                    ## @param value Value to set for the coefficients property.
                                    ## @return a void
                                    ## 
                                    def coefficients=(value)
                                        @coefficients = value
                                    end
                                    ## 
                                    ## Instantiates a new seriesSumPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a series_sum_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return SeriesSumPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "coefficients" => lambda {|n| @coefficients = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "m" => lambda {|n| @m = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "n" => lambda {|n| @n = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "x" => lambda {|n| @x = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the m property value. The m property
                                    ## @return a json
                                    ## 
                                    def m
                                        return @m
                                    end
                                    ## 
                                    ## Sets the m property value. The m property
                                    ## @param value Value to set for the m property.
                                    ## @return a void
                                    ## 
                                    def m=(value)
                                        @m = value
                                    end
                                    ## 
                                    ## Gets the n property value. The n property
                                    ## @return a json
                                    ## 
                                    def n
                                        return @n
                                    end
                                    ## 
                                    ## Sets the n property value. The n property
                                    ## @param value Value to set for the n property.
                                    ## @return a void
                                    ## 
                                    def n=(value)
                                        @n = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("coefficients", @coefficients)
                                        writer.write_object_value("m", @m)
                                        writer.write_object_value("n", @n)
                                        writer.write_object_value("x", @x)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the x property value. The x property
                                    ## @return a json
                                    ## 
                                    def x
                                        return @x
                                    end
                                    ## 
                                    ## Sets the x property value. The x property
                                    ## @param value Value to set for the x property.
                                    ## @return a void
                                    ## 
                                    def x=(value)
                                        @x = value
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
