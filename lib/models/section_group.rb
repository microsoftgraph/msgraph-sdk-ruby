require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SectionGroup < MicrosoftGraph::Models::OnenoteEntityHierarchyModel
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The notebook that contains the section group. Read-only.
            @parent_notebook
            ## 
            # The section group that contains the section group. Read-only.
            @parent_section_group
            ## 
            # The section groups in the section. Read-only. Nullable.
            @section_groups
            ## 
            # The URL for the sectionGroups navigation property, which returns all the section groups in the section group. Read-only.
            @section_groups_url
            ## 
            # The sections in the section group. Read-only. Nullable.
            @sections
            ## 
            # The URL for the sections navigation property, which returns all the sections in the section group. Read-only.
            @sections_url
            ## 
            ## Instantiates a new sectionGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sectionGroup"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a section_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SectionGroup.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "parentNotebook" => lambda {|n| @parent_notebook = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Notebook.create_from_discriminator_value(pn) }) },
                    "parentSectionGroup" => lambda {|n| @parent_section_group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SectionGroup.create_from_discriminator_value(pn) }) },
                    "sectionGroups" => lambda {|n| @section_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SectionGroup.create_from_discriminator_value(pn) }) },
                    "sectionGroupsUrl" => lambda {|n| @section_groups_url = n.get_string_value() },
                    "sections" => lambda {|n| @sections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenoteSection.create_from_discriminator_value(pn) }) },
                    "sectionsUrl" => lambda {|n| @sections_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the parentNotebook property value. The notebook that contains the section group. Read-only.
            ## @return a notebook
            ## 
            def parent_notebook
                return @parent_notebook
            end
            ## 
            ## Sets the parentNotebook property value. The notebook that contains the section group. Read-only.
            ## @param value Value to set for the parent_notebook property.
            ## @return a void
            ## 
            def parent_notebook=(value)
                @parent_notebook = value
            end
            ## 
            ## Gets the parentSectionGroup property value. The section group that contains the section group. Read-only.
            ## @return a section_group
            ## 
            def parent_section_group
                return @parent_section_group
            end
            ## 
            ## Sets the parentSectionGroup property value. The section group that contains the section group. Read-only.
            ## @param value Value to set for the parent_section_group property.
            ## @return a void
            ## 
            def parent_section_group=(value)
                @parent_section_group = value
            end
            ## 
            ## Gets the sectionGroups property value. The section groups in the section. Read-only. Nullable.
            ## @return a section_group
            ## 
            def section_groups
                return @section_groups
            end
            ## 
            ## Sets the sectionGroups property value. The section groups in the section. Read-only. Nullable.
            ## @param value Value to set for the section_groups property.
            ## @return a void
            ## 
            def section_groups=(value)
                @section_groups = value
            end
            ## 
            ## Gets the sectionGroupsUrl property value. The URL for the sectionGroups navigation property, which returns all the section groups in the section group. Read-only.
            ## @return a string
            ## 
            def section_groups_url
                return @section_groups_url
            end
            ## 
            ## Sets the sectionGroupsUrl property value. The URL for the sectionGroups navigation property, which returns all the section groups in the section group. Read-only.
            ## @param value Value to set for the section_groups_url property.
            ## @return a void
            ## 
            def section_groups_url=(value)
                @section_groups_url = value
            end
            ## 
            ## Gets the sections property value. The sections in the section group. Read-only. Nullable.
            ## @return a onenote_section
            ## 
            def sections
                return @sections
            end
            ## 
            ## Sets the sections property value. The sections in the section group. Read-only. Nullable.
            ## @param value Value to set for the sections property.
            ## @return a void
            ## 
            def sections=(value)
                @sections = value
            end
            ## 
            ## Gets the sectionsUrl property value. The URL for the sections navigation property, which returns all the sections in the section group. Read-only.
            ## @return a string
            ## 
            def sections_url
                return @sections_url
            end
            ## 
            ## Sets the sectionsUrl property value. The URL for the sections navigation property, which returns all the sections in the section group. Read-only.
            ## @param value Value to set for the sections_url property.
            ## @return a void
            ## 
            def sections_url=(value)
                @sections_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("parentNotebook", @parent_notebook)
                writer.write_object_value("parentSectionGroup", @parent_section_group)
                writer.write_collection_of_object_values("sectionGroups", @section_groups)
                writer.write_string_value("sectionGroupsUrl", @section_groups_url)
                writer.write_collection_of_object_values("sections", @sections)
                writer.write_string_value("sectionsUrl", @sections_url)
            end
        end
    end
end
