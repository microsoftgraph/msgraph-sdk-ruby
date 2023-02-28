require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/workbook_sort_field'
require_relative '../../../../../../../../drives'
require_relative '../../../../../../../item'
require_relative '../../../../../../items'
require_relative '../../../../../item'
require_relative '../../../../workbook'
require_relative '../../../tables'
require_relative '../../item'
require_relative '../sort'
require_relative './apply'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Tables
                            module Item
                                module Sort
                                    module Apply
                                        class ApplyPostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The fields property
                                            @fields
                                            ## 
                                            # The matchCase property
                                            @match_case
                                            ## 
                                            # The method property
                                            @method
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
                                            ## Instantiates a new applyPostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                                            ## @return a apply_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return ApplyPostRequestBody.new
                                            end
                                            ## 
                                            ## Gets the fields property value. The fields property
                                            ## @return a workbook_sort_field
                                            ## 
                                            def fields
                                                return @fields
                                            end
                                            ## 
                                            ## Sets the fields property value. The fields property
                                            ## @param value Value to set for the fields property.
                                            ## @return a void
                                            ## 
                                            def fields=(value)
                                                @fields = value
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "fields" => lambda {|n| @fields = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WorkbookSortField.create_from_discriminator_value(pn) }) },
                                                    "matchCase" => lambda {|n| @match_case = n.get_boolean_value() },
                                                    "method" => lambda {|n| @method = n.get_string_value() },
                                                }
                                            end
                                            ## 
                                            ## Gets the matchCase property value. The matchCase property
                                            ## @return a boolean
                                            ## 
                                            def match_case
                                                return @match_case
                                            end
                                            ## 
                                            ## Sets the matchCase property value. The matchCase property
                                            ## @param value Value to set for the match_case property.
                                            ## @return a void
                                            ## 
                                            def match_case=(value)
                                                @match_case = value
                                            end
                                            ## 
                                            ## Gets the method property value. The method property
                                            ## @return a string
                                            ## 
                                            def method
                                                return @method
                                            end
                                            ## 
                                            ## Sets the method property value. The method property
                                            ## @param value Value to set for the method property.
                                            ## @return a void
                                            ## 
                                            def method=(value)
                                                @method = value
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_collection_of_object_values("fields", @fields)
                                                writer.write_boolean_value("matchCase", @match_case)
                                                writer.write_string_value("method", @method)
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
