require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './exact'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Exact
                                class ExactPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The text1 property
                                    @text1
                                    ## 
                                    # The text2 property
                                    @text2
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
                                    ## Instantiates a new exactPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a exact_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ExactPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "text1" => lambda {|n| @text1 = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "text2" => lambda {|n| @text2 = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("text1", @text1)
                                        writer.write_object_value("text2", @text2)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the text1 property value. The text1 property
                                    ## @return a json
                                    ## 
                                    def text1
                                        return @text1
                                    end
                                    ## 
                                    ## Sets the text1 property value. The text1 property
                                    ## @param value Value to set for the text1 property.
                                    ## @return a void
                                    ## 
                                    def text1=(value)
                                        @text1 = value
                                    end
                                    ## 
                                    ## Gets the text2 property value. The text2 property
                                    ## @return a json
                                    ## 
                                    def text2
                                        return @text2
                                    end
                                    ## 
                                    ## Sets the text2 property value. The text2 property
                                    ## @param value Value to set for the text2 property.
                                    ## @return a void
                                    ## 
                                    def text2=(value)
                                        @text2 = value
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
