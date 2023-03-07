require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './vdb'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Vdb
                                class VdbPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The cost property
                                    @cost
                                    ## 
                                    # The endPeriod property
                                    @end_period
                                    ## 
                                    # The factor property
                                    @factor
                                    ## 
                                    # The life property
                                    @life
                                    ## 
                                    # The noSwitch property
                                    @no_switch
                                    ## 
                                    # The salvage property
                                    @salvage
                                    ## 
                                    # The startPeriod property
                                    @start_period
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
                                    ## Instantiates a new vdbPostRequestBody and sets the default values.
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
                                    ## @return a vdb_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return VdbPostRequestBody.new
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
                                    ## Gets the factor property value. The factor property
                                    ## @return a json
                                    ## 
                                    def factor
                                        return @factor
                                    end
                                    ## 
                                    ## Sets the factor property value. The factor property
                                    ## @param value Value to set for the factor property.
                                    ## @return a void
                                    ## 
                                    def factor=(value)
                                        @factor = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "cost" => lambda {|n| @cost = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "endPeriod" => lambda {|n| @end_period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "factor" => lambda {|n| @factor = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "life" => lambda {|n| @life = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "noSwitch" => lambda {|n| @no_switch = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "salvage" => lambda {|n| @salvage = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "startPeriod" => lambda {|n| @start_period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the life property value. The life property
                                    ## @return a json
                                    ## 
                                    def life
                                        return @life
                                    end
                                    ## 
                                    ## Sets the life property value. The life property
                                    ## @param value Value to set for the life property.
                                    ## @return a void
                                    ## 
                                    def life=(value)
                                        @life = value
                                    end
                                    ## 
                                    ## Gets the noSwitch property value. The noSwitch property
                                    ## @return a json
                                    ## 
                                    def no_switch
                                        return @no_switch
                                    end
                                    ## 
                                    ## Sets the noSwitch property value. The noSwitch property
                                    ## @param value Value to set for the no_switch property.
                                    ## @return a void
                                    ## 
                                    def no_switch=(value)
                                        @no_switch = value
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
                                        writer.write_object_value("cost", @cost)
                                        writer.write_object_value("endPeriod", @end_period)
                                        writer.write_object_value("factor", @factor)
                                        writer.write_object_value("life", @life)
                                        writer.write_object_value("noSwitch", @no_switch)
                                        writer.write_object_value("salvage", @salvage)
                                        writer.write_object_value("startPeriod", @start_period)
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
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
