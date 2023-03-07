require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../../item'
require_relative '../../../../../../../../../../items'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../workbook'
require_relative '../../../../../../../worksheets'
require_relative '../../../../../../item'
require_relative '../../../../../tables'
require_relative '../../../../item'
require_relative '../../../columns'
require_relative '../../item'
require_relative '../filter'
require_relative './apply_font_color_filter'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Tables
                                    module Item
                                        module Columns
                                            module Item
                                                module Filter
                                                    module ApplyFontColorFilter
                                                        class ApplyFontColorFilterPostRequestBody
                                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                            ## 
                                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                            @additional_data
                                                            ## 
                                                            # The color property
                                                            @color
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
                                                            ## Gets the color property value. The color property
                                                            ## @return a string
                                                            ## 
                                                            def color
                                                                return @color
                                                            end
                                                            ## 
                                                            ## Sets the color property value. The color property
                                                            ## @param value Value to set for the color property.
                                                            ## @return a void
                                                            ## 
                                                            def color=(value)
                                                                @color = value
                                                            end
                                                            ## 
                                                            ## Instantiates a new applyFontColorFilterPostRequestBody and sets the default values.
                                                            ## @return a void
                                                            ## 
                                                            def initialize()
                                                                @additional_data = Hash.new
                                                            end
                                                            ## 
                                                            ## Creates a new instance of the appropriate class based on discriminator value
                                                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                                                            ## @return a apply_font_color_filter_post_request_body
                                                            ## 
                                                            def self.create_from_discriminator_value(parse_node)
                                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                                return ApplyFontColorFilterPostRequestBody.new
                                                            end
                                                            ## 
                                                            ## The deserialization information for the current model
                                                            ## @return a i_dictionary
                                                            ## 
                                                            def get_field_deserializers()
                                                                return {
                                                                    "color" => lambda {|n| @color = n.get_string_value() },
                                                                }
                                                            end
                                                            ## 
                                                            ## Serializes information the current object
                                                            ## @param writer Serialization writer to use to serialize this model
                                                            ## @return a void
                                                            ## 
                                                            def serialize(writer)
                                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                                writer.write_string_value("color", @color)
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
    end
end
