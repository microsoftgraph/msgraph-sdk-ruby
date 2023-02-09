require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnenoteSection < MicrosoftGraph::Models::OnenoteEntityHierarchyModel
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether this is the user's default section. Read-only.
            @is_default
            ## 
            # Links for opening the section. The oneNoteClientURL link opens the section in the OneNote native client if it's installed. The oneNoteWebURL link opens the section in OneNote on the web.
            @links
            ## 
            # The collection of pages in the section.  Read-only. Nullable.
            @pages
            ## 
            # The pages endpoint where you can get details for all the pages in the section. Read-only.
            @pages_url
            ## 
            # The notebook that contains the section.  Read-only.
            @parent_notebook
            ## 
            # The section group that contains the section.  Read-only.
            @parent_section_group
            ## 
            ## Instantiates a new onenoteSection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onenoteSection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a onenote_section
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnenoteSection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "links" => lambda {|n| @links = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SectionLinks.create_from_discriminator_value(pn) }) },
                    "pages" => lambda {|n| @pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenotePage.create_from_discriminator_value(pn) }) },
                    "pagesUrl" => lambda {|n| @pages_url = n.get_string_value() },
                    "parentNotebook" => lambda {|n| @parent_notebook = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Notebook.create_from_discriminator_value(pn) }) },
                    "parentSectionGroup" => lambda {|n| @parent_section_group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SectionGroup.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isDefault property value. Indicates whether this is the user's default section. Read-only.
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. Indicates whether this is the user's default section. Read-only.
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the links property value. Links for opening the section. The oneNoteClientURL link opens the section in the OneNote native client if it's installed. The oneNoteWebURL link opens the section in OneNote on the web.
            ## @return a section_links
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. Links for opening the section. The oneNoteClientURL link opens the section in the OneNote native client if it's installed. The oneNoteWebURL link opens the section in OneNote on the web.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
            end
            ## 
            ## Gets the pages property value. The collection of pages in the section.  Read-only. Nullable.
            ## @return a onenote_page
            ## 
            def pages
                return @pages
            end
            ## 
            ## Sets the pages property value. The collection of pages in the section.  Read-only. Nullable.
            ## @param value Value to set for the pages property.
            ## @return a void
            ## 
            def pages=(value)
                @pages = value
            end
            ## 
            ## Gets the pagesUrl property value. The pages endpoint where you can get details for all the pages in the section. Read-only.
            ## @return a string
            ## 
            def pages_url
                return @pages_url
            end
            ## 
            ## Sets the pagesUrl property value. The pages endpoint where you can get details for all the pages in the section. Read-only.
            ## @param value Value to set for the pages_url property.
            ## @return a void
            ## 
            def pages_url=(value)
                @pages_url = value
            end
            ## 
            ## Gets the parentNotebook property value. The notebook that contains the section.  Read-only.
            ## @return a notebook
            ## 
            def parent_notebook
                return @parent_notebook
            end
            ## 
            ## Sets the parentNotebook property value. The notebook that contains the section.  Read-only.
            ## @param value Value to set for the parent_notebook property.
            ## @return a void
            ## 
            def parent_notebook=(value)
                @parent_notebook = value
            end
            ## 
            ## Gets the parentSectionGroup property value. The section group that contains the section.  Read-only.
            ## @return a section_group
            ## 
            def parent_section_group
                return @parent_section_group
            end
            ## 
            ## Sets the parentSectionGroup property value. The section group that contains the section.  Read-only.
            ## @param value Value to set for the parent_section_group property.
            ## @return a void
            ## 
            def parent_section_group=(value)
                @parent_section_group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_object_value("links", @links)
                writer.write_collection_of_object_values("pages", @pages)
                writer.write_string_value("pagesUrl", @pages_url)
                writer.write_object_value("parentNotebook", @parent_notebook)
                writer.write_object_value("parentSectionGroup", @parent_section_group)
            end
        end
    end
end
