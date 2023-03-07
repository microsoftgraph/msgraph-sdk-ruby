require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './rate'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Rate
                                class RatePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The fv property
                                    @fv
                                    ## 
                                    # The guess property
                                    @guess
                                    ## 
                                    # The nper property
                                    @nper
                                    ## 
                                    # The pmt property
                                    @pmt
                                    ## 
                                    # The pv property
                                    @pv
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
                                    ## Instantiates a new ratePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a rate_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return RatePostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the fv property value. The fv property
                                    ## @return a json
                                    ## 
                                    def fv
                                        return @fv
                                    end
                                    ## 
                                    ## Sets the fv property value. The fv property
                                    ## @param value Value to set for the fv property.
                                    ## @return a void
                                    ## 
                                    def fv=(value)
                                        @fv = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "fv" => lambda {|n| @fv = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "guess" => lambda {|n| @guess = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "nper" => lambda {|n| @nper = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "pmt" => lambda {|n| @pmt = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "pv" => lambda {|n| @pv = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "type" => lambda {|n| @type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the guess property value. The guess property
                                    ## @return a json
                                    ## 
                                    def guess
                                        return @guess
                                    end
                                    ## 
                                    ## Sets the guess property value. The guess property
                                    ## @param value Value to set for the guess property.
                                    ## @return a void
                                    ## 
                                    def guess=(value)
                                        @guess = value
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
                                    ## Gets the pmt property value. The pmt property
                                    ## @return a json
                                    ## 
                                    def pmt
                                        return @pmt
                                    end
                                    ## 
                                    ## Sets the pmt property value. The pmt property
                                    ## @param value Value to set for the pmt property.
                                    ## @return a void
                                    ## 
                                    def pmt=(value)
                                        @pmt = value
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
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("fv", @fv)
                                        writer.write_object_value("guess", @guess)
                                        writer.write_object_value("nper", @nper)
                                        writer.write_object_value("pmt", @pmt)
                                        writer.write_object_value("pv", @pv)
                                        writer.write_object_value("type", @type)
                                        writer.write_additional_data(@additional_data)
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
