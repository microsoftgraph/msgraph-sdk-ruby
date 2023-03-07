require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './dollar_fr'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module DollarFr
                                class DollarFrPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The decimalDollar property
                                    @decimal_dollar
                                    ## 
                                    # The fraction property
                                    @fraction
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
                                    ## Instantiates a new dollarFrPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a dollar_fr_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return DollarFrPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the decimalDollar property value. The decimalDollar property
                                    ## @return a json
                                    ## 
                                    def decimal_dollar
                                        return @decimal_dollar
                                    end
                                    ## 
                                    ## Sets the decimalDollar property value. The decimalDollar property
                                    ## @param value Value to set for the decimal_dollar property.
                                    ## @return a void
                                    ## 
                                    def decimal_dollar=(value)
                                        @decimal_dollar = value
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
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "decimalDollar" => lambda {|n| @decimal_dollar = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "fraction" => lambda {|n| @fraction = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("decimalDollar", @decimal_dollar)
                                        writer.write_object_value("fraction", @fraction)
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
