require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DriveItem < MicrosoftGraph::Models::BaseItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Analytics about the view activities that took place on this item.
            @analytics
            ## 
            # Audio metadata, if the item is an audio file. Read-only. Read-only. Only on OneDrive Personal.
            @audio
            ## 
            # Bundle metadata, if the item is a bundle. Read-only.
            @bundle
            ## 
            # An eTag for the content of the item. This eTag is not changed if only the metadata is changed. Note This property is not returned if the item is a folder. Read-only.
            @c_tag
            ## 
            # Collection containing Item objects for the immediate children of Item. Only items representing folders have children. Read-only. Nullable.
            @children
            ## 
            # The content stream, if the item represents a file.
            @content
            ## 
            # Information about the deleted state of the item. Read-only.
            @deleted
            ## 
            # File metadata, if the item is a file. Read-only.
            @file
            ## 
            # File system information on client. Read-write.
            @file_system_info
            ## 
            # Folder metadata, if the item is a folder. Read-only.
            @folder
            ## 
            # Image metadata, if the item is an image. Read-only.
            @image
            ## 
            # For drives in SharePoint, the associated document library list item. Read-only. Nullable.
            @list_item
            ## 
            # Location metadata, if the item has location data. Read-only.
            @location
            ## 
            # Malware metadata, if the item was detected to contain malware. Read-only.
            @malware
            ## 
            # If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only.
            @package
            ## 
            # If present, indicates that one or more operations that might affect the state of the driveItem are pending completion. Read-only.
            @pending_operations
            ## 
            # The set of permissions for the item. Read-only. Nullable.
            @permissions
            ## 
            # Photo metadata, if the item is a photo. Read-only.
            @photo
            ## 
            # Provides information about the published or checked-out state of an item, in locations that support such actions. This property is not returned by default. Read-only.
            @publication
            ## 
            # Remote item data, if the item is shared from a drive other than the one being accessed. Read-only.
            @remote_item
            ## 
            # If this property is non-null, it indicates that the driveItem is the top-most driveItem in the drive.
            @root
            ## 
            # Search metadata, if the item is from a search result. Read-only.
            @search_result
            ## 
            # Indicates that the item has been shared with others and provides information about the shared state of the item. Read-only.
            @shared
            ## 
            # Returns identifiers useful for SharePoint REST compatibility. Read-only.
            @sharepoint_ids
            ## 
            # Size of the item in bytes. Read-only.
            @size
            ## 
            # If the current item is also available as a special folder, this facet is returned. Read-only.
            @special_folder
            ## 
            # The set of subscriptions on the item. Only supported on the root of a drive.
            @subscriptions
            ## 
            # Collection containing [ThumbnailSet][] objects associated with the item. For more info, see [getting thumbnails][]. Read-only. Nullable.
            @thumbnails
            ## 
            # The list of previous versions of the item. For more info, see [getting previous versions][]. Read-only. Nullable.
            @versions
            ## 
            # Video metadata, if the item is a video. Read-only.
            @video
            ## 
            # WebDAV compatible URL for the item.
            @web_dav_url
            ## 
            # For files that are Excel spreadsheets, accesses the workbook API to work with the spreadsheet's contents. Nullable.
            @workbook
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
            ## Gets the audio property value. Audio metadata, if the item is an audio file. Read-only. Read-only. Only on OneDrive Personal.
            ## @return a audio
            ## 
            def audio
                return @audio
            end
            ## 
            ## Sets the audio property value. Audio metadata, if the item is an audio file. Read-only. Read-only. Only on OneDrive Personal.
            ## @param value Value to set for the audio property.
            ## @return a void
            ## 
            def audio=(value)
                @audio = value
            end
            ## 
            ## Gets the bundle property value. Bundle metadata, if the item is a bundle. Read-only.
            ## @return a bundle
            ## 
            def bundle
                return @bundle
            end
            ## 
            ## Sets the bundle property value. Bundle metadata, if the item is a bundle. Read-only.
            ## @param value Value to set for the bundle property.
            ## @return a void
            ## 
            def bundle=(value)
                @bundle = value
            end
            ## 
            ## Gets the cTag property value. An eTag for the content of the item. This eTag is not changed if only the metadata is changed. Note This property is not returned if the item is a folder. Read-only.
            ## @return a string
            ## 
            def c_tag
                return @c_tag
            end
            ## 
            ## Sets the cTag property value. An eTag for the content of the item. This eTag is not changed if only the metadata is changed. Note This property is not returned if the item is a folder. Read-only.
            ## @param value Value to set for the c_tag property.
            ## @return a void
            ## 
            def c_tag=(value)
                @c_tag = value
            end
            ## 
            ## Gets the children property value. Collection containing Item objects for the immediate children of Item. Only items representing folders have children. Read-only. Nullable.
            ## @return a drive_item
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. Collection containing Item objects for the immediate children of Item. Only items representing folders have children. Read-only. Nullable.
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Instantiates a new driveItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.driveItem"
            end
            ## 
            ## Gets the content property value. The content stream, if the item represents a file.
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content stream, if the item represents a file.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a drive_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveItem.new
            end
            ## 
            ## Gets the deleted property value. Information about the deleted state of the item. Read-only.
            ## @return a deleted
            ## 
            def deleted
                return @deleted
            end
            ## 
            ## Sets the deleted property value. Information about the deleted state of the item. Read-only.
            ## @param value Value to set for the deleted property.
            ## @return a void
            ## 
            def deleted=(value)
                @deleted = value
            end
            ## 
            ## Gets the file property value. File metadata, if the item is a file. Read-only.
            ## @return a file
            ## 
            def file
                return @file
            end
            ## 
            ## Sets the file property value. File metadata, if the item is a file. Read-only.
            ## @param value Value to set for the file property.
            ## @return a void
            ## 
            def file=(value)
                @file = value
            end
            ## 
            ## Gets the fileSystemInfo property value. File system information on client. Read-write.
            ## @return a file_system_info
            ## 
            def file_system_info
                return @file_system_info
            end
            ## 
            ## Sets the fileSystemInfo property value. File system information on client. Read-write.
            ## @param value Value to set for the file_system_info property.
            ## @return a void
            ## 
            def file_system_info=(value)
                @file_system_info = value
            end
            ## 
            ## Gets the folder property value. Folder metadata, if the item is a folder. Read-only.
            ## @return a folder
            ## 
            def folder
                return @folder
            end
            ## 
            ## Sets the folder property value. Folder metadata, if the item is a folder. Read-only.
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
                return super.merge({
                    "analytics" => lambda {|n| @analytics = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemAnalytics.create_from_discriminator_value(pn) }) },
                    "audio" => lambda {|n| @audio = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Audio.create_from_discriminator_value(pn) }) },
                    "bundle" => lambda {|n| @bundle = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Bundle.create_from_discriminator_value(pn) }) },
                    "cTag" => lambda {|n| @c_tag = n.get_string_value() },
                    "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveItem.create_from_discriminator_value(pn) }) },
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "deleted" => lambda {|n| @deleted = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Deleted.create_from_discriminator_value(pn) }) },
                    "file" => lambda {|n| @file = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::File.create_from_discriminator_value(pn) }) },
                    "fileSystemInfo" => lambda {|n| @file_system_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileSystemInfo.create_from_discriminator_value(pn) }) },
                    "folder" => lambda {|n| @folder = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Folder.create_from_discriminator_value(pn) }) },
                    "image" => lambda {|n| @image = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Image.create_from_discriminator_value(pn) }) },
                    "listItem" => lambda {|n| @list_item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ListItem.create_from_discriminator_value(pn) }) },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::GeoCoordinates.create_from_discriminator_value(pn) }) },
                    "malware" => lambda {|n| @malware = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Malware.create_from_discriminator_value(pn) }) },
                    "package" => lambda {|n| @package = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Package.create_from_discriminator_value(pn) }) },
                    "pendingOperations" => lambda {|n| @pending_operations = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PendingOperations.create_from_discriminator_value(pn) }) },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Permission.create_from_discriminator_value(pn) }) },
                    "photo" => lambda {|n| @photo = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Photo.create_from_discriminator_value(pn) }) },
                    "publication" => lambda {|n| @publication = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicationFacet.create_from_discriminator_value(pn) }) },
                    "remoteItem" => lambda {|n| @remote_item = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::RemoteItem.create_from_discriminator_value(pn) }) },
                    "root" => lambda {|n| @root = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Root.create_from_discriminator_value(pn) }) },
                    "searchResult" => lambda {|n| @search_result = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SearchResult.create_from_discriminator_value(pn) }) },
                    "shared" => lambda {|n| @shared = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Shared.create_from_discriminator_value(pn) }) },
                    "sharepointIds" => lambda {|n| @sharepoint_ids = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SharepointIds.create_from_discriminator_value(pn) }) },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "specialFolder" => lambda {|n| @special_folder = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SpecialFolder.create_from_discriminator_value(pn) }) },
                    "subscriptions" => lambda {|n| @subscriptions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Subscription.create_from_discriminator_value(pn) }) },
                    "thumbnails" => lambda {|n| @thumbnails = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ThumbnailSet.create_from_discriminator_value(pn) }) },
                    "versions" => lambda {|n| @versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DriveItemVersion.create_from_discriminator_value(pn) }) },
                    "video" => lambda {|n| @video = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Video.create_from_discriminator_value(pn) }) },
                    "webDavUrl" => lambda {|n| @web_dav_url = n.get_string_value() },
                    "workbook" => lambda {|n| @workbook = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Workbook.create_from_discriminator_value(pn) }) },
                })
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
            ## Gets the listItem property value. For drives in SharePoint, the associated document library list item. Read-only. Nullable.
            ## @return a list_item
            ## 
            def list_item
                return @list_item
            end
            ## 
            ## Sets the listItem property value. For drives in SharePoint, the associated document library list item. Read-only. Nullable.
            ## @param value Value to set for the list_item property.
            ## @return a void
            ## 
            def list_item=(value)
                @list_item = value
            end
            ## 
            ## Gets the location property value. Location metadata, if the item has location data. Read-only.
            ## @return a geo_coordinates
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. Location metadata, if the item has location data. Read-only.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the malware property value. Malware metadata, if the item was detected to contain malware. Read-only.
            ## @return a malware
            ## 
            def malware
                return @malware
            end
            ## 
            ## Sets the malware property value. Malware metadata, if the item was detected to contain malware. Read-only.
            ## @param value Value to set for the malware property.
            ## @return a void
            ## 
            def malware=(value)
                @malware = value
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
            ## Gets the pendingOperations property value. If present, indicates that one or more operations that might affect the state of the driveItem are pending completion. Read-only.
            ## @return a pending_operations
            ## 
            def pending_operations
                return @pending_operations
            end
            ## 
            ## Sets the pendingOperations property value. If present, indicates that one or more operations that might affect the state of the driveItem are pending completion. Read-only.
            ## @param value Value to set for the pending_operations property.
            ## @return a void
            ## 
            def pending_operations=(value)
                @pending_operations = value
            end
            ## 
            ## Gets the permissions property value. The set of permissions for the item. Read-only. Nullable.
            ## @return a permission
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. The set of permissions for the item. Read-only. Nullable.
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the photo property value. Photo metadata, if the item is a photo. Read-only.
            ## @return a photo
            ## 
            def photo
                return @photo
            end
            ## 
            ## Sets the photo property value. Photo metadata, if the item is a photo. Read-only.
            ## @param value Value to set for the photo property.
            ## @return a void
            ## 
            def photo=(value)
                @photo = value
            end
            ## 
            ## Gets the publication property value. Provides information about the published or checked-out state of an item, in locations that support such actions. This property is not returned by default. Read-only.
            ## @return a publication_facet
            ## 
            def publication
                return @publication
            end
            ## 
            ## Sets the publication property value. Provides information about the published or checked-out state of an item, in locations that support such actions. This property is not returned by default. Read-only.
            ## @param value Value to set for the publication property.
            ## @return a void
            ## 
            def publication=(value)
                @publication = value
            end
            ## 
            ## Gets the remoteItem property value. Remote item data, if the item is shared from a drive other than the one being accessed. Read-only.
            ## @return a remote_item
            ## 
            def remote_item
                return @remote_item
            end
            ## 
            ## Sets the remoteItem property value. Remote item data, if the item is shared from a drive other than the one being accessed. Read-only.
            ## @param value Value to set for the remote_item property.
            ## @return a void
            ## 
            def remote_item=(value)
                @remote_item = value
            end
            ## 
            ## Gets the root property value. If this property is non-null, it indicates that the driveItem is the top-most driveItem in the drive.
            ## @return a root
            ## 
            def root
                return @root
            end
            ## 
            ## Sets the root property value. If this property is non-null, it indicates that the driveItem is the top-most driveItem in the drive.
            ## @param value Value to set for the root property.
            ## @return a void
            ## 
            def root=(value)
                @root = value
            end
            ## 
            ## Gets the searchResult property value. Search metadata, if the item is from a search result. Read-only.
            ## @return a search_result
            ## 
            def search_result
                return @search_result
            end
            ## 
            ## Sets the searchResult property value. Search metadata, if the item is from a search result. Read-only.
            ## @param value Value to set for the search_result property.
            ## @return a void
            ## 
            def search_result=(value)
                @search_result = value
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
                writer.write_object_value("audio", @audio)
                writer.write_object_value("bundle", @bundle)
                writer.write_string_value("cTag", @c_tag)
                writer.write_collection_of_object_values("children", @children)
                writer.write_object_value("content", @content)
                writer.write_object_value("deleted", @deleted)
                writer.write_object_value("file", @file)
                writer.write_object_value("fileSystemInfo", @file_system_info)
                writer.write_object_value("folder", @folder)
                writer.write_object_value("image", @image)
                writer.write_object_value("listItem", @list_item)
                writer.write_object_value("location", @location)
                writer.write_object_value("malware", @malware)
                writer.write_object_value("package", @package)
                writer.write_object_value("pendingOperations", @pending_operations)
                writer.write_collection_of_object_values("permissions", @permissions)
                writer.write_object_value("photo", @photo)
                writer.write_object_value("publication", @publication)
                writer.write_object_value("remoteItem", @remote_item)
                writer.write_object_value("root", @root)
                writer.write_object_value("searchResult", @search_result)
                writer.write_object_value("shared", @shared)
                writer.write_object_value("sharepointIds", @sharepoint_ids)
                writer.write_object_value("size", @size)
                writer.write_object_value("specialFolder", @special_folder)
                writer.write_collection_of_object_values("subscriptions", @subscriptions)
                writer.write_collection_of_object_values("thumbnails", @thumbnails)
                writer.write_collection_of_object_values("versions", @versions)
                writer.write_object_value("video", @video)
                writer.write_string_value("webDavUrl", @web_dav_url)
                writer.write_object_value("workbook", @workbook)
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
            ## Gets the size property value. Size of the item in bytes. Read-only.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. Size of the item in bytes. Read-only.
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
            ## Gets the subscriptions property value. The set of subscriptions on the item. Only supported on the root of a drive.
            ## @return a subscription
            ## 
            def subscriptions
                return @subscriptions
            end
            ## 
            ## Sets the subscriptions property value. The set of subscriptions on the item. Only supported on the root of a drive.
            ## @param value Value to set for the subscriptions property.
            ## @return a void
            ## 
            def subscriptions=(value)
                @subscriptions = value
            end
            ## 
            ## Gets the thumbnails property value. Collection containing [ThumbnailSet][] objects associated with the item. For more info, see [getting thumbnails][]. Read-only. Nullable.
            ## @return a thumbnail_set
            ## 
            def thumbnails
                return @thumbnails
            end
            ## 
            ## Sets the thumbnails property value. Collection containing [ThumbnailSet][] objects associated with the item. For more info, see [getting thumbnails][]. Read-only. Nullable.
            ## @param value Value to set for the thumbnails property.
            ## @return a void
            ## 
            def thumbnails=(value)
                @thumbnails = value
            end
            ## 
            ## Gets the versions property value. The list of previous versions of the item. For more info, see [getting previous versions][]. Read-only. Nullable.
            ## @return a drive_item_version
            ## 
            def versions
                return @versions
            end
            ## 
            ## Sets the versions property value. The list of previous versions of the item. For more info, see [getting previous versions][]. Read-only. Nullable.
            ## @param value Value to set for the versions property.
            ## @return a void
            ## 
            def versions=(value)
                @versions = value
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
            ## Gets the webDavUrl property value. WebDAV compatible URL for the item.
            ## @return a string
            ## 
            def web_dav_url
                return @web_dav_url
            end
            ## 
            ## Sets the webDavUrl property value. WebDAV compatible URL for the item.
            ## @param value Value to set for the web_dav_url property.
            ## @return a void
            ## 
            def web_dav_url=(value)
                @web_dav_url = value
            end
            ## 
            ## Gets the workbook property value. For files that are Excel spreadsheets, accesses the workbook API to work with the spreadsheet's contents. Nullable.
            ## @return a workbook
            ## 
            def workbook
                return @workbook
            end
            ## 
            ## Sets the workbook property value. For files that are Excel spreadsheets, accesses the workbook API to work with the spreadsheet's contents. Nullable.
            ## @param value Value to set for the workbook property.
            ## @return a void
            ## 
            def workbook=(value)
                @workbook = value
            end
        end
    end
end
