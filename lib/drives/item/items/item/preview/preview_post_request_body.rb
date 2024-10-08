require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/reference_numeric'
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
                            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            ## @return a i_dictionary
                            ## 
                            def additional_data
                                return @additional_data
                            end
                            ## 
                            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            ## @param value Value to set for the AdditionalData property.
                            ## @return a void
                            ## 
                            def additional_data=(value)
                                @additional_data = value
                            end
                            ## 
                            ## Instantiates a new PreviewPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
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
                                    "zoom" => lambda {|n| @zoom = n.get_object_value(lambda {|pn| PreviewPostRequestBody::PreviewPostRequestBodyZoom.create_from_discriminator_value(pn) }) },
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
                            ## @return a preview_post_request_body_zoom
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

                            ## 
                            # Composed type wrapper for classes Double, ReferenceNumeric, string
                            class PreviewPostRequestBodyZoom
                                include MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Composed type representation for type Double
                                @double
                                ## 
                                # Composed type representation for type ReferenceNumeric
                                @reference_numeric
                                ## 
                                # Composed type representation for type string
                                @string
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a preview_post_request_body_zoom
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    mapping_value_node = parse_node.get_child_node("")
                                    unless mapping_value_node.nil? then
                                        mapping_value = mapping_value_node.get_string_value
                                        case mapping_value
                                            when "ReferenceNumeric"
                                                return ReferenceNumeric.new
                                        end
                                    end
                                    return PreviewPostRequestBodyZoom.new
                                end
                                ## 
                                ## Gets the double property value. Composed type representation for type Double
                                ## @return a double
                                ## 
                                def double
                                    return @double
                                end
                                ## 
                                ## Sets the double property value. Composed type representation for type Double
                                ## @param value Value to set for the double property.
                                ## @return a void
                                ## 
                                def double=(value)
                                    @double = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                                        "string" => lambda {|n| @string = n.get_string_value() },
                                    }
                                end
                                ## 
                                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                                ## @return a reference_numeric
                                ## 
                                def reference_numeric
                                    return @reference_numeric
                                end
                                ## 
                                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                                ## @param value Value to set for the ReferenceNumeric property.
                                ## @return a void
                                ## 
                                def reference_numeric=(value)
                                    @reference_numeric = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_object_value("double", @double)
                                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                                    writer.write_string_value("string", @string)
                                end
                                ## 
                                ## Gets the string property value. Composed type representation for type string
                                ## @return a string
                                ## 
                                def string
                                    return @string
                                end
                                ## 
                                ## Sets the string property value. Composed type representation for type string
                                ## @param value Value to set for the string property.
                                ## @return a void
                                ## 
                                def string=(value)
                                    @string = value
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
