require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './odd_l_yield'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module OddLYield
                                class OddLYieldPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The basis property
                                    @basis
                                    ## 
                                    # The frequency property
                                    @frequency
                                    ## 
                                    # The lastInterest property
                                    @last_interest
                                    ## 
                                    # The maturity property
                                    @maturity
                                    ## 
                                    # The pr property
                                    @pr
                                    ## 
                                    # The rate property
                                    @rate
                                    ## 
                                    # The redemption property
                                    @redemption
                                    ## 
                                    # The settlement property
                                    @settlement
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
                                    ## Gets the basis property value. The basis property
                                    ## @return a json
                                    ## 
                                    def basis
                                        return @basis
                                    end
                                    ## 
                                    ## Sets the basis property value. The basis property
                                    ## @param value Value to set for the basis property.
                                    ## @return a void
                                    ## 
                                    def basis=(value)
                                        @basis = value
                                    end
                                    ## 
                                    ## Instantiates a new oddLYieldPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a odd_l_yield_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return OddLYieldPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the frequency property value. The frequency property
                                    ## @return a json
                                    ## 
                                    def frequency
                                        return @frequency
                                    end
                                    ## 
                                    ## Sets the frequency property value. The frequency property
                                    ## @param value Value to set for the frequency property.
                                    ## @return a void
                                    ## 
                                    def frequency=(value)
                                        @frequency = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "basis" => lambda {|n| @basis = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "frequency" => lambda {|n| @frequency = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "lastInterest" => lambda {|n| @last_interest = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "maturity" => lambda {|n| @maturity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "pr" => lambda {|n| @pr = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rate" => lambda {|n| @rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "redemption" => lambda {|n| @redemption = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "settlement" => lambda {|n| @settlement = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the lastInterest property value. The lastInterest property
                                    ## @return a json
                                    ## 
                                    def last_interest
                                        return @last_interest
                                    end
                                    ## 
                                    ## Sets the lastInterest property value. The lastInterest property
                                    ## @param value Value to set for the last_interest property.
                                    ## @return a void
                                    ## 
                                    def last_interest=(value)
                                        @last_interest = value
                                    end
                                    ## 
                                    ## Gets the maturity property value. The maturity property
                                    ## @return a json
                                    ## 
                                    def maturity
                                        return @maturity
                                    end
                                    ## 
                                    ## Sets the maturity property value. The maturity property
                                    ## @param value Value to set for the maturity property.
                                    ## @return a void
                                    ## 
                                    def maturity=(value)
                                        @maturity = value
                                    end
                                    ## 
                                    ## Gets the pr property value. The pr property
                                    ## @return a json
                                    ## 
                                    def pr
                                        return @pr
                                    end
                                    ## 
                                    ## Sets the pr property value. The pr property
                                    ## @param value Value to set for the pr property.
                                    ## @return a void
                                    ## 
                                    def pr=(value)
                                        @pr = value
                                    end
                                    ## 
                                    ## Gets the rate property value. The rate property
                                    ## @return a json
                                    ## 
                                    def rate
                                        return @rate
                                    end
                                    ## 
                                    ## Sets the rate property value. The rate property
                                    ## @param value Value to set for the rate property.
                                    ## @return a void
                                    ## 
                                    def rate=(value)
                                        @rate = value
                                    end
                                    ## 
                                    ## Gets the redemption property value. The redemption property
                                    ## @return a json
                                    ## 
                                    def redemption
                                        return @redemption
                                    end
                                    ## 
                                    ## Sets the redemption property value. The redemption property
                                    ## @param value Value to set for the redemption property.
                                    ## @return a void
                                    ## 
                                    def redemption=(value)
                                        @redemption = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("basis", @basis)
                                        writer.write_object_value("frequency", @frequency)
                                        writer.write_object_value("lastInterest", @last_interest)
                                        writer.write_object_value("maturity", @maturity)
                                        writer.write_object_value("pr", @pr)
                                        writer.write_object_value("rate", @rate)
                                        writer.write_object_value("redemption", @redemption)
                                        writer.write_object_value("settlement", @settlement)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the settlement property value. The settlement property
                                    ## @return a json
                                    ## 
                                    def settlement
                                        return @settlement
                                    end
                                    ## 
                                    ## Sets the settlement property value. The settlement property
                                    ## @param value Value to set for the settlement property.
                                    ## @return a void
                                    ## 
                                    def settlement=(value)
                                        @settlement = value
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
