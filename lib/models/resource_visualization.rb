require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ResourceVisualization
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A string describing where the item is stored. For example, the name of a SharePoint site or the user name identifying the owner of the OneDrive storing the item.
            @container_display_name
            ## 
            # Can be used for filtering by the type of container in which the file is stored. Such as Site or OneDriveBusiness.
            @container_type
            ## 
            # A path leading to the folder in which the item is stored.
            @container_web_url
            ## 
            # The item's media type. Can be used for filtering for a specific type of file based on supported IANA Media Mime Types. Note that not all Media Mime Types are supported.
            @media_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A URL leading to the preview image for the item.
            @preview_image_url
            ## 
            # A preview text for the item.
            @preview_text
            ## 
            # The item's title text.
            @title
            ## 
            # The item's media type. Can be used for filtering for a specific file based on a specific type. See below for supported types.
            @type
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
            ## Instantiates a new resourceVisualization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the containerDisplayName property value. A string describing where the item is stored. For example, the name of a SharePoint site or the user name identifying the owner of the OneDrive storing the item.
            ## @return a string
            ## 
            def container_display_name
                return @container_display_name
            end
            ## 
            ## Sets the containerDisplayName property value. A string describing where the item is stored. For example, the name of a SharePoint site or the user name identifying the owner of the OneDrive storing the item.
            ## @param value Value to set for the container_display_name property.
            ## @return a void
            ## 
            def container_display_name=(value)
                @container_display_name = value
            end
            ## 
            ## Gets the containerType property value. Can be used for filtering by the type of container in which the file is stored. Such as Site or OneDriveBusiness.
            ## @return a string
            ## 
            def container_type
                return @container_type
            end
            ## 
            ## Sets the containerType property value. Can be used for filtering by the type of container in which the file is stored. Such as Site or OneDriveBusiness.
            ## @param value Value to set for the container_type property.
            ## @return a void
            ## 
            def container_type=(value)
                @container_type = value
            end
            ## 
            ## Gets the containerWebUrl property value. A path leading to the folder in which the item is stored.
            ## @return a string
            ## 
            def container_web_url
                return @container_web_url
            end
            ## 
            ## Sets the containerWebUrl property value. A path leading to the folder in which the item is stored.
            ## @param value Value to set for the container_web_url property.
            ## @return a void
            ## 
            def container_web_url=(value)
                @container_web_url = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a resource_visualization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ResourceVisualization.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "containerDisplayName" => lambda {|n| @container_display_name = n.get_string_value() },
                    "containerType" => lambda {|n| @container_type = n.get_string_value() },
                    "containerWebUrl" => lambda {|n| @container_web_url = n.get_string_value() },
                    "mediaType" => lambda {|n| @media_type = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "previewImageUrl" => lambda {|n| @preview_image_url = n.get_string_value() },
                    "previewText" => lambda {|n| @preview_text = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the mediaType property value. The item's media type. Can be used for filtering for a specific type of file based on supported IANA Media Mime Types. Note that not all Media Mime Types are supported.
            ## @return a string
            ## 
            def media_type
                return @media_type
            end
            ## 
            ## Sets the mediaType property value. The item's media type. Can be used for filtering for a specific type of file based on supported IANA Media Mime Types. Note that not all Media Mime Types are supported.
            ## @param value Value to set for the media_type property.
            ## @return a void
            ## 
            def media_type=(value)
                @media_type = value
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
            ## Gets the previewImageUrl property value. A URL leading to the preview image for the item.
            ## @return a string
            ## 
            def preview_image_url
                return @preview_image_url
            end
            ## 
            ## Sets the previewImageUrl property value. A URL leading to the preview image for the item.
            ## @param value Value to set for the preview_image_url property.
            ## @return a void
            ## 
            def preview_image_url=(value)
                @preview_image_url = value
            end
            ## 
            ## Gets the previewText property value. A preview text for the item.
            ## @return a string
            ## 
            def preview_text
                return @preview_text
            end
            ## 
            ## Sets the previewText property value. A preview text for the item.
            ## @param value Value to set for the preview_text property.
            ## @return a void
            ## 
            def preview_text=(value)
                @preview_text = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("containerDisplayName", @container_display_name)
                writer.write_string_value("containerType", @container_type)
                writer.write_string_value("containerWebUrl", @container_web_url)
                writer.write_string_value("mediaType", @media_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("previewImageUrl", @preview_image_url)
                writer.write_string_value("previewText", @preview_text)
                writer.write_string_value("title", @title)
                writer.write_string_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the title property value. The item's title text.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The item's title text.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the type property value. The item's media type. Can be used for filtering for a specific file based on a specific type. See below for supported types.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The item's media type. Can be used for filtering for a specific file based on a specific type. See below for supported types.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
