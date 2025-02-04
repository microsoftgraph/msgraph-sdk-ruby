require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../drives'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../items'
require_relative '../../../../../../item'
require_relative '../../../../../workbook'
require_relative '../../../../worksheets'
require_relative '../../../item'
require_relative '../../charts'
require_relative '../item_at_with_index'
require_relative './set_data'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Charts
                                    module ItemAtWithIndex
                                        module SetData
                                            class SetDataPostRequestBody
                                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                ## 
                                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                @additional_data
                                                ## 
                                                # The seriesBy property
                                                @series_by
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
                                                ## Instantiates a new SetDataPostRequestBody and sets the default values.
                                                ## @return a void
                                                ## 
                                                def initialize()
                                                    @additional_data = Hash.new
                                                end
                                                ## 
                                                ## Creates a new instance of the appropriate class based on discriminator value
                                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                                ## @return a set_data_post_request_body
                                                ## 
                                                def self.create_from_discriminator_value(parse_node)
                                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                    return SetDataPostRequestBody.new
                                                end
                                                ## 
                                                ## The deserialization information for the current model
                                                ## @return a i_dictionary
                                                ## 
                                                def get_field_deserializers()
                                                    return {
                                                        "seriesBy" => lambda {|n| @series_by = n.get_string_value() },
                                                    }
                                                end
                                                ## 
                                                ## Serializes information the current object
                                                ## @param writer Serialization writer to use to serialize this model
                                                ## @return a void
                                                ## 
                                                def serialize(writer)
                                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                                    writer.write_string_value("seriesBy", @series_by)
                                                    writer.write_additional_data(@additional_data)
                                                end
                                                ## 
                                                ## Gets the seriesBy property value. The seriesBy property
                                                ## @return a string
                                                ## 
                                                def series_by
                                                    return @series_by
                                                end
                                                ## 
                                                ## Sets the seriesBy property value. The seriesBy property
                                                ## @param value Value to set for the seriesBy property.
                                                ## @return a void
                                                ## 
                                                def series_by=(value)
                                                    @series_by = value
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
