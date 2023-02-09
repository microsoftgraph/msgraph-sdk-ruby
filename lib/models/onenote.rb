require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Onenote < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of OneNote notebooks that are owned by the user or group. Read-only. Nullable.
            @notebooks
            ## 
            # The status of OneNote operations. Getting an operations collection is not supported, but you can get the status of long-running operations if the Operation-Location header is returned in the response. Read-only. Nullable.
            @operations
            ## 
            # The pages in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            @pages
            ## 
            # The image and other file resources in OneNote pages. Getting a resources collection is not supported, but you can get the binary content of a specific resource. Read-only. Nullable.
            @resources
            ## 
            # The section groups in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            @section_groups
            ## 
            # The sections in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            @sections
            ## 
            ## Instantiates a new onenote and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a onenote
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Onenote.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "notebooks" => lambda {|n| @notebooks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Notebook.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenoteOperation.create_from_discriminator_value(pn) }) },
                    "pages" => lambda {|n| @pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenotePage.create_from_discriminator_value(pn) }) },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenoteResource.create_from_discriminator_value(pn) }) },
                    "sectionGroups" => lambda {|n| @section_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SectionGroup.create_from_discriminator_value(pn) }) },
                    "sections" => lambda {|n| @sections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnenoteSection.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the notebooks property value. The collection of OneNote notebooks that are owned by the user or group. Read-only. Nullable.
            ## @return a notebook
            ## 
            def notebooks
                return @notebooks
            end
            ## 
            ## Sets the notebooks property value. The collection of OneNote notebooks that are owned by the user or group. Read-only. Nullable.
            ## @param value Value to set for the notebooks property.
            ## @return a void
            ## 
            def notebooks=(value)
                @notebooks = value
            end
            ## 
            ## Gets the operations property value. The status of OneNote operations. Getting an operations collection is not supported, but you can get the status of long-running operations if the Operation-Location header is returned in the response. Read-only. Nullable.
            ## @return a onenote_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The status of OneNote operations. Getting an operations collection is not supported, but you can get the status of long-running operations if the Operation-Location header is returned in the response. Read-only. Nullable.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the pages property value. The pages in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            ## @return a onenote_page
            ## 
            def pages
                return @pages
            end
            ## 
            ## Sets the pages property value. The pages in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            ## @param value Value to set for the pages property.
            ## @return a void
            ## 
            def pages=(value)
                @pages = value
            end
            ## 
            ## Gets the resources property value. The image and other file resources in OneNote pages. Getting a resources collection is not supported, but you can get the binary content of a specific resource. Read-only. Nullable.
            ## @return a onenote_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. The image and other file resources in OneNote pages. Getting a resources collection is not supported, but you can get the binary content of a specific resource. Read-only. Nullable.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Gets the sectionGroups property value. The section groups in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            ## @return a section_group
            ## 
            def section_groups
                return @section_groups
            end
            ## 
            ## Sets the sectionGroups property value. The section groups in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            ## @param value Value to set for the section_groups property.
            ## @return a void
            ## 
            def section_groups=(value)
                @section_groups = value
            end
            ## 
            ## Gets the sections property value. The sections in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            ## @return a onenote_section
            ## 
            def sections
                return @sections
            end
            ## 
            ## Sets the sections property value. The sections in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.
            ## @param value Value to set for the sections property.
            ## @return a void
            ## 
            def sections=(value)
                @sections = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("notebooks", @notebooks)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("pages", @pages)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_collection_of_object_values("sectionGroups", @section_groups)
                writer.write_collection_of_object_values("sections", @sections)
            end
        end
    end
end
