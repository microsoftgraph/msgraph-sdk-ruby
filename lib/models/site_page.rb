require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SitePage < MicrosoftGraph::Models::BaseSitePage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The canvasLayout property
            @canvas_layout
            ## 
            # The promotionKind property
            @promotion_kind
            ## 
            # The reactions property
            @reactions
            ## 
            # The showComments property
            @show_comments
            ## 
            # The showRecommendedPages property
            @show_recommended_pages
            ## 
            # The thumbnailWebUrl property
            @thumbnail_web_url
            ## 
            # The titleArea property
            @title_area
            ## 
            # The webParts property
            @web_parts
            ## 
            ## Gets the canvasLayout property value. The canvasLayout property
            ## @return a canvas_layout
            ## 
            def canvas_layout
                return @canvas_layout
            end
            ## 
            ## Sets the canvasLayout property value. The canvasLayout property
            ## @param value Value to set for the canvasLayout property.
            ## @return a void
            ## 
            def canvas_layout=(value)
                @canvas_layout = value
            end
            ## 
            ## Instantiates a new SitePage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a site_page
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SitePage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "canvasLayout" => lambda {|n| @canvas_layout = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CanvasLayout.create_from_discriminator_value(pn) }) },
                    "promotionKind" => lambda {|n| @promotion_kind = n.get_enum_value(MicrosoftGraph::Models::PagePromotionType) },
                    "reactions" => lambda {|n| @reactions = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ReactionsFacet.create_from_discriminator_value(pn) }) },
                    "showComments" => lambda {|n| @show_comments = n.get_boolean_value() },
                    "showRecommendedPages" => lambda {|n| @show_recommended_pages = n.get_boolean_value() },
                    "thumbnailWebUrl" => lambda {|n| @thumbnail_web_url = n.get_string_value() },
                    "titleArea" => lambda {|n| @title_area = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TitleArea.create_from_discriminator_value(pn) }) },
                    "webParts" => lambda {|n| @web_parts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::WebPart.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the promotionKind property value. The promotionKind property
            ## @return a page_promotion_type
            ## 
            def promotion_kind
                return @promotion_kind
            end
            ## 
            ## Sets the promotionKind property value. The promotionKind property
            ## @param value Value to set for the promotionKind property.
            ## @return a void
            ## 
            def promotion_kind=(value)
                @promotion_kind = value
            end
            ## 
            ## Gets the reactions property value. The reactions property
            ## @return a reactions_facet
            ## 
            def reactions
                return @reactions
            end
            ## 
            ## Sets the reactions property value. The reactions property
            ## @param value Value to set for the reactions property.
            ## @return a void
            ## 
            def reactions=(value)
                @reactions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("canvasLayout", @canvas_layout)
                writer.write_enum_value("promotionKind", @promotion_kind)
                writer.write_object_value("reactions", @reactions)
                writer.write_boolean_value("showComments", @show_comments)
                writer.write_boolean_value("showRecommendedPages", @show_recommended_pages)
                writer.write_string_value("thumbnailWebUrl", @thumbnail_web_url)
                writer.write_object_value("titleArea", @title_area)
                writer.write_collection_of_object_values("webParts", @web_parts)
            end
            ## 
            ## Gets the showComments property value. The showComments property
            ## @return a boolean
            ## 
            def show_comments
                return @show_comments
            end
            ## 
            ## Sets the showComments property value. The showComments property
            ## @param value Value to set for the showComments property.
            ## @return a void
            ## 
            def show_comments=(value)
                @show_comments = value
            end
            ## 
            ## Gets the showRecommendedPages property value. The showRecommendedPages property
            ## @return a boolean
            ## 
            def show_recommended_pages
                return @show_recommended_pages
            end
            ## 
            ## Sets the showRecommendedPages property value. The showRecommendedPages property
            ## @param value Value to set for the showRecommendedPages property.
            ## @return a void
            ## 
            def show_recommended_pages=(value)
                @show_recommended_pages = value
            end
            ## 
            ## Gets the thumbnailWebUrl property value. The thumbnailWebUrl property
            ## @return a string
            ## 
            def thumbnail_web_url
                return @thumbnail_web_url
            end
            ## 
            ## Sets the thumbnailWebUrl property value. The thumbnailWebUrl property
            ## @param value Value to set for the thumbnailWebUrl property.
            ## @return a void
            ## 
            def thumbnail_web_url=(value)
                @thumbnail_web_url = value
            end
            ## 
            ## Gets the titleArea property value. The titleArea property
            ## @return a title_area
            ## 
            def title_area
                return @title_area
            end
            ## 
            ## Sets the titleArea property value. The titleArea property
            ## @param value Value to set for the titleArea property.
            ## @return a void
            ## 
            def title_area=(value)
                @title_area = value
            end
            ## 
            ## Gets the webParts property value. The webParts property
            ## @return a web_part
            ## 
            def web_parts
                return @web_parts
            end
            ## 
            ## Sets the webParts property value. The webParts property
            ## @param value Value to set for the webParts property.
            ## @return a void
            ## 
            def web_parts=(value)
                @web_parts = value
            end
        end
    end
end
