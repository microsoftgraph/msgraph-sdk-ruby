require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RemoteItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identity of the user, device, and application which created the item. Read-only.
            @created_by
            ## 
            # Date and time of item creation. Read-only.
            @created_date_time
            ## 
            # Indicates that the remote item is a file. Read-only.
            @file
            ## 
            # Information about the remote item from the local file system. Read-only.
            @file_system_info
            ## 
            # Indicates that the remote item is a folder. Read-only.
            @folder
            ## 
            # Unique identifier for the remote item in its drive. Read-only.
            @id
            ## 
            # Image metadata, if the item is an image. Read-only.
            @image
            ## 
            # Identity of the user, device, and application which last modified the item. Read-only.
            @last_modified_by
            ## 
            # Date and time the item was last modified. Read-only.
            @last_modified_date_time
            ## 
            # Optional. Filename of the remote item. Read-only.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only.
            @package
            ## 
            # Properties of the parent of the remote item. Read-only.
            @parent_reference
            ## 
            # Indicates that the item has been shared with others and provides information about the shared state of the item. Read-only.
            @shared
            ## 
            # Provides interop between items in OneDrive for Business and SharePoint with the full set of item identifiers. Read-only.
            @sharepoint_ids
            ## 
            # Size of the remote item. Read-only.
            @size
            ## 
            # If the current item is also available as a special folder, this facet is returned. Read-only.
            @special_folder
            ## 
            # Video metadata, if the item is a video. Read-only.
            @video
            ## 
            # DAV compatible URL for the item.
            @web_dav_url
            ## 
            # URL that displays the resource in the browser. Read-only.
            @web_url
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
            ## Instantiates a new remoteItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdBy property value. Identity of the user, device, and application which created the item. Read-only.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user, device, and application which created the item. Read-only.
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a remote_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RemoteItem.new
            end
            ## 
            ## Gets the file property value. Indicates that the remote item is a file. Read-only.
            ## @return a file
            ## 
            def file
                return @file
            end
            ## 
            ## Sets the file property value. Indicates that the remote item is a file. Read-only.
            ## @param value Value to set for the file property.
            ## @return a void
            ## 
            def file=(value)
                @file = value
            end
            ## 
            ## Gets the fileSystemInfo property value. Information about the remote item from the local file system. Read-only.
            ## @return a file_system_info
            ## 
            def file_system_info
                return @file_system_info
            end
            ## 
            ## Sets the fileSystemInfo property value. Information about the remote item from the local file system. Read-only.
            ## @param value Value to set for the file_system_info property.
            ## @return a void
            ## 
            def file_system_info=(value)
                @file_system_info = value
            end
            ## 
            ## Gets the folder property value. Indicates that the remote item is a folder. Read-only.
            ## @return a folder
            ## 
            def folder
                return @folder
            end
            ## 
            ## Sets the folder property value. Indicates that the remote item is a folder. Read-only.
            ## @param value Value to set for the folder property.
            ## @return a void
            ## 
            def folder=(value)
                @folder = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "file" => lambda {|n| @file = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::File.create_from_discriminator_value(pn) }) },
                    "fileSystemInfo" => lambda {|n| @file_system_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileSystemInfo.create_from_discriminator_value(pn) }) },
                    "folder" => lambda {|n| @folder = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Folder.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "image" => lambda {|n| @image = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Image.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "package" => lambda {|n| @package = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Package.create_from_discriminator_value(pn) }) },
                    "parentReference" => lambda {|n| @parent_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemReference.create_from_discriminator_value(pn) }) },
                    "shared" => lambda {|n| @shared = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Shared.create_from_discriminator_value(pn) }) },
                    "sharepointIds" => lambda {|n| @sharepoint_ids = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "specialFolder" => lambda {|n| @special_folder = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SpecialFolder.create_from_discriminator_value(pn) }) },
                    "video" => lambda {|n| @video = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Video.create_from_discriminator_value(pn) }) },
                    "webDavUrl" => lambda {|n| @web_dav_url = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Unique identifier for the remote item in its drive. Read-only.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Unique identifier for the remote item in its drive. Read-only.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the image property value. Image metadata, if the item is an image. Read-only.
            ## @return a image
            ## 
            def image
                return @image
            end
            ## 
            ## Sets the image property value. Image metadata, if the item is an image. Read-only.
            ## @param value Value to set for the image property.
            ## @return a void
            ## 
            def image=(value)
                @image = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user, device, and application which last modified the item. Read-only.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user, device, and application which last modified the item. Read-only.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time the item was last modified. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time the item was last modified. Read-only.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the name property value. Optional. Filename of the remote item. Read-only.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Optional. Filename of the remote item. Read-only.
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
            ## Gets the package property value. If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only.
            ## @return a package
            ## 
            def package
                return @package
            end
            ## 
            ## Sets the package property value. If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only.
            ## @param value Value to set for the package property.
            ## @return a void
            ## 
            def package=(value)
                @package = value
            end
            ## 
            ## Gets the parentReference property value. Properties of the parent of the remote item. Read-only.
            ## @return a item_reference
            ## 
            def parent_reference
                return @parent_reference
            end
            ## 
            ## Sets the parentReference property value. Properties of the parent of the remote item. Read-only.
            ## @param value Value to set for the parent_reference property.
            ## @return a void
            ## 
            def parent_reference=(value)
                @parent_reference = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("file", @file)
                writer.write_object_value("fileSystemInfo", @file_system_info)
                writer.write_object_value("folder", @folder)
                writer.write_string_value("id", @id)
                writer.write_object_value("image", @image)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("package", @package)
                writer.write_object_value("parentReference", @parent_reference)
                writer.write_object_value("shared", @shared)
                writer.write_object_value("sharepointIds", @sharepoint_ids)
                writer.write_object_value("size", @size)
                writer.write_object_value("specialFolder", @special_folder)
                writer.write_object_value("video", @video)
                writer.write_string_value("webDavUrl", @web_dav_url)
                writer.write_string_value("webUrl", @web_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the shared property value. Indicates that the item has been shared with others and provides information about the shared state of the item. Read-only.
            ## @return a shared
            ## 
            def shared
                return @shared
            end
            ## 
            ## Sets the shared property value. Indicates that the item has been shared with others and provides information about the shared state of the item. Read-only.
            ## @param value Value to set for the shared property.
            ## @return a void
            ## 
            def shared=(value)
                @shared = value
            end
            ## 
            ## Gets the sharepointIds property value. Provides interop between items in OneDrive for Business and SharePoint with the full set of item identifiers. Read-only.
            ## @return a sharepoint_ids
            ## 
            def sharepoint_ids
                return @sharepoint_ids
            end
            ## 
            ## Sets the sharepointIds property value. Provides interop between items in OneDrive for Business and SharePoint with the full set of item identifiers. Read-only.
            ## @param value Value to set for the sharepoint_ids property.
            ## @return a void
            ## 
            def sharepoint_ids=(value)
                @sharepoint_ids = value
            end
            ## 
            ## Gets the size property value. Size of the remote item. Read-only.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. Size of the remote item. Read-only.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the specialFolder property value. If the current item is also available as a special folder, this facet is returned. Read-only.
            ## @return a special_folder
            ## 
            def special_folder
                return @special_folder
            end
            ## 
            ## Sets the specialFolder property value. If the current item is also available as a special folder, this facet is returned. Read-only.
            ## @param value Value to set for the special_folder property.
            ## @return a void
            ## 
            def special_folder=(value)
                @special_folder = value
            end
            ## 
            ## Gets the video property value. Video metadata, if the item is a video. Read-only.
            ## @return a video
            ## 
            def video
                return @video
            end
            ## 
            ## Sets the video property value. Video metadata, if the item is a video. Read-only.
            ## @param value Value to set for the video property.
            ## @return a void
            ## 
            def video=(value)
                @video = value
            end
            ## 
            ## Gets the webDavUrl property value. DAV compatible URL for the item.
            ## @return a string
            ## 
            def web_dav_url
                return @web_dav_url
            end
            ## 
            ## Sets the webDavUrl property value. DAV compatible URL for the item.
            ## @param value Value to set for the web_dav_url property.
            ## @return a void
            ## 
            def web_dav_url=(value)
                @web_dav_url = value
            end
            ## 
            ## Gets the webUrl property value. URL that displays the resource in the browser. Read-only.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. URL that displays the resource in the browser. Read-only.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
