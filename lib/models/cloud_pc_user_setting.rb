require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcUserSetting < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the set of Microsoft 365 groups and security groups in Microsoft Entra ID that have cloudPCUserSetting assigned. Returned only on $expand. For an example, see Get cloudPcUserSetting.
            @assignments
            ## 
            # The date and time when the setting was created. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The setting name displayed in the user interface.
            @display_name
            ## 
            # The date and time when the setting was last modified. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # Indicates whether the local admin option is enabled. The default value is false. To enable the local admin option, change the setting to true. If the local admin option is enabled, the end user can be an admin of the Cloud PC device.
            @local_admin_enabled
            ## 
            # Indicates whether an end user is allowed to reset their Cloud PC. When true, the user is allowed to reset their Cloud PC. When false, end-user initiated reset is not allowed. The default value is false.
            @reset_enabled
            ## 
            # Defines how frequently a restore point is created that is, a snapshot is taken) for users' provisioned Cloud PCs (default is 12 hours), and whether the user is allowed to restore their own Cloud PCs to a backup made at a specific point in time.
            @restore_point_setting
            ## 
            ## Gets the assignments property value. Represents the set of Microsoft 365 groups and security groups in Microsoft Entra ID that have cloudPCUserSetting assigned. Returned only on $expand. For an example, see Get cloudPcUserSetting.
            ## @return a cloud_pc_user_setting_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Represents the set of Microsoft 365 groups and security groups in Microsoft Entra ID that have cloudPCUserSetting assigned. Returned only on $expand. For an example, see Get cloudPcUserSetting.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new CloudPcUserSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the setting was created. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the setting was created. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_user_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcUserSetting.new
            end
            ## 
            ## Gets the displayName property value. The setting name displayed in the user interface.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The setting name displayed in the user interface.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CloudPcUserSettingAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "localAdminEnabled" => lambda {|n| @local_admin_enabled = n.get_boolean_value() },
                    "resetEnabled" => lambda {|n| @reset_enabled = n.get_boolean_value() },
                    "restorePointSetting" => lambda {|n| @restore_point_setting = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CloudPcRestorePointSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the setting was last modified. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the setting was last modified. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the localAdminEnabled property value. Indicates whether the local admin option is enabled. The default value is false. To enable the local admin option, change the setting to true. If the local admin option is enabled, the end user can be an admin of the Cloud PC device.
            ## @return a boolean
            ## 
            def local_admin_enabled
                return @local_admin_enabled
            end
            ## 
            ## Sets the localAdminEnabled property value. Indicates whether the local admin option is enabled. The default value is false. To enable the local admin option, change the setting to true. If the local admin option is enabled, the end user can be an admin of the Cloud PC device.
            ## @param value Value to set for the localAdminEnabled property.
            ## @return a void
            ## 
            def local_admin_enabled=(value)
                @local_admin_enabled = value
            end
            ## 
            ## Gets the resetEnabled property value. Indicates whether an end user is allowed to reset their Cloud PC. When true, the user is allowed to reset their Cloud PC. When false, end-user initiated reset is not allowed. The default value is false.
            ## @return a boolean
            ## 
            def reset_enabled
                return @reset_enabled
            end
            ## 
            ## Sets the resetEnabled property value. Indicates whether an end user is allowed to reset their Cloud PC. When true, the user is allowed to reset their Cloud PC. When false, end-user initiated reset is not allowed. The default value is false.
            ## @param value Value to set for the resetEnabled property.
            ## @return a void
            ## 
            def reset_enabled=(value)
                @reset_enabled = value
            end
            ## 
            ## Gets the restorePointSetting property value. Defines how frequently a restore point is created that is, a snapshot is taken) for users' provisioned Cloud PCs (default is 12 hours), and whether the user is allowed to restore their own Cloud PCs to a backup made at a specific point in time.
            ## @return a cloud_pc_restore_point_setting
            ## 
            def restore_point_setting
                return @restore_point_setting
            end
            ## 
            ## Sets the restorePointSetting property value. Defines how frequently a restore point is created that is, a snapshot is taken) for users' provisioned Cloud PCs (default is 12 hours), and whether the user is allowed to restore their own Cloud PCs to a backup made at a specific point in time.
            ## @param value Value to set for the restorePointSetting property.
            ## @return a void
            ## 
            def restore_point_setting=(value)
                @restore_point_setting = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_boolean_value("localAdminEnabled", @local_admin_enabled)
                writer.write_boolean_value("resetEnabled", @reset_enabled)
                writer.write_object_value("restorePointSetting", @restore_point_setting)
            end
        end
    end
end
