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
require_relative '../total_row_range'
require_relative './delete'

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
                                        module TotalRowRange
                                            module Delete
                                                class DeletePostRequestBody
                                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                    ## 
                                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                    @additional_data
                                                    ## 
                                                    # The shift property
                                                    @shift
                                                    ## 
                                                    ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                    ## @return a i_dictionary
                                                    ## 
                                                    def additional_data
                                                        return @additional_data
                                                    end
                                                    ## 
                                                    ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                    ## @param value Value to set for the AdditionalData property.
                                                    ## @return a void
                                                    ## 
                                                    def additional_data=(value)
                                                        @additional_data = value
                                                    end
                                                    ## 
                                                    ## Instantiates a new DeletePostRequestBody and sets the default values.
                                                    ## @return a void
                                                    ## 
                                                    def initialize()
                                                        @additional_data = Hash.new
                                                    end
                                                    ## 
                                                    ## Creates a new instance of the appropriate class based on discriminator value
                                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                                    ## @return a delete_post_request_body
                                                    ## 
                                                    def self.create_from_discriminator_value(parse_node)
                                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                        return DeletePostRequestBody.new
                                                    end
                                                    ## 
                                                    ## The deserialization information for the current model
                                                    ## @return a i_dictionary
                                                    ## 
                                                    def get_field_deserializers()
                                                        return {
                                                            "shift" => lambda {|n| @shift = n.get_string_value() },
                                                        }
                                                    end
                                                    ## 
                                                    ## Serializes information the current object
                                                    ## @param writer Serialization writer to use to serialize this model
                                                    ## @return a void
                                                    ## 
                                                    def serialize(writer)
                                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                                        writer.write_string_value("shift", @shift)
                                                        writer.write_additional_data(@additional_data)
                                                    end
                                                    ## 
                                                    ## Gets the shift property value. The shift property
                                                    ## @return a string
                                                    ## 
                                                    def shift
                                                        return @shift
                                                    end
                                                    ## 
                                                    ## Sets the shift property value. The shift property
                                                    ## @param value Value to set for the shift property.
                                                    ## @return a void
                                                    ## 
                                                    def shift=(value)
                                                        @shift = value
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
