require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/workbook_worksheet_protection_options'
require_relative '../../../../../../../../drives'
require_relative '../../../../../../../item'
require_relative '../../../../../../items'
require_relative '../../../../../item'
require_relative '../../../../workbook'
require_relative '../../../worksheets'
require_relative '../../item'
require_relative '../protection'
require_relative './protect'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Protection
                                    module Protect
                                        class ProtectPostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The options property
                                            @options
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
                                            ## Instantiates a new protectPostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                                            ## @return a protect_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return ProtectPostRequestBody.new
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "options" => lambda {|n| @options = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkbookWorksheetProtectionOptions.create_from_discriminator_value(pn) }) },
                                                }
                                            end
                                            ## 
                                            ## Gets the options property value. The options property
                                            ## @return a workbook_worksheet_protection_options
                                            ## 
                                            def options
                                                return @options
                                            end
                                            ## 
                                            ## Sets the options property value. The options property
                                            ## @param value Value to set for the options property.
                                            ## @return a void
                                            ## 
                                            def options=(value)
                                                @options = value
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_object_value("options", @options)
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
