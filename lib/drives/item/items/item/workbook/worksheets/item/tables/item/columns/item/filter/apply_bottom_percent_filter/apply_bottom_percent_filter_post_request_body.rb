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
require_relative './apply_bottom_percent_filter'

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
                                                    module ApplyBottomPercentFilter
                                                        class ApplyBottomPercentFilterPostRequestBody
                                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                            ## 
                                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                            @additional_data
                                                            ## 
                                                            # The percent property
                                                            @percent
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
                                                            ## Instantiates a new applyBottomPercentFilterPostRequestBody and sets the default values.
                                                            ## @return a void
                                                            ## 
                                                            def initialize()
                                                                @additional_data = Hash.new
                                                            end
                                                            ## 
                                                            ## Creates a new instance of the appropriate class based on discriminator value
                                                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                                                            ## @return a apply_bottom_percent_filter_post_request_body
                                                            ## 
                                                            def self.create_from_discriminator_value(parse_node)
                                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                                return ApplyBottomPercentFilterPostRequestBody.new
                                                            end
                                                            ## 
                                                            ## The deserialization information for the current model
                                                            ## @return a i_dictionary
                                                            ## 
                                                            def get_field_deserializers()
                                                                return {
                                                                    "percent" => lambda {|n| @percent = n.get_number_value() },
                                                                }
                                                            end
                                                            ## 
                                                            ## Gets the percent property value. The percent property
                                                            ## @return a integer
                                                            ## 
                                                            def percent
                                                                return @percent
                                                            end
                                                            ## 
                                                            ## Sets the percent property value. The percent property
                                                            ## @param value Value to set for the percent property.
                                                            ## @return a void
                                                            ## 
                                                            def percent=(value)
                                                                @percent = value
                                                            end
                                                            ## 
                                                            ## Serializes information the current object
                                                            ## @param writer Serialization writer to use to serialize this model
                                                            ## @return a void
                                                            ## 
                                                            def serialize(writer)
                                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                                writer.write_number_value("percent", @percent)
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
