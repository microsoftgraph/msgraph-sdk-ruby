require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BaseSitePage < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The pageLayout property
            @page_layout
            ## 
            # The publishingState property
            @publishing_state
            ## 
            # The title property
            @title
            ## 
            ## Instantiates a new BaseSitePage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.baseSitePage"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a base_site_page
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.sitePage"
                            return SitePage.new
                    end
                end
                return BaseSitePage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "pageLayout" => lambda {|n| @page_layout = n.get_enum_value(MicrosoftGraph::Models::PageLayoutType) },
                    "publishingState" => lambda {|n| @publishing_state = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicationFacet.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the pageLayout property value. The pageLayout property
            ## @return a page_layout_type
            ## 
            def page_layout
                return @page_layout
            end
            ## 
            ## Sets the pageLayout property value. The pageLayout property
            ## @param value Value to set for the pageLayout property.
            ## @return a void
            ## 
            def page_layout=(value)
                @page_layout = value
            end
            ## 
            ## Gets the publishingState property value. The publishingState property
            ## @return a publication_facet
            ## 
            def publishing_state
                return @publishing_state
            end
            ## 
            ## Sets the publishingState property value. The publishingState property
            ## @param value Value to set for the publishingState property.
            ## @return a void
            ## 
            def publishing_state=(value)
                @publishing_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("pageLayout", @page_layout)
                writer.write_object_value("publishingState", @publishing_state)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
