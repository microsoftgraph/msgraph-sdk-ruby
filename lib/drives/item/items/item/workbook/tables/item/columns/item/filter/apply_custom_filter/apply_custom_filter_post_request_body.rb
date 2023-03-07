require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../drives'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../items'
require_relative '../../../../../../../item'
require_relative '../../../../../../workbook'
require_relative '../../../../../tables'
require_relative '../../../../item'
require_relative '../../../columns'
require_relative '../../item'
require_relative '../filter'
require_relative './apply_custom_filter'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Tables
                            module Item
                                module Columns
                                    module Item
                                        module Filter
                                            module ApplyCustomFilter
                                                class ApplyCustomFilterPostRequestBody
                                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                    ## 
                                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                    @additional_data
                                                    ## 
                                                    # The criteria1 property
                                                    @criteria1
                                                    ## 
                                                    # The criteria2 property
                                                    @criteria2
                                                    ## 
                                                    # The oper property
                                                    @oper
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
                                                    ## Instantiates a new applyCustomFilterPostRequestBody and sets the default values.
                                                    ## @return a void
                                                    ## 
                                                    def initialize()
                                                        @additional_data = Hash.new
                                                    end
                                                    ## 
                                                    ## Creates a new instance of the appropriate class based on discriminator value
                                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                                    ## @return a apply_custom_filter_post_request_body
                                                    ## 
                                                    def self.create_from_discriminator_value(parse_node)
                                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                        return ApplyCustomFilterPostRequestBody.new
                                                    end
                                                    ## 
                                                    ## Gets the criteria1 property value. The criteria1 property
                                                    ## @return a string
                                                    ## 
                                                    def criteria1
                                                        return @criteria1
                                                    end
                                                    ## 
                                                    ## Sets the criteria1 property value. The criteria1 property
                                                    ## @param value Value to set for the criteria1 property.
                                                    ## @return a void
                                                    ## 
                                                    def criteria1=(value)
                                                        @criteria1 = value
                                                    end
                                                    ## 
                                                    ## Gets the criteria2 property value. The criteria2 property
                                                    ## @return a string
                                                    ## 
                                                    def criteria2
                                                        return @criteria2
                                                    end
                                                    ## 
                                                    ## Sets the criteria2 property value. The criteria2 property
                                                    ## @param value Value to set for the criteria2 property.
                                                    ## @return a void
                                                    ## 
                                                    def criteria2=(value)
                                                        @criteria2 = value
                                                    end
                                                    ## 
                                                    ## The deserialization information for the current model
                                                    ## @return a i_dictionary
                                                    ## 
                                                    def get_field_deserializers()
                                                        return {
                                                            "criteria1" => lambda {|n| @criteria1 = n.get_string_value() },
                                                            "criteria2" => lambda {|n| @criteria2 = n.get_string_value() },
                                                            "oper" => lambda {|n| @oper = n.get_string_value() },
                                                        }
                                                    end
                                                    ## 
                                                    ## Gets the oper property value. The oper property
                                                    ## @return a string
                                                    ## 
                                                    def oper
                                                        return @oper
                                                    end
                                                    ## 
                                                    ## Sets the oper property value. The oper property
                                                    ## @param value Value to set for the oper property.
                                                    ## @return a void
                                                    ## 
                                                    def oper=(value)
                                                        @oper = value
                                                    end
                                                    ## 
                                                    ## Serializes information the current object
                                                    ## @param writer Serialization writer to use to serialize this model
                                                    ## @return a void
                                                    ## 
                                                    def serialize(writer)
                                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                                        writer.write_string_value("criteria1", @criteria1)
                                                        writer.write_string_value("criteria2", @criteria2)
                                                        writer.write_string_value("oper", @oper)
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
            end
        end
    end
end
