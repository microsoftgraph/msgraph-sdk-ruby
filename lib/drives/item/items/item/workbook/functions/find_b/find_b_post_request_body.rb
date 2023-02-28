require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './find_b'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module FindB
                                class FindBPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The findText property
                                    @find_text
                                    ## 
                                    # The startNum property
                                    @start_num
                                    ## 
                                    # The withinText property
                                    @within_text
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
                                    ## Instantiates a new findBPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a find_b_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return FindBPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the findText property value. The findText property
                                    ## @return a json
                                    ## 
                                    def find_text
                                        return @find_text
                                    end
                                    ## 
                                    ## Sets the findText property value. The findText property
                                    ## @param value Value to set for the find_text property.
                                    ## @return a void
                                    ## 
                                    def find_text=(value)
                                        @find_text = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "findText" => lambda {|n| @find_text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "startNum" => lambda {|n| @start_num = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "withinText" => lambda {|n| @within_text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("findText", @find_text)
                                        writer.write_object_value("startNum", @start_num)
                                        writer.write_object_value("withinText", @within_text)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the startNum property value. The startNum property
                                    ## @return a json
                                    ## 
                                    def start_num
                                        return @start_num
                                    end
                                    ## 
                                    ## Sets the startNum property value. The startNum property
                                    ## @param value Value to set for the start_num property.
                                    ## @return a void
                                    ## 
                                    def start_num=(value)
                                        @start_num = value
                                    end
                                    ## 
                                    ## Gets the withinText property value. The withinText property
                                    ## @return a json
                                    ## 
                                    def within_text
                                        return @within_text
                                    end
                                    ## 
                                    ## Sets the withinText property value. The withinText property
                                    ## @param value Value to set for the within_text property.
                                    ## @return a void
                                    ## 
                                    def within_text=(value)
                                        @within_text = value
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
