require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './mirr'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Mirr
                                class MirrPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The financeRate property
                                    @finance_rate
                                    ## 
                                    # The reinvestRate property
                                    @reinvest_rate
                                    ## 
                                    # The values property
                                    @values
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
                                    ## Instantiates a new mirrPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a mirr_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return MirrPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the financeRate property value. The financeRate property
                                    ## @return a json
                                    ## 
                                    def finance_rate
                                        return @finance_rate
                                    end
                                    ## 
                                    ## Sets the financeRate property value. The financeRate property
                                    ## @param value Value to set for the finance_rate property.
                                    ## @return a void
                                    ## 
                                    def finance_rate=(value)
                                        @finance_rate = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "financeRate" => lambda {|n| @finance_rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "reinvestRate" => lambda {|n| @reinvest_rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the reinvestRate property value. The reinvestRate property
                                    ## @return a json
                                    ## 
                                    def reinvest_rate
                                        return @reinvest_rate
                                    end
                                    ## 
                                    ## Sets the reinvestRate property value. The reinvestRate property
                                    ## @param value Value to set for the reinvest_rate property.
                                    ## @return a void
                                    ## 
                                    def reinvest_rate=(value)
                                        @reinvest_rate = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("financeRate", @finance_rate)
                                        writer.write_object_value("reinvestRate", @reinvest_rate)
                                        writer.write_object_value("values", @values)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the values property value. The values property
                                    ## @return a json
                                    ## 
                                    def values
                                        return @values
                                    end
                                    ## 
                                    ## Sets the values property value. The values property
                                    ## @param value Value to set for the values property.
                                    ## @return a void
                                    ## 
                                    def values=(value)
                                        @values = value
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
