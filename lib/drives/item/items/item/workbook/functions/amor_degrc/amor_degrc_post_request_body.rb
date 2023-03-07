require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './amor_degrc'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module AmorDegrc
                                class AmorDegrcPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The basis property
                                    @basis
                                    ## 
                                    # The cost property
                                    @cost
                                    ## 
                                    # The datePurchased property
                                    @date_purchased
                                    ## 
                                    # The firstPeriod property
                                    @first_period
                                    ## 
                                    # The period property
                                    @period
                                    ## 
                                    # The rate property
                                    @rate
                                    ## 
                                    # The salvage property
                                    @salvage
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
                                    ## Instantiates a new amorDegrcPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Gets the cost property value. The cost property
                                    ## @return a json
                                    ## 
                                    def cost
                                        return @cost
                                    end
                                    ## 
                                    ## Sets the cost property value. The cost property
                                    ## @param value Value to set for the cost property.
                                    ## @return a void
                                    ## 
                                    def cost=(value)
                                        @cost = value
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a amor_degrc_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return AmorDegrcPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the datePurchased property value. The datePurchased property
                                    ## @return a json
                                    ## 
                                    def date_purchased
                                        return @date_purchased
                                    end
                                    ## 
                                    ## Sets the datePurchased property value. The datePurchased property
                                    ## @param value Value to set for the date_purchased property.
                                    ## @return a void
                                    ## 
                                    def date_purchased=(value)
                                        @date_purchased = value
                                    end
                                    ## 
                                    ## Gets the firstPeriod property value. The firstPeriod property
                                    ## @return a json
                                    ## 
                                    def first_period
                                        return @first_period
                                    end
                                    ## 
                                    ## Sets the firstPeriod property value. The firstPeriod property
                                    ## @param value Value to set for the first_period property.
                                    ## @return a void
                                    ## 
                                    def first_period=(value)
                                        @first_period = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "basis" => lambda {|n| @basis = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "cost" => lambda {|n| @cost = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "datePurchased" => lambda {|n| @date_purchased = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "firstPeriod" => lambda {|n| @first_period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "period" => lambda {|n| @period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rate" => lambda {|n| @rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "salvage" => lambda {|n| @salvage = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the period property value. The period property
                                    ## @return a json
                                    ## 
                                    def period
                                        return @period
                                    end
                                    ## 
                                    ## Sets the period property value. The period property
                                    ## @param value Value to set for the period property.
                                    ## @return a void
                                    ## 
                                    def period=(value)
                                        @period = value
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
                                    ## Gets the salvage property value. The salvage property
                                    ## @return a json
                                    ## 
                                    def salvage
                                        return @salvage
                                    end
                                    ## 
                                    ## Sets the salvage property value. The salvage property
                                    ## @param value Value to set for the salvage property.
                                    ## @return a void
                                    ## 
                                    def salvage=(value)
                                        @salvage = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("basis", @basis)
                                        writer.write_object_value("cost", @cost)
                                        writer.write_object_value("datePurchased", @date_purchased)
                                        writer.write_object_value("firstPeriod", @first_period)
                                        writer.write_object_value("period", @period)
                                        writer.write_object_value("rate", @rate)
                                        writer.write_object_value("salvage", @salvage)
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
