require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityEdiscoverySearchExportOperation < MicrosoftGraph::Models::SecurityCaseOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The additional items to include in the export. The possible values are: none, teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments, unknownFutureValue.
            @additional_options
            ## 
            # The cloudAttachmentVersion property
            @cloud_attachment_version
            ## 
            # The description of the export by the user.
            @description
            ## 
            # The name of export provided by the user.
            @display_name
            ## 
            # The documentVersion property
            @document_version
            ## 
            # Items to be included in the export. The possible values are: searchHits, partiallyIndexed, unknownFutureValue.
            @export_criteria
            ## 
            # Contains the properties for an export file metadata, including downloadUrl, fileName, and size.
            @export_file_metadata
            ## 
            # Format of the emails of the export. The possible values are: pst, msg, eml, unknownFutureValue.
            @export_format
            ## 
            # Location scope for partially indexed items. You can choose to include partially indexed items only in responsive locations with search hits or in all targeted locations. The possible values are: responsiveLocations, nonresponsiveLocations, unknownFutureValue.
            @export_location
            ## 
            # Indicates whether to export single items.
            @export_single_items
            ## 
            # The eDiscovery searches under each case.
            @search
            ## 
            ## Gets the additionalOptions property value. The additional items to include in the export. The possible values are: none, teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments, unknownFutureValue.
            ## @return a security_additional_options
            ## 
            def additional_options
                return @additional_options
            end
            ## 
            ## Sets the additionalOptions property value. The additional items to include in the export. The possible values are: none, teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments, unknownFutureValue.
            ## @param value Value to set for the additionalOptions property.
            ## @return a void
            ## 
            def additional_options=(value)
                @additional_options = value
            end
            ## 
            ## Gets the cloudAttachmentVersion property value. The cloudAttachmentVersion property
            ## @return a security_cloud_attachment_version
            ## 
            def cloud_attachment_version
                return @cloud_attachment_version
            end
            ## 
            ## Sets the cloudAttachmentVersion property value. The cloudAttachmentVersion property
            ## @param value Value to set for the cloudAttachmentVersion property.
            ## @return a void
            ## 
            def cloud_attachment_version=(value)
                @cloud_attachment_version = value
            end
            ## 
            ## Instantiates a new SecurityEdiscoverySearchExportOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ediscovery_search_export_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEdiscoverySearchExportOperation.new
            end
            ## 
            ## Gets the description property value. The description of the export by the user.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the export by the user.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of export provided by the user.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of export provided by the user.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the documentVersion property value. The documentVersion property
            ## @return a security_document_version
            ## 
            def document_version
                return @document_version
            end
            ## 
            ## Sets the documentVersion property value. The documentVersion property
            ## @param value Value to set for the documentVersion property.
            ## @return a void
            ## 
            def document_version=(value)
                @document_version = value
            end
            ## 
            ## Gets the exportCriteria property value. Items to be included in the export. The possible values are: searchHits, partiallyIndexed, unknownFutureValue.
            ## @return a security_export_criteria
            ## 
            def export_criteria
                return @export_criteria
            end
            ## 
            ## Sets the exportCriteria property value. Items to be included in the export. The possible values are: searchHits, partiallyIndexed, unknownFutureValue.
            ## @param value Value to set for the exportCriteria property.
            ## @return a void
            ## 
            def export_criteria=(value)
                @export_criteria = value
            end
            ## 
            ## Gets the exportFileMetadata property value. Contains the properties for an export file metadata, including downloadUrl, fileName, and size.
            ## @return a security_export_file_metadata
            ## 
            def export_file_metadata
                return @export_file_metadata
            end
            ## 
            ## Sets the exportFileMetadata property value. Contains the properties for an export file metadata, including downloadUrl, fileName, and size.
            ## @param value Value to set for the exportFileMetadata property.
            ## @return a void
            ## 
            def export_file_metadata=(value)
                @export_file_metadata = value
            end
            ## 
            ## Gets the exportFormat property value. Format of the emails of the export. The possible values are: pst, msg, eml, unknownFutureValue.
            ## @return a security_export_format
            ## 
            def export_format
                return @export_format
            end
            ## 
            ## Sets the exportFormat property value. Format of the emails of the export. The possible values are: pst, msg, eml, unknownFutureValue.
            ## @param value Value to set for the exportFormat property.
            ## @return a void
            ## 
            def export_format=(value)
                @export_format = value
            end
            ## 
            ## Gets the exportLocation property value. Location scope for partially indexed items. You can choose to include partially indexed items only in responsive locations with search hits or in all targeted locations. The possible values are: responsiveLocations, nonresponsiveLocations, unknownFutureValue.
            ## @return a security_export_location
            ## 
            def export_location
                return @export_location
            end
            ## 
            ## Sets the exportLocation property value. Location scope for partially indexed items. You can choose to include partially indexed items only in responsive locations with search hits or in all targeted locations. The possible values are: responsiveLocations, nonresponsiveLocations, unknownFutureValue.
            ## @param value Value to set for the exportLocation property.
            ## @return a void
            ## 
            def export_location=(value)
                @export_location = value
            end
            ## 
            ## Gets the exportSingleItems property value. Indicates whether to export single items.
            ## @return a boolean
            ## 
            def export_single_items
                return @export_single_items
            end
            ## 
            ## Sets the exportSingleItems property value. Indicates whether to export single items.
            ## @param value Value to set for the exportSingleItems property.
            ## @return a void
            ## 
            def export_single_items=(value)
                @export_single_items = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalOptions" => lambda {|n| @additional_options = n.get_enum_values(MicrosoftGraph::Models::SecurityAdditionalOptions) },
                    "cloudAttachmentVersion" => lambda {|n| @cloud_attachment_version = n.get_enum_value(MicrosoftGraph::Models::SecurityCloudAttachmentVersion) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "documentVersion" => lambda {|n| @document_version = n.get_enum_value(MicrosoftGraph::Models::SecurityDocumentVersion) },
                    "exportCriteria" => lambda {|n| @export_criteria = n.get_enum_values(MicrosoftGraph::Models::SecurityExportCriteria) },
                    "exportFileMetadata" => lambda {|n| @export_file_metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SecurityExportFileMetadata.create_from_discriminator_value(pn) }) },
                    "exportFormat" => lambda {|n| @export_format = n.get_enum_value(MicrosoftGraph::Models::SecurityExportFormat) },
                    "exportLocation" => lambda {|n| @export_location = n.get_enum_values(MicrosoftGraph::Models::SecurityExportLocation) },
                    "exportSingleItems" => lambda {|n| @export_single_items = n.get_boolean_value() },
                    "search" => lambda {|n| @search = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityEdiscoverySearch.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the search property value. The eDiscovery searches under each case.
            ## @return a security_ediscovery_search
            ## 
            def search
                return @search
            end
            ## 
            ## Sets the search property value. The eDiscovery searches under each case.
            ## @param value Value to set for the search property.
            ## @return a void
            ## 
            def search=(value)
                @search = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("additionalOptions", @additional_options)
                writer.write_enum_value("cloudAttachmentVersion", @cloud_attachment_version)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("documentVersion", @document_version)
                writer.write_enum_value("exportCriteria", @export_criteria)
                writer.write_collection_of_object_values("exportFileMetadata", @export_file_metadata)
                writer.write_enum_value("exportFormat", @export_format)
                writer.write_enum_value("exportLocation", @export_location)
                writer.write_boolean_value("exportSingleItems", @export_single_items)
                writer.write_object_value("search", @search)
            end
        end
    end
end
