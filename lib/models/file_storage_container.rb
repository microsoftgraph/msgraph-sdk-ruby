require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class FileStorageContainer < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Container type ID of the fileStorageContainer. For details about container types, see Container Types. Each container must have only one container type. Read-only.
            @container_type_id
            ## 
            # Date and time of the fileStorageContainer creation. Read-only.
            @created_date_time
            ## 
            # Custom property collection for the fileStorageContainer. Read-write.
            @custom_properties
            ## 
            # Provides a user-visible description of the fileStorageContainer. Read-write.
            @description
            ## 
            # The display name of the fileStorageContainer. Read-write.
            @display_name
            ## 
            # The drive of the resource fileStorageContainer. Read-only.
            @drive
            ## 
            # The set of permissions for users in the fileStorageContainer. Permission for each user is set by the roles property. The possible values are: reader, writer, manager, and owner. Read-write.
            @permissions
            ## 
            # The settings property
            @settings
            ## 
            # Status of the fileStorageContainer. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: inactive, active. Read-only.
            @status
            ## 
            # Data specific to the current user. Read-only.
            @viewpoint
            ## 
            ## Instantiates a new FileStorageContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the containerTypeId property value. Container type ID of the fileStorageContainer. For details about container types, see Container Types. Each container must have only one container type. Read-only.
            ## @return a guid
            ## 
            def container_type_id
                return @container_type_id
            end
            ## 
            ## Sets the containerTypeId property value. Container type ID of the fileStorageContainer. For details about container types, see Container Types. Each container must have only one container type. Read-only.
            ## @param value Value to set for the containerTypeId property.
            ## @return a void
            ## 
            def container_type_id=(value)
                @container_type_id = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of the fileStorageContainer creation. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of the fileStorageContainer creation. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a file_storage_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileStorageContainer.new
            end
            ## 
            ## Gets the customProperties property value. Custom property collection for the fileStorageContainer. Read-write.
            ## @return a file_storage_container_custom_property_dictionary
            ## 
            def custom_properties
                return @custom_properties
            end
            ## 
            ## Sets the customProperties property value. Custom property collection for the fileStorageContainer. Read-write.
            ## @param value Value to set for the customProperties property.
            ## @return a void
            ## 
            def custom_properties=(value)
                @custom_properties = value
            end
            ## 
            ## Gets the description property value. Provides a user-visible description of the fileStorageContainer. Read-write.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Provides a user-visible description of the fileStorageContainer. Read-write.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the fileStorageContainer. Read-write.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the fileStorageContainer. Read-write.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the drive property value. The drive of the resource fileStorageContainer. Read-only.
            ## @return a drive
            ## 
            def drive
                return @drive
            end
            ## 
            ## Sets the drive property value. The drive of the resource fileStorageContainer. Read-only.
            ## @param value Value to set for the drive property.
            ## @return a void
            ## 
            def drive=(value)
                @drive = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "containerTypeId" => lambda {|n| @container_type_id = n.get_guid_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customProperties" => lambda {|n| @custom_properties = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileStorageContainerCustomPropertyDictionary.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "drive" => lambda {|n| @drive = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Drive.create_from_discriminator_value(pn) }) },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Permission.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileStorageContainerSettings.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::FileStorageContainerStatus) },
                    "viewpoint" => lambda {|n| @viewpoint = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileStorageContainerViewpoint.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the permissions property value. The set of permissions for users in the fileStorageContainer. Permission for each user is set by the roles property. The possible values are: reader, writer, manager, and owner. Read-write.
            ## @return a permission
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. The set of permissions for users in the fileStorageContainer. Permission for each user is set by the roles property. The possible values are: reader, writer, manager, and owner. Read-write.
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_guid_value("containerTypeId", @container_type_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("customProperties", @custom_properties)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("drive", @drive)
                writer.write_collection_of_object_values("permissions", @permissions)
                writer.write_object_value("settings", @settings)
                writer.write_enum_value("status", @status)
                writer.write_object_value("viewpoint", @viewpoint)
            end
            ## 
            ## Gets the settings property value. The settings property
            ## @return a file_storage_container_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings property
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the status property value. Status of the fileStorageContainer. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: inactive, active. Read-only.
            ## @return a file_storage_container_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the fileStorageContainer. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: inactive, active. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the viewpoint property value. Data specific to the current user. Read-only.
            ## @return a file_storage_container_viewpoint
            ## 
            def viewpoint
                return @viewpoint
            end
            ## 
            ## Sets the viewpoint property value. Data specific to the current user. Read-only.
            ## @param value Value to set for the viewpoint property.
            ## @return a void
            ## 
            def viewpoint=(value)
                @viewpoint = value
            end
        end
    end
end
