require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './if_escaped'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module If_escaped
                                class IfPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The logicalTest property
                                    @logical_test
                                    ## 
                                    # The valueIfFalse property
                                    @value_if_false
                                    ## 
                                    # The valueIfTrue property
                                    @value_if_true
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
                                    ## Instantiates a new ifPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a if_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return IfPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "logicalTest" => lambda {|n| @logical_test = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "valueIfFalse" => lambda {|n| @value_if_false = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "valueIfTrue" => lambda {|n| @value_if_true = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the logicalTest property value. The logicalTest property
                                    ## @return a json
                                    ## 
                                    def logical_test
                                        return @logical_test
                                    end
                                    ## 
                                    ## Sets the logicalTest property value. The logicalTest property
                                    ## @param value Value to set for the logical_test property.
                                    ## @return a void
                                    ## 
                                    def logical_test=(value)
                                        @logical_test = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("logicalTest", @logical_test)
                                        writer.write_object_value("valueIfFalse", @value_if_false)
                                        writer.write_object_value("valueIfTrue", @value_if_true)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the valueIfFalse property value. The valueIfFalse property
                                    ## @return a json
                                    ## 
                                    def value_if_false
                                        return @value_if_false
                                    end
                                    ## 
                                    ## Sets the valueIfFalse property value. The valueIfFalse property
                                    ## @param value Value to set for the value_if_false property.
                                    ## @return a void
                                    ## 
                                    def value_if_false=(value)
                                        @value_if_false = value
                                    end
                                    ## 
                                    ## Gets the valueIfTrue property value. The valueIfTrue property
                                    ## @return a json
                                    ## 
                                    def value_if_true
                                        return @value_if_true
                                    end
                                    ## 
                                    ## Sets the valueIfTrue property value. The valueIfTrue property
                                    ## @param value Value to set for the value_if_true property.
                                    ## @return a void
                                    ## 
                                    def value_if_true=(value)
                                        @value_if_true = value
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
