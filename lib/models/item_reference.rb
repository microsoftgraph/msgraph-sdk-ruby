require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ItemReference
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Unique identifier of the drive instance that contains the driveItem. Only returned if the item is located in a [drive][]. Read-only.
            @drive_id
            ## 
            # Identifies the type of drive. Only returned if the item is located in a [drive][]. See [drive][] resource for values.
            @drive_type
            ## 
            # Unique identifier of the driveItem in the drive or a listItem in a list. Read-only.
            @id
            ## 
            # The name of the item being referenced. Read-only.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Path that can be used to navigate to the item. Read-only.
            @path
            ## 
            # A unique identifier for a shared resource that can be accessed via the [Shares][] API.
            @share_id
            ## 
            # Returns identifiers useful for SharePoint REST compatibility. Read-only.
            @sharepoint_ids
            ## 
            # For OneDrive for Business and SharePoint, this property represents the ID of the site that contains the parent document library of the driveItem resource or the parent list of the listItem resource. The value is the same as the id property of that [site][] resource. It is an opaque string that consists of three identifiers of the site. For OneDrive, this property is not populated.
            @site_id
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new itemReference and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_reference
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemReference.new
            end
            ## 
            ## Gets the driveId property value. Unique identifier of the drive instance that contains the driveItem. Only returned if the item is located in a [drive][]. Read-only.
            ## @return a string
            ## 
            def drive_id
                return @drive_id
            end
            ## 
            ## Sets the driveId property value. Unique identifier of the drive instance that contains the driveItem. Only returned if the item is located in a [drive][]. Read-only.
            ## @param value Value to set for the drive_id property.
            ## @return a void
            ## 
            def drive_id=(value)
                @drive_id = value
            end
            ## 
            ## Gets the driveType property value. Identifies the type of drive. Only returned if the item is located in a [drive][]. See [drive][] resource for values.
            ## @return a string
            ## 
            def drive_type
                return @drive_type
            end
            ## 
            ## Sets the driveType property value. Identifies the type of drive. Only returned if the item is located in a [drive][]. See [drive][] resource for values.
            ## @param value Value to set for the drive_type property.
            ## @return a void
            ## 
            def drive_type=(value)
                @drive_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "driveId" => lambda {|n| @drive_id = n.get_string_value() },
                    "driveType" => lambda {|n| @drive_type = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "path" => lambda {|n| @path = n.get_string_value() },
                    "shareId" => lambda {|n| @share_id = n.get_string_value() },
                    "sharepointIds" => lambda {|n| @sharepoint_ids = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "siteId" => lambda {|n| @site_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Unique identifier of the driveItem in the drive or a listItem in a list. Read-only.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Unique identifier of the driveItem in the drive or a listItem in a list. Read-only.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the name property value. The name of the item being referenced. Read-only.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the item being referenced. Read-only.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the path property value. Path that can be used to navigate to the item. Read-only.
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. Path that can be used to navigate to the item. Read-only.
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("driveId", @drive_id)
                writer.write_string_value("driveType", @drive_type)
                writer.write_string_value("id", @id)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("path", @path)
                writer.write_string_value("shareId", @share_id)
                writer.write_object_value("sharepointIds", @sharepoint_ids)
                writer.write_string_value("siteId", @site_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the shareId property value. A unique identifier for a shared resource that can be accessed via the [Shares][] API.
            ## @return a string
            ## 
            def share_id
                return @share_id
            end
            ## 
            ## Sets the shareId property value. A unique identifier for a shared resource that can be accessed via the [Shares][] API.
            ## @param value Value to set for the share_id property.
            ## @return a void
            ## 
            def share_id=(value)
                @share_id = value
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
            ## Gets the siteId property value. For OneDrive for Business and SharePoint, this property represents the ID of the site that contains the parent document library of the driveItem resource or the parent list of the listItem resource. The value is the same as the id property of that [site][] resource. It is an opaque string that consists of three identifiers of the site. For OneDrive, this property is not populated.
            ## @return a string
            ## 
            def site_id
                return @site_id
            end
            ## 
            ## Sets the siteId property value. For OneDrive for Business and SharePoint, this property represents the ID of the site that contains the parent document library of the driveItem resource or the parent list of the listItem resource. The value is the same as the id property of that [site][] resource. It is an opaque string that consists of three identifiers of the site. For OneDrive, this property is not populated.
            ## @param value Value to set for the site_id property.
            ## @return a void
            ## 
            def site_id=(value)
                @site_id = value
            end
        end
    end
end
