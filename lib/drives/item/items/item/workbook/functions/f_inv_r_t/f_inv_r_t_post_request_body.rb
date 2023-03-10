require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './f_inv_r_t'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module F_Inv_RT
                                class FInvRTPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The degFreedom1 property
                                    @deg_freedom1
                                    ## 
                                    # The degFreedom2 property
                                    @deg_freedom2
                                    ## 
                                    # The probability property
                                    @probability
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
                                    ## Instantiates a new FInvRTPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a f_inv_r_t_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return FInvRTPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the degFreedom1 property value. The degFreedom1 property
                                    ## @return a json
                                    ## 
                                    def deg_freedom1
                                        return @deg_freedom1
                                    end
                                    ## 
                                    ## Sets the degFreedom1 property value. The degFreedom1 property
                                    ## @param value Value to set for the deg_freedom1 property.
                                    ## @return a void
                                    ## 
                                    def deg_freedom1=(value)
                                        @deg_freedom1 = value
                                    end
                                    ## 
                                    ## Gets the degFreedom2 property value. The degFreedom2 property
                                    ## @return a json
                                    ## 
                                    def deg_freedom2
                                        return @deg_freedom2
                                    end
                                    ## 
                                    ## Sets the degFreedom2 property value. The degFreedom2 property
                                    ## @param value Value to set for the deg_freedom2 property.
                                    ## @return a void
                                    ## 
                                    def deg_freedom2=(value)
                                        @deg_freedom2 = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "degFreedom1" => lambda {|n| @deg_freedom1 = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "degFreedom2" => lambda {|n| @deg_freedom2 = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "probability" => lambda {|n| @probability = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the probability property value. The probability property
                                    ## @return a json
                                    ## 
                                    def probability
                                        return @probability
                                    end
                                    ## 
                                    ## Sets the probability property value. The probability property
                                    ## @param value Value to set for the probability property.
                                    ## @return a void
                                    ## 
                                    def probability=(value)
                                        @probability = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("degFreedom1", @deg_freedom1)
                                        writer.write_object_value("degFreedom2", @deg_freedom2)
                                        writer.write_object_value("probability", @probability)
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
