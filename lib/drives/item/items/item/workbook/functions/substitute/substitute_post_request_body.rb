require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './substitute'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Substitute
                                class SubstitutePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The instanceNum property
                                    @instance_num
                                    ## 
                                    # The newText property
                                    @new_text
                                    ## 
                                    # The oldText property
                                    @old_text
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
                                    ## Instantiates a new substitutePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a substitute_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return SubstitutePostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "instanceNum" => lambda {|n| @instance_num = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "newText" => lambda {|n| @new_text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "oldText" => lambda {|n| @old_text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the instanceNum property value. The instanceNum property
                                    ## @return a json
                                    ## 
                                    def instance_num
                                        return @instance_num
                                    end
                                    ## 
                                    ## Sets the instanceNum property value. The instanceNum property
                                    ## @param value Value to set for the instance_num property.
                                    ## @return a void
                                    ## 
                                    def instance_num=(value)
                                        @instance_num = value
                                    end
                                    ## 
                                    ## Gets the newText property value. The newText property
                                    ## @return a json
                                    ## 
                                    def new_text
                                        return @new_text
                                    end
                                    ## 
                                    ## Sets the newText property value. The newText property
                                    ## @param value Value to set for the new_text property.
                                    ## @return a void
                                    ## 
                                    def new_text=(value)
                                        @new_text = value
                                    end
                                    ## 
                                    ## Gets the oldText property value. The oldText property
                                    ## @return a json
                                    ## 
                                    def old_text
                                        return @old_text
                                    end
                                    ## 
                                    ## Sets the oldText property value. The oldText property
                                    ## @param value Value to set for the old_text property.
                                    ## @return a void
                                    ## 
                                    def old_text=(value)
                                        @old_text = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("instanceNum", @instance_num)
                                        writer.write_object_value("newText", @new_text)
                                        writer.write_object_value("oldText", @old_text)
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
