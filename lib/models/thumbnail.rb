require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Thumbnail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The content stream for the thumbnail.
            @content
            ## 
            # The height of the thumbnail, in pixels.
            @height
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier of the item that provided the thumbnail. This is only available when a folder thumbnail is requested.
            @source_item_id
            ## 
            # The URL used to fetch the thumbnail content.
            @url
            ## 
            # The width of the thumbnail, in pixels.
            @width
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
            ## Instantiates a new thumbnail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. The content stream for the thumbnail.
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content stream for the thumbnail.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a thumbnail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Thumbnail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "height" => lambda {|n| @height = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sourceItemId" => lambda {|n| @source_item_id = n.get_string_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
                    "width" => lambda {|n| @width = n.get_number_value() },
                }
            end
            ## 
            ## Gets the height property value. The height of the thumbnail, in pixels.
            ## @return a integer
            ## 
            def height
                return @height
            end
            ## 
            ## Sets the height property value. The height of the thumbnail, in pixels.
            ## @param value Value to set for the height property.
            ## @return a void
            ## 
            def height=(value)
                @height = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("content", @content)
                writer.write_number_value("height", @height)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sourceItemId", @source_item_id)
                writer.write_string_value("url", @url)
                writer.write_number_value("width", @width)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceItemId property value. The unique identifier of the item that provided the thumbnail. This is only available when a folder thumbnail is requested.
            ## @return a string
            ## 
            def source_item_id
                return @source_item_id
            end
            ## 
            ## Sets the sourceItemId property value. The unique identifier of the item that provided the thumbnail. This is only available when a folder thumbnail is requested.
            ## @param value Value to set for the source_item_id property.
            ## @return a void
            ## 
            def source_item_id=(value)
                @source_item_id = value
            end
            ## 
            ## Gets the url property value. The URL used to fetch the thumbnail content.
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. The URL used to fetch the thumbnail content.
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
            ## 
            ## Gets the width property value. The width of the thumbnail, in pixels.
            ## @return a integer
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. The width of the thumbnail, in pixels.
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
        end
    end
end
