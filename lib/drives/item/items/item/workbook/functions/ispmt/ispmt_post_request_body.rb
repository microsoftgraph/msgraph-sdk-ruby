require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './ispmt'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Ispmt
                                class IspmtPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The nper property
                                    @nper
                                    ## 
                                    # The per property
                                    @per
                                    ## 
                                    # The pv property
                                    @pv
                                    ## 
                                    # The rate property
                                    @rate
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
                                    ## Instantiates a new ispmtPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a ispmt_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return IspmtPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "nper" => lambda {|n| @nper = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "per" => lambda {|n| @per = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "pv" => lambda {|n| @pv = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rate" => lambda {|n| @rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
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
                                    ## Gets the per property value. The per property
                                    ## @return a json
                                    ## 
                                    def per
                                        return @per
                                    end
                                    ## 
                                    ## Sets the per property value. The per property
                                    ## @param value Value to set for the per property.
                                    ## @return a void
                                    ## 
                                    def per=(value)
                                        @per = value
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
                                        writer.write_object_value("nper", @nper)
                                        writer.write_object_value("per", @per)
                                        writer.write_object_value("pv", @pv)
                                        writer.write_object_value("rate", @rate)
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
