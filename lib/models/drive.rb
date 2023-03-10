require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Drive < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of [bundles][bundle] (albums and multi-select-shared sets of items). Only in personal OneDrive.
            @bundles
            ## 
            # Describes the type of drive represented by this resource. OneDrive personal drives will return personal. OneDrive for Business will return business. SharePoint document libraries will return documentLibrary. Read-only.
            @drive_type
            ## 
            # The list of items the user is following. Only in OneDrive for Business.
            @following
            ## 
            # All items contained in the drive. Read-only. Nullable.
            @items
            ## 
            # For drives in SharePoint, the underlying document library list. Read-only. Nullable.
            @list
            ## 
            # Optional. The user account that owns the drive. Read-only.
            @owner
            ## 
            # Optional. Information about the drive's storage space quota. Read-only.
            @quota
            ## 
            # The root folder of the drive. Read-only.
            @root
            ## 
            # The sharePointIds property
            @share_point_ids
            ## 
            # Collection of common folders available in OneDrive. Read-only. Nullable.
            @special
            ## 
            # If present, indicates that this is a system-managed drive. Read-only.
            @system
            ## 
            ## Gets the bundles property value. Collection of [bundles][bundle] (albums and multi-select-shared sets of items). Only in personal OneDrive.
            ## @return a drive_item
            ## 
            def bundles
                return @bundles
            end
            ## 
            ## Sets the bundles property value. Collection of [bundles][bundle] (albums and multi-select-shared sets of items). Only in personal OneDrive.
            ## @param value Value to set for the bundles property.
            ## @return a void
            ## 
            def bundles=(value)
                @bundles = value
            end
            ## 
            ## Instantiates a new Drive and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.drive"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a drive
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Drive.new
            end
            ## 
            ## Gets the driveType property value. Describes the type of drive represented by this resource. OneDrive personal drives will return personal. OneDrive for Business will return business. SharePoint document libraries will return documentLibrary. Read-only.
            ## @return a string
            ## 
            def drive_type
                return @drive_type
            end
            ## 
            ## Sets the driveType property value. Describes the type of drive represented by this resource. OneDrive personal drives will return personal. OneDrive for Business will return business. SharePoint document libraries will return documentLibrary. Read-only.
            ## @param value Value to set for the drive_type property.
            ## @return a void
            ## 
            def drive_type=(value)
                @drive_type = value
            end
            ## 
            ## Gets the following property value. The list of items the user is following. Only in OneDrive for Business.
            ## @return a drive_item
            ## 
            def following
                return @following
            end
            ## 
            ## Sets the following property value. The list of items the user is following. Only in OneDrive for Business.
            ## @param value Value to set for the following property.
            ## @return a void
            ## 
            def following=(value)
                @following = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bundles" => lambda {|n| @bundles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "driveType" => lambda {|n| @drive_type = n.get_string_value() },
                    "following" => lambda {|n| @following = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "list" => lambda {|n| @list = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::List.create_from_discriminator_value(pn) }) },
                    "owner" => lambda {|n| @owner = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "quota" => lambda {|n| @quota = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Quota.create_from_discriminator_value(pn) }) },
                    "root" => lambda {|n| @root = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "sharePointIds" => lambda {|n| @share_point_ids = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "special" => lambda {|n| @special = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "system" => lambda {|n| @system = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SystemFacet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the items property value. All items contained in the drive. Read-only. Nullable.
            ## @return a drive_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. All items contained in the drive. Read-only. Nullable.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the list property value. For drives in SharePoint, the underlying document library list. Read-only. Nullable.
            ## @return a list
            ## 
            def list
                return @list
            end
            ## 
            ## Sets the list property value. For drives in SharePoint, the underlying document library list. Read-only. Nullable.
            ## @param value Value to set for the list property.
            ## @return a void
            ## 
            def list=(value)
                @list = value
            end
            ## 
            ## Gets the owner property value. Optional. The user account that owns the drive. Read-only.
            ## @return a identity_set
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. Optional. The user account that owns the drive. Read-only.
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Gets the quota property value. Optional. Information about the drive's storage space quota. Read-only.
            ## @return a quota
            ## 
            def quota
                return @quota
            end
            ## 
            ## Sets the quota property value. Optional. Information about the drive's storage space quota. Read-only.
            ## @param value Value to set for the quota property.
            ## @return a void
            ## 
            def quota=(value)
                @quota = value
            end
            ## 
            ## Gets the root property value. The root folder of the drive. Read-only.
            ## @return a drive_item
            ## 
            def root
                return @root
            end
            ## 
            ## Sets the root property value. The root folder of the drive. Read-only.
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
                writer.write_collection_of_object_values("bundles", @bundles)
                writer.write_string_value("driveType", @drive_type)
                writer.write_collection_of_object_values("following", @following)
                writer.write_collection_of_object_values("items", @items)
                writer.write_object_value("list", @list)
                writer.write_object_value("owner", @owner)
                writer.write_object_value("quota", @quota)
                writer.write_object_value("root", @root)
                writer.write_object_value("sharePointIds", @share_point_ids)
                writer.write_collection_of_object_values("special", @special)
                writer.write_object_value("system", @system)
            end
            ## 
            ## Gets the sharePointIds property value. The sharePointIds property
            ## @return a sharepoint_ids
            ## 
            def share_point_ids
                return @share_point_ids
            end
            ## 
            ## Sets the sharePointIds property value. The sharePointIds property
            ## @param value Value to set for the share_point_ids property.
            ## @return a void
            ## 
            def share_point_ids=(value)
                @share_point_ids = value
            end
            ## 
            ## Gets the special property value. Collection of common folders available in OneDrive. Read-only. Nullable.
            ## @return a drive_item
            ## 
            def special
                return @special
            end
            ## 
            ## Sets the special property value. Collection of common folders available in OneDrive. Read-only. Nullable.
            ## @param value Value to set for the special property.
            ## @return a void
            ## 
            def special=(value)
                @special = value
            end
            ## 
            ## Gets the system property value. If present, indicates that this is a system-managed drive. Read-only.
            ## @return a system_facet
            ## 
            def system
                return @system
            end
            ## 
            ## Sets the system property value. If present, indicates that this is a system-managed drive. Read-only.
            ## @param value Value to set for the system property.
            ## @return a void
            ## 
            def system=(value)
                @system = value
            end
        end
    end
end
