require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/item_reference'
require_relative '../../../../../../groups'
require_relative '../../../../../item'
require_relative '../../../../sites'
require_relative '../../../item'
require_relative '../../content_types'
require_relative '../item'
require_relative './copy_to_default_content_location'

module MicrosoftGraph
    module Groups
        module Item
            module Sites
                module Item
                    module ContentTypes
                        module Item
                            module CopyToDefaultContentLocation
                                class CopyToDefaultContentLocationPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The destinationFileName property
                                    @destination_file_name
                                    ## 
                                    # The sourceFile property
                                    @source_file
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
                                    ## Instantiates a new copyToDefaultContentLocationPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                                    ## @return a copy_to_default_content_location_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return CopyToDefaultContentLocationPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the destinationFileName property value. The destinationFileName property
                                    ## @return a string
                                    ## 
                                    def destination_file_name
                                        return @destination_file_name
                                    end
                                    ## 
                                    ## Sets the destinationFileName property value. The destinationFileName property
                                    ## @param value Value to set for the destination_file_name property.
                                    ## @return a void
                                    ## 
                                    def destination_file_name=(value)
                                        @destination_file_name = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "destinationFileName" => lambda {|n| @destination_file_name = n.get_string_value() },
                                            "sourceFile" => lambda {|n| @source_file = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemReference.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_string_value("destinationFileName", @destination_file_name)
                                        writer.write_object_value("sourceFile", @source_file)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the sourceFile property value. The sourceFile property
                                    ## @return a item_reference
                                    ## 
                                    def source_file
                                        return @source_file
                                    end
                                    ## 
                                    ## Sets the sourceFile property value. The sourceFile property
                                    ## @param value Value to set for the source_file property.
                                    ## @return a void
                                    ## 
                                    def source_file=(value)
                                        @source_file = value
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
