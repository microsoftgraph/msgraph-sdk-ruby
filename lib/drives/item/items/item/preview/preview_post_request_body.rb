require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../drives'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './preview'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Preview
                        class PreviewPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The page property
                            @page
                            ## 
                            # The zoom property
                            @zoom
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
                            ## Instantiates a new previewPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a preview_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return PreviewPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "page" => lambda {|n| @page = n.get_string_value() },
                                    "zoom" => lambda {|n| @zoom = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                                }
                            end
                            ## 
                            ## Gets the page property value. The page property
                            ## @return a string
                            ## 
                            def page
                                return @page
                            end
                            ## 
                            ## Sets the page property value. The page property
                            ## @param value Value to set for the page property.
                            ## @return a void
                            ## 
                            def page=(value)
                                @page = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("page", @page)
                                writer.write_object_value("zoom", @zoom)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the zoom property value. The zoom property
                            ## @return a double
                            ## 
                            def zoom
                                return @zoom
                            end
                            ## 
                            ## Sets the zoom property value. The zoom property
                            ## @param value Value to set for the zoom property.
                            ## @return a void
                            ## 
                            def zoom=(value)
                                @zoom = value
                            end
                        end
                    end
                end
            end
        end
    end
end
