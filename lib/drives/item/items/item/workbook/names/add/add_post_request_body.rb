require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../names'
require_relative './add'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Names
                            module Add
                                class AddPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The comment property
                                    @comment
                                    ## 
                                    # The name property
                                    @name
                                    ## 
                                    # The reference property
                                    @reference
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
                                    ## Gets the comment property value. The comment property
                                    ## @return a string
                                    ## 
                                    def comment
                                        return @comment
                                    end
                                    ## 
                                    ## Sets the comment property value. The comment property
                                    ## @param value Value to set for the comment property.
                                    ## @return a void
                                    ## 
                                    def comment=(value)
                                        @comment = value
                                    end
                                    ## 
                                    ## Instantiates a new addPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a add_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return AddPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "comment" => lambda {|n| @comment = n.get_string_value() },
                                            "name" => lambda {|n| @name = n.get_string_value() },
                                            "reference" => lambda {|n| @reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the name property value. The name property
                                    ## @return a string
                                    ## 
                                    def name
                                        return @name
                                    end
                                    ## 
                                    ## Sets the name property value. The name property
                                    ## @param value Value to set for the name property.
                                    ## @return a void
                                    ## 
                                    def name=(value)
                                        @name = value
                                    end
                                    ## 
                                    ## Gets the reference property value. The reference property
                                    ## @return a json
                                    ## 
                                    def reference
                                        return @reference
                                    end
                                    ## 
                                    ## Sets the reference property value. The reference property
                                    ## @param value Value to set for the reference property.
                                    ## @return a void
                                    ## 
                                    def reference=(value)
                                        @reference = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_string_value("comment", @comment)
                                        writer.write_string_value("name", @name)
                                        writer.write_object_value("reference", @reference)
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
