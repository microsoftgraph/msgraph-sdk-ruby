require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ListItem < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Analytics about the view activities that took place on this item.
            @analytics
            ## 
            # The content type of this list item
            @content_type
            ## 
            # Version information for a document set version created by a user.
            @document_set_versions
            ## 
            # For document libraries, the driveItem relationship exposes the listItem as a [driveItem][]
            @drive_item
            ## 
            # The values of the columns set on this list item.
            @fields
            ## 
            # Returns identifiers useful for SharePoint REST compatibility. Read-only.
            @sharepoint_ids
            ## 
            # The list of previous versions of the list item.
            @versions
            ## 
            ## Gets the analytics property value. Analytics about the view activities that took place on this item.
            ## @return a item_analytics
            ## 
            def analytics
                return @analytics
            end
            ## 
            ## Sets the analytics property value. Analytics about the view activities that took place on this item.
            ## @param value Value to set for the analytics property.
            ## @return a void
            ## 
            def analytics=(value)
                @analytics = value
            end
            ## 
            ## Instantiates a new listItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.listItem"
            end
            ## 
            ## Gets the contentType property value. The content type of this list item
            ## @return a content_type_info
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The content type of this list item
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a list_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ListItem.new
            end
            ## 
            ## Gets the documentSetVersions property value. Version information for a document set version created by a user.
            ## @return a document_set_version
            ## 
            def document_set_versions
                return @document_set_versions
            end
            ## 
            ## Sets the documentSetVersions property value. Version information for a document set version created by a user.
            ## @param value Value to set for the document_set_versions property.
            ## @return a void
            ## 
            def document_set_versions=(value)
                @document_set_versions = value
            end
            ## 
            ## Gets the driveItem property value. For document libraries, the driveItem relationship exposes the listItem as a [driveItem][]
            ## @return a drive_item
            ## 
            def drive_item
                return @drive_item
            end
            ## 
            ## Sets the driveItem property value. For document libraries, the driveItem relationship exposes the listItem as a [driveItem][]
            ## @param value Value to set for the drive_item property.
            ## @return a void
            ## 
            def drive_item=(value)
                @drive_item = value
            end
            ## 
            ## Gets the fields property value. The values of the columns set on this list item.
            ## @return a field_value_set
            ## 
            def fields
                return @fields
            end
            ## 
            ## Sets the fields property value. The values of the columns set on this list item.
            ## @param value Value to set for the fields property.
            ## @return a void
            ## 
            def fields=(value)
                @fields = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "analytics" => lambda {|n| @analytics = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemAnalytics.create_from_discriminator_value(pn) }) },
                    "contentType" => lambda {|n| @content_type = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ContentTypeInfo.create_from_discriminator_value(pn) }) },
                    "documentSetVersions" => lambda {|n| @document_set_versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DocumentSetVersion.create_from_discriminator_value(pn) }) },
                    "driveItem" => lambda {|n| @drive_item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "fields" => lambda {|n| @fields = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FieldValueSet.create_from_discriminator_value(pn) }) },
                    "sharepointIds" => lambda {|n| @sharepoint_ids = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "versions" => lambda {|n| @versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ListItemVersion.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("analytics", @analytics)
                writer.write_object_value("contentType", @content_type)
                writer.write_collection_of_object_values("documentSetVersions", @document_set_versions)
                writer.write_object_value("driveItem", @drive_item)
                writer.write_object_value("fields", @fields)
                writer.write_object_value("sharepointIds", @sharepoint_ids)
                writer.write_collection_of_object_values("versions", @versions)
            end
            ## 
            ## Gets the sharepointIds property value. Returns identifiers useful for SharePoint REST compatibility. Read-only.
            ## @return a sharepoint_ids
            ## 
            def sharepoint_ids
                return @sharepoint_ids
            end
            ## 
            ## Sets the sharepointIds property value. Returns identifiers useful for SharePoint REST compatibility. Read-only.
            ## @param value Value to set for the sharepoint_ids property.
            ## @return a void
            ## 
            def sharepoint_ids=(value)
                @sharepoint_ids = value
            end
            ## 
            ## Gets the versions property value. The list of previous versions of the list item.
            ## @return a list_item_version
            ## 
            def versions
                return @versions
            end
            ## 
            ## Sets the versions property value. The list of previous versions of the list item.
            ## @param value Value to set for the versions property.
            ## @return a void
            ## 
            def versions=(value)
                @versions = value
            end
        end
    end
end
