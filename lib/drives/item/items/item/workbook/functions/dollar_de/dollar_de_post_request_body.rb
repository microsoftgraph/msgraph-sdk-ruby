require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './dollar_de'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module DollarDe
                                class DollarDePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The fraction property
                                    @fraction
                                    ## 
                                    # The fractionalDollar property
                                    @fractional_dollar
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
                                    ## Instantiates a new dollarDePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a dollar_de_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return DollarDePostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the fraction property value. The fraction property
                                    ## @return a json
                                    ## 
                                    def fraction
                                        return @fraction
                                    end
                                    ## 
                                    ## Sets the fraction property value. The fraction property
                                    ## @param value Value to set for the fraction property.
                                    ## @return a void
                                    ## 
                                    def fraction=(value)
                                        @fraction = value
                                    end
                                    ## 
                                    ## Gets the fractionalDollar property value. The fractionalDollar property
                                    ## @return a json
                                    ## 
                                    def fractional_dollar
                                        return @fractional_dollar
                                    end
                                    ## 
                                    ## Sets the fractionalDollar property value. The fractionalDollar property
                                    ## @param value Value to set for the fractional_dollar property.
                                    ## @return a void
                                    ## 
                                    def fractional_dollar=(value)
                                        @fractional_dollar = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "fraction" => lambda {|n| @fraction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "fractionalDollar" => lambda {|n| @fractional_dollar = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("fraction", @fraction)
                                        writer.write_object_value("fractionalDollar", @fractional_dollar)
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
