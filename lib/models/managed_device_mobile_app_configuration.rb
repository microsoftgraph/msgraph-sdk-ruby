require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # An abstract class for Mobile app configuration for enrolled devices.
        class ManagedDeviceMobileAppConfiguration < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of group assignemenets for app configration.
            @assignments
            ## 
            # DateTime the object was created.
            @created_date_time
            ## 
            # Admin provided description of the Device Configuration.
            @description
            ## 
            # App configuration device status summary.
            @device_status_summary
            ## 
            # List of ManagedDeviceMobileAppConfigurationDeviceStatus.
            @device_statuses
            ## 
            # Admin provided name of the device configuration.
            @display_name
            ## 
            # DateTime the object was last modified.
            @last_modified_date_time
            ## 
            # the associated app.
            @targeted_mobile_apps
            ## 
            # App configuration user status summary.
            @user_status_summary
            ## 
            # List of ManagedDeviceMobileAppConfigurationUserStatus.
            @user_statuses
            ## 
            # Version of the device configuration.
            @version
            ## 
            ## Gets the assignments property value. The list of group assignemenets for app configration.
            ## @return a managed_device_mobile_app_configuration_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignemenets for app configration.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new managedDeviceMobileAppConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. DateTime the object was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. DateTime the object was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_mobile_app_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.iosMobileAppConfiguration"
                            return IosMobileAppConfiguration.new
                    end
                end
                return ManagedDeviceMobileAppConfiguration.new
            end
            ## 
            ## Gets the description property value. Admin provided description of the Device Configuration.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Admin provided description of the Device Configuration.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceStatusSummary property value. App configuration device status summary.
            ## @return a managed_device_mobile_app_configuration_device_summary
            ## 
            def device_status_summary
                return @device_status_summary
            end
            ## 
            ## Sets the deviceStatusSummary property value. App configuration device status summary.
            ## @param value Value to set for the device_status_summary property.
            ## @return a void
            ## 
            def device_status_summary=(value)
                @device_status_summary = value
            end
            ## 
            ## Gets the deviceStatuses property value. List of ManagedDeviceMobileAppConfigurationDeviceStatus.
            ## @return a managed_device_mobile_app_configuration_device_status
            ## 
            def device_statuses
                return @device_statuses
            end
            ## 
            ## Sets the deviceStatuses property value. List of ManagedDeviceMobileAppConfigurationDeviceStatus.
            ## @param value Value to set for the device_statuses property.
            ## @return a void
            ## 
            def device_statuses=(value)
                @device_statuses = value
            end
            ## 
            ## Gets the displayName property value. Admin provided name of the device configuration.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Admin provided name of the device configuration.
            ## @param value Value to set for the display_name property.
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedDeviceMobileAppConfigurationAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceStatusSummary" => lambda {|n| @device_status_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ManagedDeviceMobileAppConfigurationDeviceSummary.create_from_discriminator_value(pn) }) },
                    "deviceStatuses" => lambda {|n| @device_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedDeviceMobileAppConfigurationDeviceStatus.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "targetedMobileApps" => lambda {|n| @targeted_mobile_apps = n.get_collection_of_primitive_values(String) },
                    "userStatusSummary" => lambda {|n| @user_status_summary = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ManagedDeviceMobileAppConfigurationUserSummary.create_from_discriminator_value(pn) }) },
                    "userStatuses" => lambda {|n| @user_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ManagedDeviceMobileAppConfigurationUserStatus.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
                writer.write_string_value("description", @description)
                writer.write_object_value("deviceStatusSummary", @device_status_summary)
                writer.write_collection_of_object_values("deviceStatuses", @device_statuses)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("targetedMobileApps", @targeted_mobile_apps)
                writer.write_object_value("userStatusSummary", @user_status_summary)
                writer.write_collection_of_object_values("userStatuses", @user_statuses)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the targetedMobileApps property value. the associated app.
            ## @return a string
            ## 
            def targeted_mobile_apps
                return @targeted_mobile_apps
            end
            ## 
            ## Sets the targetedMobileApps property value. the associated app.
            ## @param value Value to set for the targeted_mobile_apps property.
            ## @return a void
            ## 
            def targeted_mobile_apps=(value)
                @targeted_mobile_apps = value
            end
            ## 
            ## Gets the userStatusSummary property value. App configuration user status summary.
            ## @return a managed_device_mobile_app_configuration_user_summary
            ## 
            def user_status_summary
                return @user_status_summary
            end
            ## 
            ## Sets the userStatusSummary property value. App configuration user status summary.
            ## @param value Value to set for the user_status_summary property.
            ## @return a void
            ## 
            def user_status_summary=(value)
                @user_status_summary = value
            end
            ## 
            ## Gets the userStatuses property value. List of ManagedDeviceMobileAppConfigurationUserStatus.
            ## @return a managed_device_mobile_app_configuration_user_status
            ## 
            def user_statuses
                return @user_statuses
            end
            ## 
            ## Sets the userStatuses property value. List of ManagedDeviceMobileAppConfigurationUserStatus.
            ## @param value Value to set for the user_statuses property.
            ## @return a void
            ## 
            def user_statuses=(value)
                @user_statuses = value
            end
            ## 
            ## Gets the version property value. Version of the device configuration.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the device configuration.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
