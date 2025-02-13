require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TitleArea
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Alternative text on the title area.
            @alternative_text
            ## 
            # Indicates whether the title area has a gradient effect enabled.
            @enable_gradient_effect
            ## 
            # URL of the image in the title area.
            @image_web_url
            ## 
            # Enumeration value that indicates the layout of the title area. The possible values are: imageAndTitle, plain, colorBlock, overlap, unknownFutureValue.
            @layout
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Contains collections of data that can be processed by server side services like search index and link fixup.
            @server_processed_content
            ## 
            # Indicates whether the author should be shown in title area.
            @show_author
            ## 
            # Indicates whether the published date should be shown in title area.
            @show_published_date
            ## 
            # Indicates whether the text block above title should be shown in title area.
            @show_text_block_above_title
            ## 
            # The text above title line.
            @text_above_title
            ## 
            # Enumeration value that indicates the text alignment of the title area. The possible values are: left, center, unknownFutureValue.
            @text_alignment
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
            ## Gets the alternativeText property value. Alternative text on the title area.
            ## @return a string
            ## 
            def alternative_text
                return @alternative_text
            end
            ## 
            ## Sets the alternativeText property value. Alternative text on the title area.
            ## @param value Value to set for the alternativeText property.
            ## @return a void
            ## 
            def alternative_text=(value)
                @alternative_text = value
            end
            ## 
            ## Instantiates a new TitleArea and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a title_area
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TitleArea.new
            end
            ## 
            ## Gets the enableGradientEffect property value. Indicates whether the title area has a gradient effect enabled.
            ## @return a boolean
            ## 
            def enable_gradient_effect
                return @enable_gradient_effect
            end
            ## 
            ## Sets the enableGradientEffect property value. Indicates whether the title area has a gradient effect enabled.
            ## @param value Value to set for the enableGradientEffect property.
            ## @return a void
            ## 
            def enable_gradient_effect=(value)
                @enable_gradient_effect = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alternativeText" => lambda {|n| @alternative_text = n.get_string_value() },
                    "enableGradientEffect" => lambda {|n| @enable_gradient_effect = n.get_boolean_value() },
                    "imageWebUrl" => lambda {|n| @image_web_url = n.get_string_value() },
                    "layout" => lambda {|n| @layout = n.get_enum_value(MicrosoftGraph::Models::TitleAreaLayoutType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "serverProcessedContent" => lambda {|n| @server_processed_content = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ServerProcessedContent.create_from_discriminator_value(pn) }) },
                    "showAuthor" => lambda {|n| @show_author = n.get_boolean_value() },
                    "showPublishedDate" => lambda {|n| @show_published_date = n.get_boolean_value() },
                    "showTextBlockAboveTitle" => lambda {|n| @show_text_block_above_title = n.get_boolean_value() },
                    "textAboveTitle" => lambda {|n| @text_above_title = n.get_string_value() },
                    "textAlignment" => lambda {|n| @text_alignment = n.get_enum_value(MicrosoftGraph::Models::TitleAreaTextAlignmentType) },
                }
            end
            ## 
            ## Gets the imageWebUrl property value. URL of the image in the title area.
            ## @return a string
            ## 
            def image_web_url
                return @image_web_url
            end
            ## 
            ## Sets the imageWebUrl property value. URL of the image in the title area.
            ## @param value Value to set for the imageWebUrl property.
            ## @return a void
            ## 
            def image_web_url=(value)
                @image_web_url = value
            end
            ## 
            ## Gets the layout property value. Enumeration value that indicates the layout of the title area. The possible values are: imageAndTitle, plain, colorBlock, overlap, unknownFutureValue.
            ## @return a title_area_layout_type
            ## 
            def layout
                return @layout
            end
            ## 
            ## Sets the layout property value. Enumeration value that indicates the layout of the title area. The possible values are: imageAndTitle, plain, colorBlock, overlap, unknownFutureValue.
            ## @param value Value to set for the layout property.
            ## @return a void
            ## 
            def layout=(value)
                @layout = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("alternativeText", @alternative_text)
                writer.write_boolean_value("enableGradientEffect", @enable_gradient_effect)
                writer.write_string_value("imageWebUrl", @image_web_url)
                writer.write_enum_value("layout", @layout)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("serverProcessedContent", @server_processed_content)
                writer.write_boolean_value("showAuthor", @show_author)
                writer.write_boolean_value("showPublishedDate", @show_published_date)
                writer.write_boolean_value("showTextBlockAboveTitle", @show_text_block_above_title)
                writer.write_string_value("textAboveTitle", @text_above_title)
                writer.write_enum_value("textAlignment", @text_alignment)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serverProcessedContent property value. Contains collections of data that can be processed by server side services like search index and link fixup.
            ## @return a server_processed_content
            ## 
            def server_processed_content
                return @server_processed_content
            end
            ## 
            ## Sets the serverProcessedContent property value. Contains collections of data that can be processed by server side services like search index and link fixup.
            ## @param value Value to set for the serverProcessedContent property.
            ## @return a void
            ## 
            def server_processed_content=(value)
                @server_processed_content = value
            end
            ## 
            ## Gets the showAuthor property value. Indicates whether the author should be shown in title area.
            ## @return a boolean
            ## 
            def show_author
                return @show_author
            end
            ## 
            ## Sets the showAuthor property value. Indicates whether the author should be shown in title area.
            ## @param value Value to set for the showAuthor property.
            ## @return a void
            ## 
            def show_author=(value)
                @show_author = value
            end
            ## 
            ## Gets the showPublishedDate property value. Indicates whether the published date should be shown in title area.
            ## @return a boolean
            ## 
            def show_published_date
                return @show_published_date
            end
            ## 
            ## Sets the showPublishedDate property value. Indicates whether the published date should be shown in title area.
            ## @param value Value to set for the showPublishedDate property.
            ## @return a void
            ## 
            def show_published_date=(value)
                @show_published_date = value
            end
            ## 
            ## Gets the showTextBlockAboveTitle property value. Indicates whether the text block above title should be shown in title area.
            ## @return a boolean
            ## 
            def show_text_block_above_title
                return @show_text_block_above_title
            end
            ## 
            ## Sets the showTextBlockAboveTitle property value. Indicates whether the text block above title should be shown in title area.
            ## @param value Value to set for the showTextBlockAboveTitle property.
            ## @return a void
            ## 
            def show_text_block_above_title=(value)
                @show_text_block_above_title = value
            end
            ## 
            ## Gets the textAboveTitle property value. The text above title line.
            ## @return a string
            ## 
            def text_above_title
                return @text_above_title
            end
            ## 
            ## Sets the textAboveTitle property value. The text above title line.
            ## @param value Value to set for the textAboveTitle property.
            ## @return a void
            ## 
            def text_above_title=(value)
                @text_above_title = value
            end
            ## 
            ## Gets the textAlignment property value. Enumeration value that indicates the text alignment of the title area. The possible values are: left, center, unknownFutureValue.
            ## @return a title_area_text_alignment_type
            ## 
            def text_alignment
                return @text_alignment
            end
            ## 
            ## Sets the textAlignment property value. Enumeration value that indicates the text alignment of the title area. The possible values are: left, center, unknownFutureValue.
            ## @param value Value to set for the textAlignment property.
            ## @return a void
            ## 
            def text_alignment=(value)
                @text_alignment = value
            end
        end
    end
end
