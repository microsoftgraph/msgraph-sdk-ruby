require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ImageInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
            @add_image_query
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Optional; alt-text accessible content for the image
            @alternate_text
            ## 
            # The alternativeText property
            @alternative_text
            ## 
            # Optional; URI that points to an icon which represents the application used to generate the activity
            @icon_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the addImageQuery property value. Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
            ## @return a boolean
            ## 
            def add_image_query
                return @add_image_query
            end
            ## 
            ## Sets the addImageQuery property value. Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image
            ## @param value Value to set for the add_image_query property.
            ## @return a void
            ## 
            def add_image_query=(value)
                @add_image_query = value
            end
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
            ## Gets the alternateText property value. Optional; alt-text accessible content for the image
            ## @return a string
            ## 
            def alternate_text
                return @alternate_text
            end
            ## 
            ## Sets the alternateText property value. Optional; alt-text accessible content for the image
            ## @param value Value to set for the alternate_text property.
            ## @return a void
            ## 
            def alternate_text=(value)
                @alternate_text = value
            end
            ## 
            ## Gets the alternativeText property value. The alternativeText property
            ## @return a string
            ## 
            def alternative_text
                return @alternative_text
            end
            ## 
            ## Sets the alternativeText property value. The alternativeText property
            ## @param value Value to set for the alternative_text property.
            ## @return a void
            ## 
            def alternative_text=(value)
                @alternative_text = value
            end
            ## 
            ## Instantiates a new imageInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a image_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ImageInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "addImageQuery" => lambda {|n| @add_image_query = n.get_boolean_value() },
                    "alternateText" => lambda {|n| @alternate_text = n.get_string_value() },
                    "alternativeText" => lambda {|n| @alternative_text = n.get_string_value() },
                    "iconUrl" => lambda {|n| @icon_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the iconUrl property value. Optional; URI that points to an icon which represents the application used to generate the activity
            ## @return a string
            ## 
            def icon_url
                return @icon_url
            end
            ## 
            ## Sets the iconUrl property value. Optional; URI that points to an icon which represents the application used to generate the activity
            ## @param value Value to set for the icon_url property.
            ## @return a void
            ## 
            def icon_url=(value)
                @icon_url = value
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
                writer.write_boolean_value("addImageQuery", @add_image_query)
                writer.write_string_value("alternateText", @alternate_text)
                writer.write_string_value("alternativeText", @alternative_text)
                writer.write_string_value("iconUrl", @icon_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
