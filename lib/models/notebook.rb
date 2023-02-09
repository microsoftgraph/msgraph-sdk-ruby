require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Notebook < MicrosoftGraph::Models::OnenoteEntityHierarchyModel
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether this is the user's default notebook. Read-only.
            @is_default
            ## 
            # Indicates whether the notebook is shared. If true, the contents of the notebook can be seen by people other than the owner. Read-only.
            @is_shared
            ## 
            # Links for opening the notebook. The oneNoteClientURL link opens the notebook in the OneNote native client if it's installed. The oneNoteWebURL link opens the notebook in OneNote on the web.
            @links
            ## 
            # The section groups in the notebook. Read-only. Nullable.
            @section_groups
            ## 
            # The URL for the sectionGroups navigation property, which returns all the section groups in the notebook. Read-only.
            @section_groups_url
            ## 
            # The sections in the notebook. Read-only. Nullable.
            @sections
            ## 
            # The URL for the sections navigation property, which returns all the sections in the notebook. Read-only.
            @sections_url
            ## 
            # Possible values are: Owner, Contributor, Reader, None. Owner represents owner-level access to the notebook. Contributor represents read/write access to the notebook. Reader represents read-only access to the notebook. Read-only.
            @user_role
            ## 
            ## Instantiates a new Notebook and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.notebook"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a notebook
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Notebook.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "isShared" => lambda {|n| @is_shared = n.get_boolean_value() },
                    "links" => lambda {|n| @links = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::NotebookLinks.create_from_discriminator_value(pn) }) },
                    "sectionGroups" => lambda {|n| @section_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SectionGroup.create_from_discriminator_value(pn) }) },
                    "sectionGroupsUrl" => lambda {|n| @section_groups_url = n.get_string_value() },
                    "sections" => lambda {|n| @sections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenoteSection.create_from_discriminator_value(pn) }) },
                    "sectionsUrl" => lambda {|n| @sections_url = n.get_string_value() },
                    "userRole" => lambda {|n| @user_role = n.get_enum_value(MicrosoftGraph::Models::OnenoteUserRole) },
                })
            end
            ## 
            ## Gets the isDefault property value. Indicates whether this is the user's default notebook. Read-only.
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. Indicates whether this is the user's default notebook. Read-only.
            ## @param value Value to set for the is_default property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the isShared property value. Indicates whether the notebook is shared. If true, the contents of the notebook can be seen by people other than the owner. Read-only.
            ## @return a boolean
            ## 
            def is_shared
                return @is_shared
            end
            ## 
            ## Sets the isShared property value. Indicates whether the notebook is shared. If true, the contents of the notebook can be seen by people other than the owner. Read-only.
            ## @param value Value to set for the is_shared property.
            ## @return a void
            ## 
            def is_shared=(value)
                @is_shared = value
            end
            ## 
            ## Gets the links property value. Links for opening the notebook. The oneNoteClientURL link opens the notebook in the OneNote native client if it's installed. The oneNoteWebURL link opens the notebook in OneNote on the web.
            ## @return a notebook_links
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. Links for opening the notebook. The oneNoteClientURL link opens the notebook in the OneNote native client if it's installed. The oneNoteWebURL link opens the notebook in OneNote on the web.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
            end
            ## 
            ## Gets the sectionGroups property value. The section groups in the notebook. Read-only. Nullable.
            ## @return a section_group
            ## 
            def section_groups
                return @section_groups
            end
            ## 
            ## Sets the sectionGroups property value. The section groups in the notebook. Read-only. Nullable.
            ## @param value Value to set for the section_groups property.
            ## @return a void
            ## 
            def section_groups=(value)
                @section_groups = value
            end
            ## 
            ## Gets the sectionGroupsUrl property value. The URL for the sectionGroups navigation property, which returns all the section groups in the notebook. Read-only.
            ## @return a string
            ## 
            def section_groups_url
                return @section_groups_url
            end
            ## 
            ## Sets the sectionGroupsUrl property value. The URL for the sectionGroups navigation property, which returns all the section groups in the notebook. Read-only.
            ## @param value Value to set for the section_groups_url property.
            ## @return a void
            ## 
            def section_groups_url=(value)
                @section_groups_url = value
            end
            ## 
            ## Gets the sections property value. The sections in the notebook. Read-only. Nullable.
            ## @return a onenote_section
            ## 
            def sections
                return @sections
            end
            ## 
            ## Sets the sections property value. The sections in the notebook. Read-only. Nullable.
            ## @param value Value to set for the sections property.
            ## @return a void
            ## 
            def sections=(value)
                @sections = value
            end
            ## 
            ## Gets the sectionsUrl property value. The URL for the sections navigation property, which returns all the sections in the notebook. Read-only.
            ## @return a string
            ## 
            def sections_url
                return @sections_url
            end
            ## 
            ## Sets the sectionsUrl property value. The URL for the sections navigation property, which returns all the sections in the notebook. Read-only.
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
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_boolean_value("isShared", @is_shared)
                writer.write_object_value("links", @links)
                writer.write_collection_of_object_values("sectionGroups", @section_groups)
                writer.write_string_value("sectionGroupsUrl", @section_groups_url)
                writer.write_collection_of_object_values("sections", @sections)
                writer.write_string_value("sectionsUrl", @sections_url)
                writer.write_enum_value("userRole", @user_role)
            end
            ## 
            ## Gets the userRole property value. Possible values are: Owner, Contributor, Reader, None. Owner represents owner-level access to the notebook. Contributor represents read/write access to the notebook. Reader represents read-only access to the notebook. Read-only.
            ## @return a onenote_user_role
            ## 
            def user_role
                return @user_role
            end
            ## 
            ## Sets the userRole property value. Possible values are: Owner, Contributor, Reader, None. Owner represents owner-level access to the notebook. Contributor represents read/write access to the notebook. Reader represents read-only access to the notebook. Read-only.
            ## @param value Value to set for the user_role property.
            ## @return a void
            ## 
            def user_role=(value)
                @user_role = value
            end
        end
    end
end
