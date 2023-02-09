require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharedDriveItem < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Used to access the underlying driveItem
            @drive_item
            ## 
            # All driveItems contained in the sharing root. This collection cannot be enumerated.
            @items
            ## 
            # Used to access the underlying list
            @list
            ## 
            # Used to access the underlying listItem
            @list_item
            ## 
            # Information about the owner of the shared item being referenced.
            @owner
            ## 
            # Used to access the permission representing the underlying sharing link
            @permission
            ## 
            # Used to access the underlying driveItem. Deprecated -- use driveItem instead.
            @root
            ## 
            # Used to access the underlying site
            @site
            ## 
            ## Instantiates a new SharedDriveItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sharedDriveItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shared_drive_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedDriveItem.new
            end
            ## 
            ## Gets the driveItem property value. Used to access the underlying driveItem
            ## @return a drive_item
            ## 
            def drive_item
                return @drive_item
            end
            ## 
            ## Sets the driveItem property value. Used to access the underlying driveItem
            ## @param value Value to set for the drive_item property.
            ## @return a void
            ## 
            def drive_item=(value)
                @drive_item = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "driveItem" => lambda {|n| @drive_item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "list" => lambda {|n| @list = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::List.create_from_discriminator_value(pn) }) },
                    "listItem" => lambda {|n| @list_item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ListItem.create_from_discriminator_value(pn) }) },
                    "owner" => lambda {|n| @owner = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "permission" => lambda {|n| @permission = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Permission.create_from_discriminator_value(pn) }) },
                    "root" => lambda {|n| @root = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "site" => lambda {|n| @site = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Site.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the items property value. All driveItems contained in the sharing root. This collection cannot be enumerated.
            ## @return a drive_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. All driveItems contained in the sharing root. This collection cannot be enumerated.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the list property value. Used to access the underlying list
            ## @return a list
            ## 
            def list
                return @list
            end
            ## 
            ## Sets the list property value. Used to access the underlying list
            ## @param value Value to set for the list property.
            ## @return a void
            ## 
            def list=(value)
                @list = value
            end
            ## 
            ## Gets the listItem property value. Used to access the underlying listItem
            ## @return a list_item
            ## 
            def list_item
                return @list_item
            end
            ## 
            ## Sets the listItem property value. Used to access the underlying listItem
            ## @param value Value to set for the list_item property.
            ## @return a void
            ## 
            def list_item=(value)
                @list_item = value
            end
            ## 
            ## Gets the owner property value. Information about the owner of the shared item being referenced.
            ## @return a identity_set
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. Information about the owner of the shared item being referenced.
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Gets the permission property value. Used to access the permission representing the underlying sharing link
            ## @return a permission
            ## 
            def permission
                return @permission
            end
            ## 
            ## Sets the permission property value. Used to access the permission representing the underlying sharing link
            ## @param value Value to set for the permission property.
            ## @return a void
            ## 
            def permission=(value)
                @permission = value
            end
            ## 
            ## Gets the root property value. Used to access the underlying driveItem. Deprecated -- use driveItem instead.
            ## @return a drive_item
            ## 
            def root
                return @root
            end
            ## 
            ## Sets the root property value. Used to access the underlying driveItem. Deprecated -- use driveItem instead.
            ## @param value Value to set for the root property.
            ## @return a void
            ## 
            def root=(value)
                @root = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("driveItem", @drive_item)
                writer.write_collection_of_object_values("items", @items)
                writer.write_object_value("list", @list)
                writer.write_object_value("listItem", @list_item)
                writer.write_object_value("owner", @owner)
                writer.write_object_value("permission", @permission)
                writer.write_object_value("root", @root)
                writer.write_object_value("site", @site)
            end
            ## 
            ## Gets the site property value. Used to access the underlying site
            ## @return a site
            ## 
            def site
                return @site
            end
            ## 
            ## Sets the site property value. Used to access the underlying site
            ## @param value Value to set for the site property.
            ## @return a void
            ## 
            def site=(value)
                @site = value
            end
        end
    end
end
