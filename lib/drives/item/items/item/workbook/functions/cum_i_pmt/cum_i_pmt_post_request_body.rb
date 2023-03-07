require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './cum_i_pmt'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module CumIPmt
                                class CumIPmtPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The endPeriod property
                                    @end_period
                                    ## 
                                    # The nper property
                                    @nper
                                    ## 
                                    # The pv property
                                    @pv
                                    ## 
                                    # The rate property
                                    @rate
                                    ## 
                                    # The startPeriod property
                                    @start_period
                                    ## 
                                    # The type property
                                    @type
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
                                    ## Instantiates a new cumIPmtPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a cum_i_pmt_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return CumIPmtPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the endPeriod property value. The endPeriod property
                                    ## @return a json
                                    ## 
                                    def end_period
                                        return @end_period
                                    end
                                    ## 
                                    ## Sets the endPeriod property value. The endPeriod property
                                    ## @param value Value to set for the end_period property.
                                    ## @return a void
                                    ## 
                                    def end_period=(value)
                                        @end_period = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "endPeriod" => lambda {|n| @end_period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "nper" => lambda {|n| @nper = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "pv" => lambda {|n| @pv = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rate" => lambda {|n| @rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "startPeriod" => lambda {|n| @start_period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "type" => lambda {|n| @type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the nper property value. The nper property
                                    ## @return a json
                                    ## 
                                    def nper
                                        return @nper
                                    end
                                    ## 
                                    ## Sets the nper property value. The nper property
                                    ## @param value Value to set for the nper property.
                                    ## @return a void
                                    ## 
                                    def nper=(value)
                                        @nper = value
                                    end
                                    ## 
                                    ## Gets the pv property value. The pv property
                                    ## @return a json
                                    ## 
                                    def pv
                                        return @pv
                                    end
                                    ## 
                                    ## Sets the pv property value. The pv property
                                    ## @param value Value to set for the pv property.
                                    ## @return a void
                                    ## 
                                    def pv=(value)
                                        @pv = value
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
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("endPeriod", @end_period)
                                        writer.write_object_value("nper", @nper)
                                        writer.write_object_value("pv", @pv)
                                        writer.write_object_value("rate", @rate)
                                        writer.write_object_value("startPeriod", @start_period)
                                        writer.write_object_value("type", @type)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the startPeriod property value. The startPeriod property
                                    ## @return a json
                                    ## 
                                    def start_period
                                        return @start_period
                                    end
                                    ## 
                                    ## Sets the startPeriod property value. The startPeriod property
                                    ## @param value Value to set for the start_period property.
                                    ## @return a void
                                    ## 
                                    def start_period=(value)
                                        @start_period = value
                                    end
                                    ## 
                                    ## Gets the type property value. The type property
                                    ## @return a json
                                    ## 
                                    def type
                                        return @type
                                    end
                                    ## 
                                    ## Sets the type property value. The type property
                                    ## @param value Value to set for the type property.
                                    ## @return a void
                                    ## 
                                    def type=(value)
                                        @type = value
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
