require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../models/workbook_icon'
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
require_relative './apply_icon_filter'

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
                                                    module ApplyIconFilter
                                                        class ApplyIconFilterPostRequestBody
                                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                            ## 
                                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                            @additional_data
                                                            ## 
                                                            # The icon property
                                                            @icon
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
                                                            ## Instantiates a new applyIconFilterPostRequestBody and sets the default values.
                                                            ## @return a void
                                                            ## 
                                                            def initialize()
                                                                @additional_data = Hash.new
                                                            end
                                                            ## 
                                                            ## Creates a new instance of the appropriate class based on discriminator value
                                                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                                                            ## @return a apply_icon_filter_post_request_body
                                                            ## 
                                                            def self.create_from_discriminator_value(parse_node)
                                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                                return ApplyIconFilterPostRequestBody.new
                                                            end
                                                            ## 
                                                            ## The deserialization information for the current model
                                                            ## @return a i_dictionary
                                                            ## 
                                                            def get_field_deserializers()
                                                                return {
                                                                    "icon" => lambda {|n| @icon = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookIcon.create_from_discriminator_value(pn) }) },
                                                                }
                                                            end
                                                            ## 
                                                            ## Gets the icon property value. The icon property
                                                            ## @return a workbook_icon
                                                            ## 
                                                            def icon
                                                                return @icon
                                                            end
                                                            ## 
                                                            ## Sets the icon property value. The icon property
                                                            ## @param value Value to set for the icon property.
                                                            ## @return a void
                                                            ## 
                                                            def icon=(value)
                                                                @icon = value
                                                            end
                                                            ## 
                                                            ## Serializes information the current object
                                                            ## @param writer Serialization writer to use to serialize this model
                                                            ## @return a void
                                                            ## 
                                                            def serialize(writer)
                                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                                writer.write_object_value("icon", @icon)
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
