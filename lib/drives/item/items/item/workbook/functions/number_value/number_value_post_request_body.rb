require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './number_value'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module NumberValue
                                class NumberValuePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The decimalSeparator property
                                    @decimal_separator
                                    ## 
                                    # The groupSeparator property
                                    @group_separator
                                    ## 
                                    # The text property
                                    @text
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
                                    ## Instantiates a new numberValuePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a number_value_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return NumberValuePostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the decimalSeparator property value. The decimalSeparator property
                                    ## @return a json
                                    ## 
                                    def decimal_separator
                                        return @decimal_separator
                                    end
                                    ## 
                                    ## Sets the decimalSeparator property value. The decimalSeparator property
                                    ## @param value Value to set for the decimal_separator property.
                                    ## @return a void
                                    ## 
                                    def decimal_separator=(value)
                                        @decimal_separator = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "decimalSeparator" => lambda {|n| @decimal_separator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "groupSeparator" => lambda {|n| @group_separator = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the groupSeparator property value. The groupSeparator property
                                    ## @return a json
                                    ## 
                                    def group_separator
                                        return @group_separator
                                    end
                                    ## 
                                    ## Sets the groupSeparator property value. The groupSeparator property
                                    ## @param value Value to set for the group_separator property.
                                    ## @return a void
                                    ## 
                                    def group_separator=(value)
                                        @group_separator = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("decimalSeparator", @decimal_separator)
                                        writer.write_object_value("groupSeparator", @group_separator)
                                        writer.write_object_value("text", @text)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the text property value. The text property
                                    ## @return a json
                                    ## 
                                    def text
                                        return @text
                                    end
                                    ## 
                                    ## Sets the text property value. The text property
                                    ## @param value Value to set for the text property.
                                    ## @return a void
                                    ## 
                                    def text=(value)
                                        @text = value
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
